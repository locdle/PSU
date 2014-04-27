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
       -- GamblingParlor()

      ThreadFinish ()
    endFunction


-----------------------  Sleeping Barber  ---------------------------------

  enum BLANK, ENTER, SITTING, BEGIN, FINISH, LEAVE, START, END
  var
    monitor: BarberMonitor
    customer: array [10] of Thread = new array of Thread {10 of new Thread}


  function SleepingBarber ()
      print("       ")
      print("Barber    ")
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

      monitor = new BarberMonitor
      monitor.Init()

      customer[0].Init ("0")
      customer[0].Fork (GetHairCut, 0)

      customer[1].Init ("1")
      customer[1].Fork (GetHairCut, 1)

      customer[2].Init ("2")
      customer[2].Fork (GetHairCut, 2)

      customer[3].Init ("3")
      customer[3].Fork (GetHairCut, 3)

      customer[4].Init ("4")
      customer[4].Fork (GetHairCut, 4)

      customer[5].Init ("5")
      customer[5].Fork (GetHairCut, 5)

      customer[6].Init ("6")
      customer[6].Fork (GetHairCut, 6)

      customer[7].Init ("7")
      customer[7].Fork (GetHairCut, 7)

      customer[8].Init ("8")
      customer[8].Fork (GetHairCut, 8)

      customer[9].Init ("9")
      customer[9].Fork (GetHairCut, 9)

  endFunction

  function GetHairCut (p: int)
    var
      i: int
    for i = 0 to 5
      monitor.Customer(p)
      monitor.Barber(p)
    endFor
  endFunction

  class BarberMonitor
    superclass Object
    fields
      customers: Semaphore 				-- Semaphore for the customer
      barbers: Semaphore  				-- Semaphore for the barber
      mutex: Mutex  							-- Mutex lock
      waiting: int  							-- Amount of customers waiting
      chairs: int   							-- Amount of chairs in the shop (5 chairs)
      status: array [10] of int  	-- Array of statuses for the 10 customers
      barberStatus: int           -- Status for barber
    methods
      Init()  					-- Initialize and create all variables
      Barber(p: int)  	-- Method goes through the steps to cut the hair of the customer
      Customer(p: int) 	-- Method goes through the steps of the customer entering the shop
                       	-- and sitting down to be served or leaving
      PrintCustomerStatus() 	-- This method prints the status for the 10 customers, used after each
                       	-- change in status
      PrintBarberStatus()
      PrintChairs()
  endClass

  behavior BarberMonitor
 
  method Init ()
    var
      p: int

    -- Create and initialize variables
    waiting = 0
    chairs = 5
    barberStatus = BLANK
    status = new array of int { 10 of 0}
    mutex = new Mutex
    mutex.Init()  

    customers = new Semaphore
    customers.Init(0)

    barbers = new Semaphore
    barbers.Init(0)

    for p = 0 to 9
      status[p] = BLANK -- Set it to BLANK, default status for customers that have not entered
                        -- the barbershop yet
    endFor
  endMethod

  method Barber (p: int)
    var
      i: int
    while true
      customers.Down()  					-- Go to sleep if the amount of customers is 0
      mutex.Lock()    						-- Lock the mutex
      waiting = waiting - 1  			-- Decrement the amount of waiting customers
      barberStatus = START
      monitor.PrintBarberStatus()
      status[p] = BEGIN           -- Customers haircut begins / Barber begins haircut
      monitor.PrintCustomerStatus ()   -- Print the new status change 

      -- Barber is performing the haircut
      for i = 0 to 100     				-- Busy loop for haircut
        currentThread.Yield()
      endFor
 
      status[p] = FINISH       		-- Customer haircut finishes / Barber completes haircut
      monitor.PrintCustomerStatus ()   -- Print the new status change

      barberStatus = END
      monitor.PrintBarberStatus()
      barbers.Up() 								-- Barber is available again
      status[p] = LEAVE
      monitor.PrintCustomerStatus()
      mutex.Unlock() 							-- Unlock the mutex
    endWhile
  endMethod

  method Customer (p: int)
    mutex.Lock()
    status[p] = ENTER      				-- Customer enters the barbershop
    monitor.PrintCustomerStatus () 		-- Print the new status change
    if waiting < chairs 					-- Check to see if there are open chairs
      waiting = waiting + 1 			-- Increment the counter of waiting customers
      customers.Up()        			-- Customer sit and being served / Wakes up the barber if necessary
      status[p] = SITTING   			-- Customer sits in the waiting chair
      monitor.PrintCustomerStatus () 	-- Print the new status change
      mutex.Unlock()  						-- Unlock the mutex
      --barbers.Down()
      if waiting == 1 						-- First customer, wake up the barber
        barbers.Down()        		-- Keeps tracks of number of free barbers / sleeps if no customers
      endIf

    else
      status[p] = LEAVE     			-- Customer leaves because waiting chairs are full
      monitor.PrintCustomerStatus () 	-- Print the new status change
      mutex.Unlock() 							-- Unlock the mutex
    endIf
   endMethod

  method PrintChairs()
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
  endMethod
	method PrintCustomerStatus ()
	    var
	      p: int
      monitor.PrintChairs()
      print("                 ")
	    for p = 0 to 9
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
	    endFor
	    nl()
	  endMethod

    method PrintBarberStatus ()
        monitor.PrintChairs()
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
    endMethod

	endBehavior

