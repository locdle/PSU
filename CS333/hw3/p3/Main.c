code Main

  -- OS Class: Project 3
  --
  -- <Loc Le>
  -- 

-----------------------------  Main  ---------------------------------

  function main ()
      print ("Thread-based Programs Starts...\n")

      InitializeScheduler ()

      -----  Uncomment any one of the following to perform the desired test  -----

        SleepingBarber ()
        --GamblingParlor()

      ThreadFinish ()
    endFunction


-----------------------  Sleeping Barber  ---------------------------------
  enum BLANK, ENTER, SITTING, BEGIN, FINISH, LEAVE, START, END
  var
      customers: Semaphore = new Semaphore       
      barbers: Semaphore  = new Semaphore
      cutHairSemaphore: Semaphore = new Semaphore        
      mutex: Mutex = new Mutex                     
      waiting: int                
      chairs: int
      ThreadHairCut: array [11] of Thread = new array of Thread {11 of new Thread}                 
      status: array [10] of int = new array of int{10 of 0 } -- status for customers
      barberStatus: int           -- Status for barber   

  function SleepingBarber ()
    var
      i: int
    customers.Init(0)
    barbers.Init(0)
    cutHairSemaphore.Init(0)
    mutex.Init()   
    waiting = 0
    chairs = 5
    barberStatus = BLANK
    for i = 0 to 9
      status[i] = BLANK
    endFor

    print ("       ")
    print ("Barber    ")
    print ("     1")
    print ("     2")
    print ("     3")
    print ("     4")
    print ("     5")
    print ("     6")
    print ("     7")
    print ("     8")
    print ("     9")
    print ("     10")
    nl()

    --ThreadHairCut[0].Init ("0")
    --ThreadHairCut[0].Fork (Barber, 0)
    for i=0 to 9
      ThreadHairCut[i].Init("i")
      ThreadHairCut[i].Fork(Customer, i)
    endFor
    ThreadHairCut[10].Init ("10")
    ThreadHairCut[10].Fork (Barber, 10)
    
  /*  ThreadHairCut[1].Init ("1")
    ThreadHairCut[1].Fork (Customer, 1)

    ThreadHairCut[2].Init ("2")
    ThreadHairCut[2].Fork (Customer, 2)

    ThreadHairCut[3].Init ("3")
    ThreadHairCut[3].Fork (Customer, 3)

    ThreadHairCut[4].Init ("4")
    ThreadHairCut[4].Fork (Customer, 4)

    ThreadHairCut[5].Init ("5")
    ThreadHairCut[5].Fork (Customer, 5)

    ThreadHairCut[6].Init ("6")
    ThreadHairCut[6].Fork (Customer, 6)

    ThreadHairCut[7].Init ("7")
    ThreadHairCut[7].Fork (Customer, 7)

    ThreadHairCut[8].Init ("8")
    ThreadHairCut[8].Fork (Customer, 8)

    ThreadHairCut[9].Init ("9")
    ThreadHairCut[9].Fork (Customer, 9)
    
    ThreadHairCut[10].Init ("10")
    ThreadHairCut[10].Fork (Customer, 10)   
*/
    ThreadFinish ()
  endFunction

  function PrintChairs()
    var
      i: int
    if waiting > 0
      for i = 1 to waiting
        print("x")
      endFor
      for i = 1 to (5 - waiting)
        print("-")
      endFor
    else
      print("-----")
    endIf
  endFunction

  function PrintCustomerStatus (p: int)
    var
      p1: int
    PrintChairs()
    print("                 ")
    for p1 = 1 to p
      print("      ")
    endFor
    switch status [p]
       case BLANK:
         print ("      ")
         break
      case ENTER:
         print ("E     ")
         break
      case SITTING:
         print ("S     ")
         break
      case BEGIN:
         print ("B     ")
         break
      case FINISH:
         print ("F     ")
         break
      case LEAVE:
         print ("L     ")
         break
    endSwitch
    nl()
  endFunction

  function PrintBarberStatus ()
      PrintChairs()
      switch barberStatus 
         case BLANK:
           print ("        ")
           break
        case START:
           print ("  start     ")
           break
        case END:
           print ("  end     ")
           break
      endSwitch
    nl()
  endFunction

  function BarberCutHair(p: int)
    var
       i: int
    mutex.Lock()
    barberStatus = START
    cutHairSemaphore.Up()
    mutex.Unlock()
    mutex.Lock()
    PrintBarberStatus()
    mutex.Unlock()
    for i = 0 to 100
      currentThread.Yield()
    endFor
    mutex.Lock()
    barberStatus = END
    mutex.Unlock()
    mutex.Lock()
    PrintBarberStatus()
    mutex.Unlock()
    
  endFunction

  function CustomersGetHairCut(p: int)
   -- var
     -- i: int

/*    if barberStatus != START
      for i = 0 to 100
        currentThread.Yield()
      endFor
    else */
      mutex.Lock()
      status[p] = BEGIN
      mutex.Unlock()
      cutHairSemaphore.Down()
      mutex.Lock()
      PrintCustomerStatus(p)
      mutex.Unlock()
    --endIf

      mutex.Lock()
      status[p] = FINISH
      mutex.Unlock()
      mutex.Lock()
      PrintCustomerStatus(p)
      mutex.Unlock()
    
  endFunction

