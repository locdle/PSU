header Synch

  uses Thread

  class Semaphore
    superclass Object
    fields
      count: int
      waitingThreads: List [Thread]
    methods
      Init (initialCount: int)
      Down ()
      Up ()
  endClass

  class Mutex
    superclass Object
    -- add some fields for mutex
    fields 
    -- 1 is lock and 0 is Unlock
      state: int
      waitCount: int
      heldBy: ptr to Thread
      waitingThreads: List [Thread]
    methods
      Init ()
      Lock ()
      Unlock ()
      IsHeldByCurrentThread () returns bool
  endClass

  class Condition
    superclass Object
    fields
      waitingThreads: List [Thread]
    methods
      Init ()
      Wait (mutex: ptr to Mutex)
      Signal (mutex: ptr to Mutex)
      Broadcast (mutex: ptr to Mutex)
  endClass

endHeader