/*
------------------------ Gambling Parlor ---------------------------------

var
    monitor2: GameMonitor
    ThreadArray: array [8] of Thread = new array of Thread {8 of new Thread}

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

  function LetsPlay()
  	var
  		i: int
  		for i = 0 to 4
  			monitor2.Request(i)
  			currentThread.Yield()
  			monitor2.Return(i)
  			currentThread.Yield()
  		endFor
  endFunction

  class GameMonitor
    superclass Object
    fields
      mutex2: Mutex -- Mutex to lock
      front: Condition -- First group in the line
      restOfLine: Condition -- Rest of the groups in line
      DiceAvail: int  -- Tells how many dice are available
      GroupsWaiting: int -- Tells how many groups are waiting
    methods
      Init()
      Request (numNeeded: int)  -- A group requests a the amount of dice they need for their game
      Return (numReturned: int) -- A group returns the dice after they have finished their game
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
 
    DiceAvail = 8
    GroupsWaiting = 0
  endMethod
 
 
  -- The Request method adds another group into the line, and checks to see
  -- if it can give the dice to the group. If it can the group takes the dice,
  -- if it can't then the group will have to wait.
  method Request(numNeeded: int)
    -- Lock the mutex
    mutex2.Lock()
 
    -- Print the amount of dice needed
    self.Print ("requests", numNeeded)
 
    -- Increment the counter of waiting groups, since we are waiting for dice
    GroupsWaiting = GroupsWaiting + 1
     
    -- There is a line, wait in the line
    if GroupsWaiting > 1
      restOfLine.Wait (&mutex2)
    endIf
 
    -- We are at the head of the line, so we wait until there are enough dice
    while DiceAvail < numNeeded
      front.Wait(&mutex2)
    endWhile
 
    -- Take the dice
    DiceAvail = DiceAvail - numNeeded
 
    -- Wakeup another group
    GroupsWaiting = GroupsWaiting - 1
    restOfLine.Signal (&mutex2)
 
    -- Print statement telling how many dice were taken
    self.Print("proceeds with", numNeeded)
 
    -- Unlock the mutex
    mutex2.Unlock ()
  endMethod
 
 
  -- The Return method has the group return the dice after
  -- they finished their game. It also wakes up the first
  -- group in line, if there is a line
  method Return (numReturned: int)
    -- Lock the mutex
    mutex2.Lock ()
    
    -- Return the dice
    DiceAvail = DiceAvail + numReturned
 
    -- Print amount of dice given back
    self.Print ("releases and adds back", numReturned)
 
    -- Wakeup the first group in line, if they exist
    front.Signal (&mutex2)
 
    -- Unlock the mutex
    mutex2.Unlock()
  endMethod
 
  -- Print function for the Gaming Parlor program
  method Print (str: String, count: int)
    print (currentThread.name)
    print ("  ")
    print (str)
    print ("  ")
    printInt (count)
    nl ()
    print ("------------------------------Number of dice now avail = ")
    printInt (DiceAvail)
    nl ()
  endMethod

  endBehavior
*/
endCode