function Barber (p: int)
    while true
      customers.Down()                 -- Go to sleep if the amount of customers is 0
      mutex.Lock()                     -- Lock the mutex
      waiting = waiting - 1            -- Decrement the amount of waiting customer
      barbers.Up()                     -- Barber is available again
      mutex.Unlock()                   -- Unlock mutex
      BarberCutHair(p)                 -- barber do hair cut
    endWhile
  endFunction

  function Customer (p: int)
    mutex.Lock()
    status[p] = ENTER                 -- Customer enters the barbershop
    PrintCustomerStatus (p)           -- Print the new status change
    if waiting < chairs               -- Check to see if there are open chairs
      waiting = waiting + 1           -- Increment the counter of waiting customers      
      status[p] = SITTING             -- Customer sits in the waiting chair
      PrintCustomerStatus (p)         -- Print the new status change 
      customers.Up()                  -- Customer sit and being served / Wakes up the barber if necessary 
      mutex.Unlock()                  -- Unlock the mutex
      barbers.Down()
      CustomersGetHairCut(p)
      status[p] = LEAVE
      mutex.Lock()
      PrintCustomerStatus(p)
      mutex.Unlock()

    else
      status[p] = LEAVE               -- Customer leaves because waiting chairs are full
      PrintCustomerStatus (p)         -- Print the new status change
      mutex.Unlock()                  -- Unlock the mutex
    endIf
  endFunction

------------------------ Gambling Parlor ---------------------------------

var
  monitor2: GameMonitor
  ThreadArray: array [8] of Thread = new array of Thread {8 of new Thread} -- 8 threads for 8 groups

function GamblingParlor ()

  monitor2 = new GameMonitor
  monitor2.Init()

  ThreadArray[0].Init ("A")
  ThreadArray[0].Fork (LetsPlay, 4)

  ThreadArray[1].Init ("B")
  ThreadArray[1].Fork (LetsPlay, 4)

  ThreadArray[2].Init ("C")
  ThreadArray[2].Fork (LetsPlay, 5)

  ThreadArray[3].Init ("D")
  ThreadArray[3].Fork (LetsPlay, 5)

  ThreadArray[4].Init ("E")
  ThreadArray[4].Fork (LetsPlay, 2)

  ThreadArray[5].Init ("F")
  ThreadArray[5].Fork (LetsPlay, 2)

  ThreadArray[6].Init ("G")
  ThreadArray[6].Fork (LetsPlay, 1)

  ThreadArray[7].Init ("H")
  ThreadArray[7].Fork (LetsPlay, 1)
endFunction

function LetsPlay(p: int)
  var
    i: int
    for i = 0 to 4
      monitor2.Request(p)
      currentThread.Yield()
      monitor2.Return(p)
      currentThread.Yield()
    endFor
endFunction

class GameMonitor
  superclass Object
  fields
    mutex2: Mutex                   -- Mutex to lock
    front: Condition                -- First group in the line
    restOfLine: Condition           -- Rest of the groups in line
    diceAvailable: int              -- Tells how many dice are available
    groupsWaiting: int              -- Tells how many groups are waiting
  methods
    Init()
    Request (numberNeeded: int)     -- A group requests a the amount of dice they need for their game
    Return (numberReturned: int)    -- A group returns the dice after they have finished their game
    Print (str: String, count: int) -- Print statement for the program
endClass
 
  behavior GameMonitor  
    -- Creates and initializes all the variables used
    method Init()
   
      -- Create and initialize variables
    mutex2 = new Mutex
    mutex2.Init()
     
    front = new Condition
    front.Init()

    restOfLine = new Condition
    restOfLine.Init()

    diceAvailable = 8
    groupsWaiting = 0
  endMethod

  method Request(numberNeeded: int)
    mutex2.Lock()                             -- Lock the mutex
    self.Print ("requests", numberNeeded)     -- Print the amount of dice needed
    groupsWaiting = groupsWaiting + 1         -- Increment waiting group

    if groupsWaiting > 1                      -- There is a line, wait in the line
      restOfLine.Wait (&mutex2)               -- Unlock mutex and wait for signal
    endIf
    while diceAvailable < numberNeeded        -- at front of list, wait for dice
      front.Wait(&mutex2)                     -- Unlock mutex and wait for signal
    endWhile

    diceAvailable = diceAvailable - numberNeeded  
    groupsWaiting = groupsWaiting - 1         -- decrement waiting group
    restOfLine.Signal (&mutex2)               -- signal on, lock mutex, let play game
    self.Print("proceeds with", numberNeeded) -- print out how many lines needed 
    mutex2.Unlock ()                          -- Unlock the mutex
  endMethod
 
  method Return (numberReturned: int)
    mutex2.Lock ()                            -- Lock the mutex
    diceAvailable = diceAvailable + numberReturned
    self.Print ("releases and adds back", numberReturned) -- amount of dice 
    front.Signal (&mutex2)                    -- Wakeup the first group in line, if they exist
    mutex2.Unlock()
  endMethod
 
  method Print (str: String, count: int)
    print (currentThread.name)
    print ("  ")
    print (str)
    print ("  ")
    printInt (count)
    nl ()
    print ("------------------------------Number of dice now avail = ")
    printInt (diceAvailable)
    nl ()
  endMethod
endBehavior
endCode