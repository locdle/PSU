! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
	.export	_Method_P_Kernel_Mutex_5
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_218:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_217:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_216:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_215:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_214:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_213:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_212:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_211:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_210:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_209:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_208:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_207:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_206:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_205:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_204:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_203:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_202:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_201:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_200:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_199:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_198:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_197:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_196:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_195:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_194:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_193:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_192:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_191:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_190:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_189:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_188:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_187:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_186:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_185:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_184:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_183:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_182:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_181:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_180:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_179:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_178:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_177:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_176:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_175:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_174:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_173:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_172:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_171:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_170:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_169:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_168:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_167:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_166:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_165:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_164:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_163:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_162:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_161:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_160:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_159:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_158:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_157:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_156:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_155:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_154:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_153:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_152:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_151:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_150:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_149:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_147:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_146:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_145:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_144:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_143:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_142:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_141:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_140:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_139:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_138:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_137:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_136:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_135:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_134:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_133:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_132:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_131:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_130:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_129:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_128:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_127:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_126:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_125:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_124:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_123:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_122:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_121:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_119:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_118:
	.word	8			! length
	.ascii	"Thread 9"
	.align
_StringConst_117:
	.word	8			! length
	.ascii	"Thread 8"
	.align
_StringConst_116:
	.word	8			! length
	.ascii	"Thread 7"
	.align
_StringConst_115:
	.word	8			! length
	.ascii	"Thread 6"
	.align
_StringConst_114:
	.word	8			! length
	.ascii	"Thread 5"
	.align
_StringConst_113:
	.word	8			! length
	.ascii	"Thread 4"
	.align
_StringConst_112:
	.word	8			! length
	.ascii	"Thread 3"
	.align
_StringConst_111:
	.word	8			! length
	.ascii	"Thread 2"
	.align
_StringConst_110:
	.word	8			! length
	.ascii	"Thread 1"
	.align
_StringConst_109:
	.word	8			! length
	.ascii	"Thread 0"
	.align
_StringConst_108:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_107:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_106:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_104:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_103:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_99:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_98:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_97:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_96:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_95:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_94:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_93:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_92:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_91:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_90:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_89:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_87:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_86:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_85:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_83:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_81:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_80:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_78:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_77:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_76:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_75:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_74:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_73:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_72:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_70:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_69:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_68:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_67:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_66:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_65:
	.word	27			! length
	.ascii	"Handle_Sys_Close invoked! \n"
	.align
_StringConst_64:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_63:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"Handle_Sys_Seek invoked! \n"
	.align
_StringConst_61:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_60:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_59:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_58:
	.word	27			! length
	.ascii	"Handle_Sys_Write invoked! \n"
	.align
_StringConst_57:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_56:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_55:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_54:
	.word	26			! length
	.ascii	"Handle_Sys_Read invoked! \n"
	.align
_StringConst_53:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_52:
	.word	25			! length
	.ascii	"virt addr of file name = "
	.align
_StringConst_51:
	.word	26			! length
	.ascii	"Handle_Sys_Open invoked! \n"
	.align
_StringConst_50:
	.word	5			! length
	.ascii	"ERROR"
	.align
_StringConst_49:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_48:
	.word	25			! length
	.ascii	"virt addr of file name = "
	.align
_StringConst_47:
	.word	28			! length
	.ascii	"Handle_Sys_Create invoked! \n"
	.align
_StringConst_46:
	.word	5			! length
	.ascii	"ERROR"
	.align
_StringConst_45:
	.word	12			! length
	.ascii	"processId = "
	.align
_StringConst_44:
	.word	26			! length
	.ascii	"Handle_Sys_Join invoked! \n"
	.align
_StringConst_43:
	.word	26			! length
	.ascii	"Handle_Sys_Fork invoked! \n"
	.align
_StringConst_42:
	.word	27			! length
	.ascii	"Handle_Sys_Yield invoked! \n"
	.align
_StringConst_41:
	.word	30			! length
	.ascii	"Handle_Sys_Shutdown invoked! \n"
	.align
_StringConst_40:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_39:
	.word	26			! length
	.ascii	"Handle_Sys_Exit invoked! \n"
	.align
_StringConst_38:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_36:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_35:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_34:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_33:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_26:
	.word	42			! length
	.ascii	"File doesnot exist, re-check the file name"
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x46c297cf,r4		! myHashVal = 1187157967
	cmp	r3,r4
	be	_Label_227
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_227:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_228
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_228
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_228
_Label_228:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_229 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_229  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3098:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3098
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_233 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_234 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_233  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_235 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_236 = _temp_235 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_236 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3099:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3099
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_238 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_239 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_238  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_240 = _function_226_IdleFunction
	set	_function_226_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_241 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_240  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_242
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_243
	.word	-12
	.word	4
	.word	_Label_244
	.word	-16
	.word	4
	.word	_Label_245
	.word	-20
	.word	4
	.word	_Label_246
	.word	-24
	.word	4
	.word	_Label_247
	.word	-28
	.word	4
	.word	_Label_248
	.word	-32
	.word	4
	.word	_Label_249
	.word	-36
	.word	4
	.word	_Label_250
	.word	-40
	.word	4
	.word	_Label_251
	.word	-44
	.word	4
	.word	_Label_252
	.word	-48
	.word	4
	.word	_Label_253
	.word	-52
	.word	4
	.word	_Label_254
	.word	-56
	.word	4
	.word	_Label_255
	.word	-60
	.word	4
	.word	0
_Label_242:
	.ascii	"InitializeScheduler\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_226_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_226_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_256:
!	jmp	_Label_257
_Label_257:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_261 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_259 else goto _Label_260
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_260
	jmp	_Label_259
_Label_259:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_262
_Label_260:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_262:
! END WHILE...
	jmp	_Label_256
_Label_258:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_226_IdleFunction:
	.word	_sourceFileName
	.word	_Label_263
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_264
	.word	8
	.word	4
	.word	_Label_265
	.word	-12
	.word	4
	.word	_Label_266
	.word	-16
	.word	4
	.word	0
_Label_263:
	.ascii	"IdleFunction\0"
	.align
_Label_264:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_266:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_269 ) then goto _Label_268		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_268
!	jmp	_Label_267
_Label_267:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_271 [0 ] into _temp_272
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_270 = _temp_272		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_268:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_273 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_274:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_278 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_277  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_277 then goto _Label_276 else goto _Label_275
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_275
	jmp	_Label_276
_Label_275:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_279 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_280 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_274
_Label_276:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_283 ) then goto _Label_282		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_282
!	jmp	_Label_281
_Label_281:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_285 [0 ] into _temp_286
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_284 = _temp_286		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_288 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_287 = *_temp_288  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_287) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_289 = _temp_287 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_282:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_290
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_291
	.word	8
	.word	4
	.word	_Label_292
	.word	-16
	.word	4
	.word	_Label_293
	.word	-20
	.word	4
	.word	_Label_294
	.word	-24
	.word	4
	.word	_Label_295
	.word	-28
	.word	4
	.word	_Label_296
	.word	-32
	.word	4
	.word	_Label_297
	.word	-36
	.word	4
	.word	_Label_298
	.word	-40
	.word	4
	.word	_Label_299
	.word	-44
	.word	4
	.word	_Label_300
	.word	-48
	.word	4
	.word	_Label_301
	.word	-52
	.word	4
	.word	_Label_302
	.word	-9
	.word	1
	.word	_Label_303
	.word	-56
	.word	4
	.word	_Label_304
	.word	-60
	.word	4
	.word	_Label_305
	.word	-64
	.word	4
	.word	_Label_306
	.word	-68
	.word	4
	.word	_Label_307
	.word	-72
	.word	4
	.word	_Label_308
	.word	-76
	.word	4
	.word	_Label_309
	.word	-80
	.word	4
	.word	0
_Label_290:
	.ascii	"Run\0"
	.align
_Label_291:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_302:
	.byte	'C'
	.ascii	"_temp_277\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_308:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_309:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_310 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_311 = _function_225_ThreadPrintShort
	set	_function_225_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_312 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_311  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_313
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_314
	.word	-12
	.word	4
	.word	_Label_315
	.word	-16
	.word	4
	.word	_Label_316
	.word	-20
	.word	4
	.word	_Label_317
	.word	-24
	.word	4
	.word	0
_Label_313:
	.ascii	"PrintReadyList\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_318 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_318  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_320 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_319 = *_temp_320  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_321 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_322
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_323
	.word	-12
	.word	4
	.word	_Label_324
	.word	-16
	.word	4
	.word	_Label_325
	.word	-20
	.word	4
	.word	_Label_326
	.word	-24
	.word	4
	.word	_Label_327
	.word	-28
	.word	4
	.word	_Label_328
	.word	-32
	.word	4
	.word	0
_Label_322:
	.ascii	"ThreadStartMain\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_327:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_328:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_329 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_330 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_332
	.word	-12
	.word	4
	.word	_Label_333
	.word	-16
	.word	4
	.word	_Label_334
	.word	-20
	.word	4
	.word	0
_Label_331:
	.ascii	"ThreadFinish\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_334:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_335 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_337		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_337
!	jmp	_Label_336
_Label_336:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_338 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_340 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_339 = *_temp_340  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_337:
! CALL STATEMENT...
!   _temp_341 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_342 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_343 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_344
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_345
	.word	8
	.word	4
	.word	_Label_346
	.word	-12
	.word	4
	.word	_Label_347
	.word	-16
	.word	4
	.word	_Label_348
	.word	-20
	.word	4
	.word	_Label_349
	.word	-24
	.word	4
	.word	_Label_350
	.word	-28
	.word	4
	.word	_Label_351
	.word	-32
	.word	4
	.word	_Label_352
	.word	-36
	.word	4
	.word	_Label_353
	.word	-40
	.word	4
	.word	0
_Label_344:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_345:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_353:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_355		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_355
!	jmp	_Label_354
_Label_354:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_356
_Label_355:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_356:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_357
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_358
	.word	8
	.word	4
	.word	_Label_359
	.word	-12
	.word	4
	.word	0
_Label_357:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_358:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_359:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_225_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_225_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	721,r13		! source line 721
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_363		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_363
!   _temp_362 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_364
_Label_363:
!   _temp_362 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_364:
!   if _temp_362 then goto _Label_361 else goto _Label_360
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_360
	jmp	_Label_361
_Label_360:
! THEN...
	mov	730,r13		! source line 730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_365 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_361:
! CALL STATEMENT...
!   _temp_366 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_368 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_367 = *_temp_368  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_369 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	736,r13		! source line 736
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_378 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_377 = *_temp_378  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_372
	cmp	r1,2
	be	_Label_373
	cmp	r1,3
	be	_Label_374
	cmp	r1,4
	be	_Label_375
	cmp	r1,5
	be	_Label_376
	jmp	_Label_370
! CASE 1...
_Label_372:
! CALL STATEMENT...
!   _temp_379 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0BR",r10
	jmp	_Label_371
! CASE 2...
_Label_373:
! CALL STATEMENT...
!   _temp_380 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0BR",r10
	jmp	_Label_371
! CASE 3...
_Label_374:
! CALL STATEMENT...
!   _temp_381 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0BR",r10
	jmp	_Label_371
! CASE 4...
_Label_375:
! CALL STATEMENT...
!   _temp_382 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0BR",r10
	jmp	_Label_371
! CASE 5...
_Label_376:
! CALL STATEMENT...
!   _temp_383 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0BR",r10
	jmp	_Label_371
! DEFAULT CASE...
_Label_370:
! CALL STATEMENT...
!   _temp_384 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	753,r13		! source line 753
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_371:
! CALL STATEMENT...
!   _temp_385 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	755,r13		! source line 755
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_386 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_387 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_225_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_388
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_389
	.word	8
	.word	4
	.word	_Label_390
	.word	-16
	.word	4
	.word	_Label_391
	.word	-20
	.word	4
	.word	_Label_392
	.word	-24
	.word	4
	.word	_Label_393
	.word	-28
	.word	4
	.word	_Label_394
	.word	-32
	.word	4
	.word	_Label_395
	.word	-36
	.word	4
	.word	_Label_396
	.word	-40
	.word	4
	.word	_Label_397
	.word	-44
	.word	4
	.word	_Label_398
	.word	-48
	.word	4
	.word	_Label_399
	.word	-52
	.word	4
	.word	_Label_400
	.word	-56
	.word	4
	.word	_Label_401
	.word	-60
	.word	4
	.word	_Label_402
	.word	-64
	.word	4
	.word	_Label_403
	.word	-68
	.word	4
	.word	_Label_404
	.word	-72
	.word	4
	.word	_Label_405
	.word	-76
	.word	4
	.word	_Label_406
	.word	-9
	.word	1
	.word	_Label_407
	.word	-80
	.word	4
	.word	0
_Label_388:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_389:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_406:
	.byte	'C'
	.ascii	"_temp_362\0"
	.align
_Label_407:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_224_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_224_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	1069,r13		! source line 1069
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_408 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1073,r13		! source line 1073
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1074,r13		! source line 1074
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_224_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_409
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_410
	.word	8
	.word	4
	.word	_Label_411
	.word	-12
	.word	4
	.word	0
_Label_409:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_410:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	1079,r13		! source line 1079
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_412 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1085,r13		! source line 1085
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_413
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_414
	.word	8
	.word	4
	.word	_Label_415
	.word	-12
	.word	4
	.word	0
_Label_413:
	.ascii	"ProcessFinish\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	1090,r13		! source line 1090
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_416 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_417 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_417  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   _temp_418 = _function_223_StartUserProcess
	set	_function_223_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_418  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_419
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_420
	.word	-12
	.word	4
	.word	_Label_421
	.word	-16
	.word	4
	.word	_Label_422
	.word	-20
	.word	4
	.word	_Label_423
	.word	-24
	.word	4
	.word	0
_Label_419:
	.ascii	"InitFirstProcess\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_423:
	.byte	'P'
	.ascii	"thread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_223_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_223_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	1103,r13		! source line 1103
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_424 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-76]
!   Send message GetANewProcess
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_425 = newPCB + 24
	load	[r14+-80],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_425 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_426 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_426 = newPCB  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0AS",r10
	mov	1120,r13		! source line 1120
	mov	"\0\0SE",r10
!   _temp_427 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_428 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_427  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_429
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_429
	jmp	_Label_430
_Label_429:
! THEN...
	mov	1122,r13		! source line 1122
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_431 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1122,r13		! source line 1122
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_430:
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = newPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_432 = _temp_433		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_432  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_434 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = newPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_437 = _temp_436 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_435 = *_temp_437  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_435 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_438 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_438 [999 ] into _temp_439
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_439		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1140,r13		! source line 1140
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! SEND STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = newPCB + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_441 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_442 = initSystemStackTop		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_442  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1146,r13		! source line 1146
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_223_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_443
	.word	0		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_444
	.word	-12
	.word	4
	.word	_Label_445
	.word	-16
	.word	4
	.word	_Label_446
	.word	-20
	.word	4
	.word	_Label_447
	.word	-24
	.word	4
	.word	_Label_448
	.word	-28
	.word	4
	.word	_Label_449
	.word	-32
	.word	4
	.word	_Label_450
	.word	-36
	.word	4
	.word	_Label_451
	.word	-40
	.word	4
	.word	_Label_452
	.word	-44
	.word	4
	.word	_Label_453
	.word	-48
	.word	4
	.word	_Label_454
	.word	-52
	.word	4
	.word	_Label_455
	.word	-56
	.word	4
	.word	_Label_456
	.word	-60
	.word	4
	.word	_Label_457
	.word	-64
	.word	4
	.word	_Label_458
	.word	-68
	.word	4
	.word	_Label_459
	.word	-72
	.word	4
	.word	_Label_460
	.word	-76
	.word	4
	.word	_Label_461
	.word	-80
	.word	4
	.word	_Label_462
	.word	-84
	.word	4
	.word	_Label_463
	.word	-88
	.word	4
	.word	_Label_464
	.word	-92
	.word	4
	.word	_Label_465
	.word	-96
	.word	4
	.word	_Label_466
	.word	-100
	.word	4
	.word	0
_Label_443:
	.ascii	"StartUserProcess\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_461:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_462:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_463:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_465:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	1654,r13		! source line 1654
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_467
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_467:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	1672,r13		! source line 1672
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0IF",r10
!   _temp_471 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_472 = _temp_471 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_470 = *_temp_472  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_470 == 0 then goto _Label_469		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_469
!	jmp	_Label_468
_Label_468:
! THEN...
	mov	1687,r13		! source line 1687
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0SE",r10
!   _temp_474 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_475 = _temp_474 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_473 = *_temp_475  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_473) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_469:
! RETURN STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_476
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_477
	.word	-12
	.word	4
	.word	_Label_478
	.word	-16
	.word	4
	.word	_Label_479
	.word	-20
	.word	4
	.word	_Label_480
	.word	-24
	.word	4
	.word	_Label_481
	.word	-28
	.word	4
	.word	_Label_482
	.word	-32
	.word	4
	.word	0
_Label_476:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1694,r13		! source line 1694
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_483
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_483:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	1708,r13		! source line 1708
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_484 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_function_222_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_485
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CA",r10
	call	_function_222_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_490 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_function_222_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_491
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_492
	.word	-12
	.word	4
	.word	0
_Label_491:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	1744,r13		! source line 1744
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_493 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_function_222_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_494
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_495
	.word	-12
	.word	4
	.word	0
_Label_494:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	1756,r13		! source line 1756
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_496 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1763,r13		! source line 1763
	mov	"\0\0CA",r10
	call	_function_222_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_497
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_498
	.word	-12
	.word	4
	.word	0
_Label_497:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	1768,r13		! source line 1768
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_499 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_function_222_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_500
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_501
	.word	-12
	.word	4
	.word	0
_Label_500:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_function_222_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_222_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_222_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	1792,r13		! source line 1792
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_505 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1798,r13		! source line 1798
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_506 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_510 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_509 = *_temp_510  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_509 == 0 then goto _Label_508		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_508
!	jmp	_Label_507
_Label_507:
! THEN...
	mov	1803,r13		! source line 1803
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_512 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_511 = *_temp_512  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_511) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_513
_Label_508:
! ELSE...
	mov	1805,r13		! source line 1805
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_514 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_513:
! SEND STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1813,r13		! source line 1813
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_222_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_515
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_516
	.word	8
	.word	4
	.word	_Label_517
	.word	-12
	.word	4
	.word	_Label_518
	.word	-16
	.word	4
	.word	_Label_519
	.word	-20
	.word	4
	.word	_Label_520
	.word	-24
	.word	4
	.word	_Label_521
	.word	-28
	.word	4
	.word	_Label_522
	.word	-32
	.word	4
	.word	_Label_523
	.word	-36
	.word	4
	.word	0
_Label_515:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_516:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
	mov	1818,r13		! source line 1818
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1839,r13		! source line 1839
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3123
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_524
_Label_3123:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_524
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_524
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_538,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_538:
	jmp	_Label_530	! 1:	
	jmp	_Label_537	! 2:	
	jmp	_Label_527	! 3:	
	jmp	_Label_526	! 4:	
	jmp	_Label_529	! 5:	
	jmp	_Label_528	! 6:	
	jmp	_Label_531	! 7:	
	jmp	_Label_532	! 8:	
	jmp	_Label_533	! 9:	
	jmp	_Label_534	! 10:	
	jmp	_Label_535	! 11:	
	jmp	_Label_536	! 12:	
! CASE 4...
_Label_526:
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_539  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_539  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_527:
! CALL STATEMENT...
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_528:
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_540  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_540  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_529:
! RETURN STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_541  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_541  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_530:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_531:
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1853,r13		! source line 1853
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_542  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_542  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_532:
! RETURN STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1855,r13		! source line 1855
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_543  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_533:
! RETURN STATEMENT...
	mov	1857,r13		! source line 1857
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_544  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_544  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_534:
! RETURN STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_545  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_545  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_535:
! RETURN STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_536:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_537:
! CALL STATEMENT...
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_524:
! CALL STATEMENT...
!   _temp_547 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1869,r13		! source line 1869
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1870,r13		! source line 1870
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1871,r13		! source line 1871
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_548 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1872,r13		! source line 1872
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_525:
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_549
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_550
	.word	8
	.word	4
	.word	_Label_551
	.word	12
	.word	4
	.word	_Label_552
	.word	16
	.word	4
	.word	_Label_553
	.word	20
	.word	4
	.word	_Label_554
	.word	24
	.word	4
	.word	_Label_555
	.word	-12
	.word	4
	.word	_Label_556
	.word	-16
	.word	4
	.word	_Label_557
	.word	-20
	.word	4
	.word	_Label_558
	.word	-24
	.word	4
	.word	_Label_559
	.word	-28
	.word	4
	.word	_Label_560
	.word	-32
	.word	4
	.word	_Label_561
	.word	-36
	.word	4
	.word	_Label_562
	.word	-40
	.word	4
	.word	_Label_563
	.word	-44
	.word	4
	.word	_Label_564
	.word	-48
	.word	4
	.word	0
_Label_549:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_551:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_552:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_554:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	3,r1
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	1879,r13		! source line 1879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_565 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_566 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CE",r10
	call	printInt
! RETURN STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_567
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_568
	.word	8
	.word	4
	.word	_Label_569
	.word	-12
	.word	4
	.word	_Label_570
	.word	-16
	.word	4
	.word	0
_Label_567:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	1888,r13		! source line 1888
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_571 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_571  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_572
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_573
	.word	-12
	.word	4
	.word	0
_Label_572:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	1894,r13		! source line 1894
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_574 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_575
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_576
	.word	-12
	.word	4
	.word	0
_Label_575:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	1900,r13		! source line 1900
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_577 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_578
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_579
	.word	-12
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	1907,r13		! source line 1907
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_580 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_581 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_582
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_583
	.word	8
	.word	4
	.word	_Label_584
	.word	-12
	.word	4
	.word	_Label_585
	.word	-16
	.word	4
	.word	0
_Label_582:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	67,r1
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	1918,r13		! source line 1918
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-260,r4
	mov	23,r3
_Label_3130:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3130
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0AS",r10
	mov	1931,r13		! source line 1931
	mov	"\0\0SE",r10
!   _temp_587 = &strBuffer
	add	r14,-168,r1
	store	r1,[r14+-116]
!   _temp_588 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-112]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_589 = *_temp_590  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_589) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _temp_589 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_587  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_588  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_593		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_593
!	jmp	_Label_592
_Label_592:
! THEN...
	mov	1934,r13		! source line 1934
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_593:
! SEND STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0SE",r10
!   _temp_594 = &newAddrSpace
	add	r14,-260,r1
	store	r1,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
	mov	1940,r13		! source line 1940
	mov	"\0\0SE",r10
!   _temp_595 = &strBuffer
	add	r14,-168,r1
	store	r1,[r14+-92]
!   _temp_596 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_595  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_597
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_597
	jmp	_Label_598
_Label_597:
! THEN...
	mov	1943,r13		! source line 1943
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_598:
! ASSIGNMENT STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0AS",r10
	mov	1947,r13		! source line 1947
	mov	"\0\0SE",r10
!   _temp_599 = &newAddrSpace
	add	r14,-260,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_599  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! SEND STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_601 = *_temp_602  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_601) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _temp_601 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   _temp_600 = _temp_603		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-80]
!   _temp_604 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_600  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_605) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _temp_605 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_607 = newAddrSpace  (sizeInBytes=92)
	add	r14,-260,r5
	load	[r14+-52],r4
	mov	23,r3
_Label_3131:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3131
! SEND STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0SE",r10
!   _temp_608 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_610 = *_temp_611  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_610) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = _temp_610 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_613 = _temp_612 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_609 = *_temp_613  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   initUserStackTop = _temp_609 * 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_614 [999 ] into _temp_615
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_615		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_616 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_617 = initSystemStackTop		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_617  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,272,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_618
	.word	4		! total size of parameters
	.word	268		! frame size = 268
	.word	_Label_619
	.word	8
	.word	4
	.word	_Label_620
	.word	-12
	.word	4
	.word	_Label_621
	.word	-16
	.word	4
	.word	_Label_622
	.word	-20
	.word	4
	.word	_Label_623
	.word	-24
	.word	4
	.word	_Label_624
	.word	-28
	.word	4
	.word	_Label_625
	.word	-32
	.word	4
	.word	_Label_626
	.word	-36
	.word	4
	.word	_Label_627
	.word	-40
	.word	4
	.word	_Label_628
	.word	-44
	.word	4
	.word	_Label_629
	.word	-48
	.word	4
	.word	_Label_630
	.word	-52
	.word	4
	.word	_Label_631
	.word	-56
	.word	4
	.word	_Label_632
	.word	-60
	.word	4
	.word	_Label_633
	.word	-64
	.word	4
	.word	_Label_634
	.word	-68
	.word	4
	.word	_Label_635
	.word	-72
	.word	4
	.word	_Label_636
	.word	-76
	.word	4
	.word	_Label_637
	.word	-80
	.word	4
	.word	_Label_638
	.word	-84
	.word	4
	.word	_Label_639
	.word	-88
	.word	4
	.word	_Label_640
	.word	-92
	.word	4
	.word	_Label_641
	.word	-96
	.word	4
	.word	_Label_642
	.word	-100
	.word	4
	.word	_Label_643
	.word	-104
	.word	4
	.word	_Label_644
	.word	-108
	.word	4
	.word	_Label_645
	.word	-112
	.word	4
	.word	_Label_646
	.word	-116
	.word	4
	.word	_Label_647
	.word	-120
	.word	4
	.word	_Label_648
	.word	-124
	.word	4
	.word	_Label_649
	.word	-128
	.word	4
	.word	_Label_650
	.word	-132
	.word	4
	.word	_Label_651
	.word	-136
	.word	4
	.word	_Label_652
	.word	-140
	.word	4
	.word	_Label_653
	.word	-144
	.word	4
	.word	_Label_654
	.word	-168
	.word	24
	.word	_Label_655
	.word	-260
	.word	92
	.word	0
_Label_618:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_619:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_648:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_649:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_650:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_651:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_652:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_653:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_654:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_655:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	27,r1
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	1978,r13		! source line 1978
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
	mov	1984,r13		! source line 1984
	mov	"\0\0SE",r10
!   _temp_656 = &strBuffer
	add	r14,-92,r1
	store	r1,[r14+-68]
!   _temp_657 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_658 = *_temp_659  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_658) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = _temp_658 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_656  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_657  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_662		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_662
!	jmp	_Label_661
_Label_661:
! THEN...
	mov	1986,r13		! source line 1986
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_663 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_662:
! CALL STATEMENT...
!   _temp_664 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_665 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_666 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_667 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_672 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_673 = i - 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_672  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-100]
_Label_668:
!   Perform the FOR-LOOP termination test
!   if index > _temp_673 then goto _Label_671		
	load	[r14+-100],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_671
_Label_669:
	mov	1995,r13		! source line 1995
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_675 = &strBuffer
	add	r14,-92,r1
	store	r1,[r14+-20]
!   Move address of _temp_675 [index ] into _temp_676
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_674 = *_temp_676  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_670:
!   index = index + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_668
! END FOR
_Label_671:
! CALL STATEMENT...
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_677
	.word	4		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_678
	.word	8
	.word	4
	.word	_Label_679
	.word	-16
	.word	4
	.word	_Label_680
	.word	-20
	.word	4
	.word	_Label_681
	.word	-9
	.word	1
	.word	_Label_682
	.word	-24
	.word	4
	.word	_Label_683
	.word	-28
	.word	4
	.word	_Label_684
	.word	-32
	.word	4
	.word	_Label_685
	.word	-36
	.word	4
	.word	_Label_686
	.word	-40
	.word	4
	.word	_Label_687
	.word	-44
	.word	4
	.word	_Label_688
	.word	-48
	.word	4
	.word	_Label_689
	.word	-52
	.word	4
	.word	_Label_690
	.word	-56
	.word	4
	.word	_Label_691
	.word	-60
	.word	4
	.word	_Label_692
	.word	-64
	.word	4
	.word	_Label_693
	.word	-68
	.word	4
	.word	_Label_694
	.word	-92
	.word	24
	.word	_Label_695
	.word	-96
	.word	4
	.word	_Label_696
	.word	-100
	.word	4
	.word	0
_Label_677:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_678:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_681:
	.byte	'C'
	.ascii	"_temp_674\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_694:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_695:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_696:
	.byte	'I'
	.ascii	"index\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	27,r1
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	2004,r13		! source line 2004
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   _temp_697 = &strBuffer
	add	r14,-92,r1
	store	r1,[r14+-68]
!   _temp_698 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_700 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_699 = *_temp_700  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_699) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_701 = _temp_699 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_697  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_698  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_703		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_703
!	jmp	_Label_702
_Label_702:
! THEN...
	mov	2012,r13		! source line 2012
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_704 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_703:
! CALL STATEMENT...
!   _temp_705 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_706 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2016,r13		! source line 2016
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_707 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_708 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_713 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_714 = i - 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_713  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-100]
_Label_709:
!   Perform the FOR-LOOP termination test
!   if index > _temp_714 then goto _Label_712		
	load	[r14+-100],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_712
_Label_710:
	mov	2021,r13		! source line 2021
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_716 = &strBuffer
	add	r14,-92,r1
	store	r1,[r14+-20]
!   Move address of _temp_716 [index ] into _temp_717
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_715 = *_temp_717  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_711:
!   index = index + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_709
! END FOR
_Label_712:
! CALL STATEMENT...
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_718
	.word	4		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_719
	.word	8
	.word	4
	.word	_Label_720
	.word	-16
	.word	4
	.word	_Label_721
	.word	-20
	.word	4
	.word	_Label_722
	.word	-9
	.word	1
	.word	_Label_723
	.word	-24
	.word	4
	.word	_Label_724
	.word	-28
	.word	4
	.word	_Label_725
	.word	-32
	.word	4
	.word	_Label_726
	.word	-36
	.word	4
	.word	_Label_727
	.word	-40
	.word	4
	.word	_Label_728
	.word	-44
	.word	4
	.word	_Label_729
	.word	-48
	.word	4
	.word	_Label_730
	.word	-52
	.word	4
	.word	_Label_731
	.word	-56
	.word	4
	.word	_Label_732
	.word	-60
	.word	4
	.word	_Label_733
	.word	-64
	.word	4
	.word	_Label_734
	.word	-68
	.word	4
	.word	_Label_735
	.word	-92
	.word	24
	.word	_Label_736
	.word	-96
	.word	4
	.word	_Label_737
	.word	-100
	.word	4
	.word	0
_Label_718:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_719:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_722:
	.byte	'C'
	.ascii	"_temp_715\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_735:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_736:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_737:
	.byte	'I'
	.ascii	"index\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	2030,r13		! source line 2030
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_738 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_739 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_740 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_741 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2038,r13		! source line 2038
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2039,r13		! source line 2039
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_742 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2041,r13		! source line 2041
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_743
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_744
	.word	8
	.word	4
	.word	_Label_745
	.word	12
	.word	4
	.word	_Label_746
	.word	16
	.word	4
	.word	_Label_747
	.word	-12
	.word	4
	.word	_Label_748
	.word	-16
	.word	4
	.word	_Label_749
	.word	-20
	.word	4
	.word	_Label_750
	.word	-24
	.word	4
	.word	_Label_751
	.word	-28
	.word	4
	.word	0
_Label_743:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_744:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_745:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_746:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	6,r1
_Label_3135:
	push	r0
	sub	r1,1,r1
	bne	_Label_3135
	mov	2050,r13		! source line 2050
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_752 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2051,r13		! source line 2051
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_753 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2053,r13		! source line 2053
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_754 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_755 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2058,r13		! source line 2058
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	2059,r13		! source line 2059
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_756 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2061,r13		! source line 2061
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2062,r13		! source line 2062
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2063,r13		! source line 2063
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_757
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_758
	.word	8
	.word	4
	.word	_Label_759
	.word	12
	.word	4
	.word	_Label_760
	.word	16
	.word	4
	.word	_Label_761
	.word	-12
	.word	4
	.word	_Label_762
	.word	-16
	.word	4
	.word	_Label_763
	.word	-20
	.word	4
	.word	_Label_764
	.word	-24
	.word	4
	.word	_Label_765
	.word	-28
	.word	4
	.word	0
_Label_757:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_758:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_759:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_760:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	2069,r13		! source line 2069
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_766 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_766  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2070,r13		! source line 2070
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_767 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2072,r13		! source line 2072
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2073,r13		! source line 2073
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2074,r13		! source line 2074
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_768 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2077,r13		! source line 2077
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2078,r13		! source line 2078
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_769
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_770
	.word	8
	.word	4
	.word	_Label_771
	.word	12
	.word	4
	.word	_Label_772
	.word	-12
	.word	4
	.word	_Label_773
	.word	-16
	.word	4
	.word	_Label_774
	.word	-20
	.word	4
	.word	0
_Label_769:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_770:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_771:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	2084,r13		! source line 2084
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_775 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2085,r13		! source line 2085
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_776 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2087,r13		! source line 2087
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2088,r13		! source line 2088
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2089,r13		! source line 2089
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_777
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_778
	.word	8
	.word	4
	.word	_Label_779
	.word	-12
	.word	4
	.word	_Label_780
	.word	-16
	.word	4
	.word	0
_Label_777:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_778:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_221_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_221_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	2681,r13		! source line 2681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_781 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_781  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
!   _temp_782 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_782) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_784 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_784) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_783 = *_temp_784  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_782 = _temp_783  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   _temp_785 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_785) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_787 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_787) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_786 = *_temp_787  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_785 = _temp_786  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0AS",r10
!   _temp_788 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_788) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_790 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_790) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_789 = *_temp_790  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_788 = _temp_789  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_221_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_791
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_792
	.word	8
	.word	4
	.word	_Label_793
	.word	12
	.word	4
	.word	_Label_794
	.word	-16
	.word	4
	.word	_Label_795
	.word	-9
	.word	1
	.word	_Label_796
	.word	-20
	.word	4
	.word	_Label_797
	.word	-24
	.word	4
	.word	_Label_798
	.word	-10
	.word	1
	.word	_Label_799
	.word	-28
	.word	4
	.word	_Label_800
	.word	-32
	.word	4
	.word	_Label_801
	.word	-11
	.word	1
	.word	_Label_802
	.word	-36
	.word	4
	.word	_Label_803
	.word	-12
	.word	1
	.word	_Label_804
	.word	-40
	.word	4
	.word	_Label_805
	.word	-44
	.word	4
	.word	0
_Label_791:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_792:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_793:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_795:
	.byte	'C'
	.ascii	"_temp_789\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_798:
	.byte	'C'
	.ascii	"_temp_786\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_801:
	.byte	'C'
	.ascii	"_temp_783\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_803:
	.byte	'C'
	.ascii	"_temp_781\0"
	.align
_Label_804:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_805:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_220_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_220_printFCB,r1
	push	r1
	mov	3,r1
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	2691,r13		! source line 2691
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_807 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_806 = *_temp_807  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_806  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_220_printFCB:
	.word	_sourceFileName
	.word	_Label_808
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_809
	.word	8
	.word	4
	.word	_Label_810
	.word	-12
	.word	4
	.word	_Label_811
	.word	-16
	.word	4
	.word	0
_Label_808:
	.ascii	"printFCB\0"
	.align
_Label_809:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_219_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_219_printOpen,r1
	push	r1
	mov	4,r1
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	2696,r13		! source line 2696
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_812 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2697,r13		! source line 2697
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_813 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_814 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2699,r13		! source line 2699
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_219_printOpen:
	.word	_sourceFileName
	.word	_Label_815
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_816
	.word	8
	.word	4
	.word	_Label_817
	.word	-12
	.word	4
	.word	_Label_818
	.word	-16
	.word	4
	.word	_Label_819
	.word	-20
	.word	4
	.word	0
_Label_815:
	.ascii	"printOpen\0"
	.align
_Label_816:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_820
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_820:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_821
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_821:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_823		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_823
!	jmp	_Label_822
_Label_822:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_824 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_823:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_826
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_828
	.word	12
	.word	4
	.word	_Label_829
	.word	-12
	.word	4
	.word	_Label_830
	.word	-16
	.word	4
	.word	0
_Label_826:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_827:
	.ascii	"Pself\0"
	.align
_Label_828:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_832		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_832
!	jmp	_Label_831
_Label_831:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_833 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_832:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_835		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_835
!	jmp	_Label_834
_Label_834:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_836 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_837 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_837 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_838 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_835:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_839
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_841
	.word	-12
	.word	4
	.word	_Label_842
	.word	-16
	.word	4
	.word	_Label_843
	.word	-20
	.word	4
	.word	_Label_844
	.word	-24
	.word	4
	.word	_Label_845
	.word	-28
	.word	4
	.word	_Label_846
	.word	-32
	.word	4
	.word	0
_Label_839:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_840:
	.ascii	"Pself\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_845:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_846:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_848		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_848
!	jmp	_Label_847
_Label_847:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_849 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_848:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_851		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_851
!	jmp	_Label_850
_Label_850:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_852 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_851:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_853
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_854
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_855
	.word	-12
	.word	4
	.word	_Label_856
	.word	-16
	.word	4
	.word	_Label_857
	.word	-20
	.word	4
	.word	0
_Label_853:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_854:
	.ascii	"Pself\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_857:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_858
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_Mutex_5	! 20:	HandlerOff
	.word	0
! 
! Class descriptor:
! 
_Label_858:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_859
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_859:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3144:
	push	r0
	sub	r1,1,r1
	bne	_Label_3144
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_861
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_863
	.word	-12
	.word	4
	.word	0
_Label_861:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_862:
	.ascii	"Pself\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_865		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_865
!	jmp	_Label_864
_Label_864:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_866 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_865:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_870		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_870
!   _temp_869 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_871
_Label_870:
!   _temp_869 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_871:
!   if _temp_869 then goto _Label_868 else goto _Label_867
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_867
	jmp	_Label_868
_Label_867:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_872
_Label_868:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_873 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_872:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_874
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_876
	.word	-16
	.word	4
	.word	_Label_877
	.word	-9
	.word	1
	.word	_Label_878
	.word	-20
	.word	4
	.word	_Label_879
	.word	-24
	.word	4
	.word	0
_Label_874:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_875:
	.ascii	"Pself\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_877:
	.byte	'C'
	.ascii	"_temp_869\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_879:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_881		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_881
!	jmp	_Label_880
_Label_880:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_882 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_882  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_881:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_883 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_885		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_885
!	jmp	_Label_884
_Label_884:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_886 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_886 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_887 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_888
_Label_885:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_888:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_889
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_891
	.word	-12
	.word	4
	.word	_Label_892
	.word	-16
	.word	4
	.word	_Label_893
	.word	-20
	.word	4
	.word	_Label_894
	.word	-24
	.word	4
	.word	_Label_895
	.word	-28
	.word	4
	.word	_Label_896
	.word	-32
	.word	4
	.word	0
_Label_889:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_890:
	.ascii	"Pself\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_895:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_896:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_899		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_899
!	jmp	_Label_898
_Label_898:
!   _temp_897 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_900
_Label_899:
!   _temp_897 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_900:
!   ReturnResult: _temp_897  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_901
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_903
	.word	-9
	.word	1
	.word	0
_Label_901:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_902:
	.ascii	"Pself\0"
	.align
_Label_903:
	.byte	'C'
	.ascii	"_temp_897\0"
	.align
! 
! ===============  METHOD HandlerOff  ===============
! 
_Method_P_Kernel_Mutex_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_5,r1
	push	r1
	mov	345,r13		! source line 345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   heldBy = ptrToThread		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_5:
	.word	_sourceFileName
	.word	_Label_904
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_906
	.word	12
	.word	4
	.word	0
_Label_904:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"HandlerOff\0"
	.align
_Label_905:
	.ascii	"Pself\0"
	.align
_Label_906:
	.byte	'P'
	.ascii	"ptrToThread\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_907
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_907:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_908
	.word	_sourceFileName
	.word	154		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_908:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_910
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_911
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_912
	.word	-12
	.word	4
	.word	0
_Label_910:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_911:
	.ascii	"Pself\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3149:
	push	r0
	sub	r1,1,r1
	bne	_Label_3149
	mov	392,r13		! source line 392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0IF",r10
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_915  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_915 then goto _Label_914 else goto _Label_913
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_913
	jmp	_Label_914
_Label_913:
! THEN...
	mov	396,r13		! source line 396
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_916 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_916  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	396,r13		! source line 396
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_914:
! ASSIGNMENT STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
!   _temp_917 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_918
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_919
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_920
	.word	12
	.word	4
	.word	_Label_921
	.word	-16
	.word	4
	.word	_Label_922
	.word	-20
	.word	4
	.word	_Label_923
	.word	-9
	.word	1
	.word	_Label_924
	.word	-24
	.word	4
	.word	0
_Label_918:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_919:
	.ascii	"Pself\0"
	.align
_Label_920:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_923:
	.byte	'C'
	.ascii	"_temp_915\0"
	.align
_Label_924:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
	mov	408,r13		! source line 408
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0IF",r10
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_927  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_927 then goto _Label_926 else goto _Label_925
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_925
	jmp	_Label_926
_Label_925:
! THEN...
	mov	413,r13		! source line 413
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_928 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_928  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	413,r13		! source line 413
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_926:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   _temp_929 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_931		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_931
!	jmp	_Label_930
_Label_930:
! THEN...
	mov	418,r13		! source line 418
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_932 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_932 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	419,r13		! source line 419
	mov	"\0\0SE",r10
!   _temp_933 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_931:
! ASSIGNMENT STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	421,r13		! source line 421
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_934
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_936
	.word	12
	.word	4
	.word	_Label_937
	.word	-16
	.word	4
	.word	_Label_938
	.word	-20
	.word	4
	.word	_Label_939
	.word	-24
	.word	4
	.word	_Label_940
	.word	-28
	.word	4
	.word	_Label_941
	.word	-9
	.word	1
	.word	_Label_942
	.word	-32
	.word	4
	.word	_Label_943
	.word	-36
	.word	4
	.word	0
_Label_934:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_935:
	.ascii	"Pself\0"
	.align
_Label_936:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_941:
	.byte	'C'
	.ascii	"_temp_927\0"
	.align
_Label_942:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_943:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
	mov	426,r13		! source line 426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_946  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_946 then goto _Label_945 else goto _Label_944
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_944
	jmp	_Label_945
_Label_944:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_947 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_947  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	431,r13		! source line 431
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_945:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0WH",r10
_Label_948:
!	jmp	_Label_949
_Label_949:
	mov	434,r13		! source line 434
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_951 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_952
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_952
	jmp	_Label_953
_Label_952:
! THEN...
	mov	437,r13		! source line 437
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0BR",r10
	jmp	_Label_950
! END IF...
_Label_953:
! ASSIGNMENT STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_954 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_954 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   _temp_955 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_948
_Label_950:
! ASSIGNMENT STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_956
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_958
	.word	12
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-24
	.word	4
	.word	_Label_962
	.word	-28
	.word	4
	.word	_Label_963
	.word	-9
	.word	1
	.word	_Label_964
	.word	-32
	.word	4
	.word	_Label_965
	.word	-36
	.word	4
	.word	0
_Label_956:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_957:
	.ascii	"Pself\0"
	.align
_Label_958:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_963:
	.byte	'C'
	.ascii	"_temp_946\0"
	.align
_Label_964:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_965:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_966
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_966:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_967
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_967:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
	mov	476,r13		! source line 476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_969
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_971
	.word	-12
	.word	4
	.word	0
_Label_969:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_970:
	.ascii	"Pself\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
	mov	484,r13		! source line 484
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0IF",r10
	mov	487,r13		! source line 487
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_974  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_974 then goto _Label_973 else goto _Label_972
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_972
	jmp	_Label_973
_Label_972:
! THEN...
	mov	488,r13		! source line 488
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_975 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	488,r13		! source line 488
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_973:
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	490,r13		! source line 490
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0SE",r10
!   _temp_976 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_977
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_978
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_979
	.word	12
	.word	4
	.word	_Label_980
	.word	-16
	.word	4
	.word	_Label_981
	.word	-20
	.word	4
	.word	_Label_982
	.word	-9
	.word	1
	.word	_Label_983
	.word	-24
	.word	4
	.word	0
_Label_977:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_978:
	.ascii	"Pself\0"
	.align
_Label_979:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_982:
	.byte	'C'
	.ascii	"_temp_974\0"
	.align
_Label_983:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	9,r1
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
	mov	502,r13		! source line 502
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0IF",r10
	mov	506,r13		! source line 506
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_986  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_986 then goto _Label_985 else goto _Label_984
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_984
	jmp	_Label_985
_Label_984:
! THEN...
	mov	507,r13		! source line 507
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_987 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	507,r13		! source line 507
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_985:
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
	mov	510,r13		! source line 510
	mov	"\0\0SE",r10
!   _temp_988 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_990		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_990
!	jmp	_Label_989
_Label_989:
! THEN...
	mov	512,r13		! source line 512
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message HandlerOff
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_991 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0SE",r10
!   _temp_992 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_990:
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_993
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_995
	.word	12
	.word	4
	.word	_Label_996
	.word	-16
	.word	4
	.word	_Label_997
	.word	-20
	.word	4
	.word	_Label_998
	.word	-24
	.word	4
	.word	_Label_999
	.word	-28
	.word	4
	.word	_Label_1000
	.word	-9
	.word	1
	.word	_Label_1001
	.word	-32
	.word	4
	.word	_Label_1002
	.word	-36
	.word	4
	.word	0
_Label_993:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_994:
	.ascii	"Pself\0"
	.align
_Label_995:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1000:
	.byte	'C'
	.ascii	"_temp_986\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1002:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1003
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1003:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1004
	.word	_sourceFileName
	.word	179		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1004:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
	mov	528,r13		! source line 528
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0AS",r10
!   _temp_1005 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1005) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1005 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0AS",r10
!   _temp_1006 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1006 [0 ] into _temp_1007
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1007 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0AS",r10
!   _temp_1008 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1008 [999 ] into _temp_1009
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1009 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0AS",r10
!   _temp_1010 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1010 [999 ] into _temp_1011
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_1011		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0AS",r10
!   _temp_1012 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1014 = &_temp_1013
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1014 = _temp_1014 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1016:
!   Data Move: *_temp_1014 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1014 = _temp_1014 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1015 = _temp_1015 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1015) then goto _Label_1016
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1016
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1017 = &_temp_1013
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3156
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3156:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1012 = *_temp_1017  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3157:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3157
! ASSIGNMENT STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0AS",r10
!   _temp_1018 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1020 = &_temp_1019
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1020 = _temp_1020 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1022:
!   Data Move: *_temp_1020 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1020 = _temp_1020 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1021 = _temp_1021 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1021) then goto _Label_1022
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1022
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1023 = &_temp_1019
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3158
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3158:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1018 = *_temp_1023  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3159:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3159
! RETURN STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1024
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1026
	.word	12
	.word	4
	.word	_Label_1027
	.word	-12
	.word	4
	.word	_Label_1028
	.word	-16
	.word	4
	.word	_Label_1029
	.word	-20
	.word	4
	.word	_Label_1030
	.word	-84
	.word	64
	.word	_Label_1031
	.word	-88
	.word	4
	.word	_Label_1032
	.word	-92
	.word	4
	.word	_Label_1033
	.word	-96
	.word	4
	.word	_Label_1034
	.word	-100
	.word	4
	.word	_Label_1035
	.word	-156
	.word	56
	.word	_Label_1036
	.word	-160
	.word	4
	.word	_Label_1037
	.word	-164
	.word	4
	.word	_Label_1038
	.word	-168
	.word	4
	.word	_Label_1039
	.word	-172
	.word	4
	.word	_Label_1040
	.word	-176
	.word	4
	.word	_Label_1041
	.word	-180
	.word	4
	.word	_Label_1042
	.word	-184
	.word	4
	.word	_Label_1043
	.word	-188
	.word	4
	.word	0
_Label_1024:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1025:
	.ascii	"Pself\0"
	.align
_Label_1026:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3160:
	push	r0
	sub	r1,1,r1
	bne	_Label_3160
	mov	547,r13		! source line 547
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1044 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1044  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1046 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1045  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1047
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1049
	.word	12
	.word	4
	.word	_Label_1050
	.word	16
	.word	4
	.word	_Label_1051
	.word	-12
	.word	4
	.word	_Label_1052
	.word	-16
	.word	4
	.word	_Label_1053
	.word	-20
	.word	4
	.word	_Label_1054
	.word	-24
	.word	4
	.word	_Label_1055
	.word	-28
	.word	4
	.word	0
_Label_1047:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1048:
	.ascii	"Pself\0"
	.align
_Label_1049:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1050:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1054:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1055:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3161:
	push	r0
	sub	r1,1,r1
	bne	_Label_3161
	mov	571,r13		! source line 571
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1058 == _P_Kernel_currentThread then goto _Label_1057		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1057
!	jmp	_Label_1056
_Label_1056:
! THEN...
	mov	588,r13		! source line 588
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1059 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	588,r13		! source line 588
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1057:
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
	mov	594,r13		! source line 594
	mov	"\0\0SE",r10
!   _temp_1060 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1062		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1062
!	jmp	_Label_1061
_Label_1061:
! THEN...
	mov	599,r13		! source line 599
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1064		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1064
!	jmp	_Label_1063
_Label_1063:
! THEN...
	mov	600,r13		! source line 600
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1065 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	600,r13		! source line 600
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1064:
! ASSIGNMENT STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	603,r13		! source line 603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1067 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1066  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1062:
! ASSIGNMENT STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1068
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1070
	.word	-12
	.word	4
	.word	_Label_1071
	.word	-16
	.word	4
	.word	_Label_1072
	.word	-20
	.word	4
	.word	_Label_1073
	.word	-24
	.word	4
	.word	_Label_1074
	.word	-28
	.word	4
	.word	_Label_1075
	.word	-32
	.word	4
	.word	_Label_1076
	.word	-36
	.word	4
	.word	_Label_1077
	.word	-40
	.word	4
	.word	_Label_1078
	.word	-44
	.word	4
	.word	0
_Label_1068:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1069:
	.ascii	"Pself\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1076:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1077:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1078:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3162:
	push	r0
	sub	r1,1,r1
	bne	_Label_3162
	mov	611,r13		! source line 611
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1080		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1080
!	jmp	_Label_1079
_Label_1079:
! THEN...
	mov	624,r13		! source line 624
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1081 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	624,r13		! source line 624
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1080:
! IF STATEMENT...
	mov	627,r13		! source line 627
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1084 == _P_Kernel_currentThread then goto _Label_1083		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1083
!	jmp	_Label_1082
_Label_1082:
! THEN...
	mov	628,r13		! source line 628
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1085 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	628,r13		! source line 628
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1083:
! ASSIGNMENT STATEMENT...
	mov	633,r13		! source line 633
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
	mov	634,r13		! source line 634
	mov	"\0\0SE",r10
!   _temp_1086 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1087
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1087
	jmp	_Label_1088
_Label_1087:
! THEN...
	mov	636,r13		! source line 636
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1089 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	636,r13		! source line 636
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1088:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1090
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1092
	.word	-12
	.word	4
	.word	_Label_1093
	.word	-16
	.word	4
	.word	_Label_1094
	.word	-20
	.word	4
	.word	_Label_1095
	.word	-24
	.word	4
	.word	_Label_1096
	.word	-28
	.word	4
	.word	_Label_1097
	.word	-32
	.word	4
	.word	0
_Label_1090:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1091:
	.ascii	"Pself\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1097:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3163:
	push	r0
	sub	r1,1,r1
	bne	_Label_3163
	mov	643,r13		! source line 643
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0IF",r10
!   _temp_1101 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1101 [0 ] into _temp_1102
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1100 = *_temp_1102  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1100 == 606348324 then goto _Label_1099		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1099
!	jmp	_Label_1098
_Label_1098:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1103 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1103  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	650,r13		! source line 650
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1104
_Label_1099:
! ELSE...
	mov	651,r13		! source line 651
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   _temp_1108 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1108 [999 ] into _temp_1109
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1107 = *_temp_1109  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1107 == 606348324 then goto _Label_1106		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1106
!	jmp	_Label_1105
_Label_1105:
! THEN...
	mov	652,r13		! source line 652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1110 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	652,r13		! source line 652
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1106:
! END IF...
_Label_1104:
! RETURN STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1111
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1113
	.word	-12
	.word	4
	.word	_Label_1114
	.word	-16
	.word	4
	.word	_Label_1115
	.word	-20
	.word	4
	.word	_Label_1116
	.word	-24
	.word	4
	.word	_Label_1117
	.word	-28
	.word	4
	.word	_Label_1118
	.word	-32
	.word	4
	.word	_Label_1119
	.word	-36
	.word	4
	.word	_Label_1120
	.word	-40
	.word	4
	.word	0
_Label_1111:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1112:
	.ascii	"Pself\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3164:
	push	r0
	sub	r1,1,r1
	bne	_Label_3164
	mov	658,r13		! source line 658
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1121 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1122 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1124 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1124  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1125 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1125  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1130 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1131 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1130  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1126:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1131 then goto _Label_1129		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1129
_Label_1127:
	mov	671,r13		! source line 671
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1132 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1133 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1133  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1134 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1136 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1136 [i ] into _temp_1137
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1135 = *_temp_1137  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1135  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1138 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1140 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1140 [i ] into _temp_1141
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1139 = *_temp_1141  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1139  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1142 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1128:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1126
! END FOR
_Label_1129:
! CALL STATEMENT...
!   _temp_1143 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-116]
!   _temp_1144 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1143  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1144  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1145 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-108]
!   _temp_1147 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1147 [0 ] into _temp_1148
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1146 = _temp_1148		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1145  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1146  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	682,r13		! source line 682
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1151
	cmp	r1,2
	be	_Label_1152
	cmp	r1,3
	be	_Label_1153
	cmp	r1,4
	be	_Label_1154
	cmp	r1,5
	be	_Label_1155
	jmp	_Label_1149
! CASE 1...
_Label_1151:
! CALL STATEMENT...
!   _temp_1156 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1156  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	685,r13		! source line 685
	mov	"\0\0BR",r10
	jmp	_Label_1150
! CASE 2...
_Label_1152:
! CALL STATEMENT...
!   _temp_1157 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1157  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0BR",r10
	jmp	_Label_1150
! CASE 3...
_Label_1153:
! CALL STATEMENT...
!   _temp_1158 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0BR",r10
	jmp	_Label_1150
! CASE 4...
_Label_1154:
! CALL STATEMENT...
!   _temp_1159 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1159  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0BR",r10
	jmp	_Label_1150
! CASE 5...
_Label_1155:
! CALL STATEMENT...
!   _temp_1160 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1160  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	697,r13		! source line 697
	mov	"\0\0BR",r10
	jmp	_Label_1150
! DEFAULT CASE...
_Label_1149:
! CALL STATEMENT...
!   _temp_1161 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1161  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	699,r13		! source line 699
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1150:
! CALL STATEMENT...
!   _temp_1162 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1163 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1168 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1169 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1168  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1164:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1169 then goto _Label_1167		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1167
_Label_1165:
	mov	705,r13		! source line 705
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1170 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1170  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1171 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1171  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1172 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1172  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1174 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1174 [i ] into _temp_1175
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1173 = *_temp_1175  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1173  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1176 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1178 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1178 [i ] into _temp_1179
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1177 = *_temp_1179  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1180 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1180  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1166:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1164
! END FOR
_Label_1167:
! ASSIGNMENT STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1181
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1182
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1183
	.word	-12
	.word	4
	.word	_Label_1184
	.word	-16
	.word	4
	.word	_Label_1185
	.word	-20
	.word	4
	.word	_Label_1186
	.word	-24
	.word	4
	.word	_Label_1187
	.word	-28
	.word	4
	.word	_Label_1188
	.word	-32
	.word	4
	.word	_Label_1189
	.word	-36
	.word	4
	.word	_Label_1190
	.word	-40
	.word	4
	.word	_Label_1191
	.word	-44
	.word	4
	.word	_Label_1192
	.word	-48
	.word	4
	.word	_Label_1193
	.word	-52
	.word	4
	.word	_Label_1194
	.word	-56
	.word	4
	.word	_Label_1195
	.word	-60
	.word	4
	.word	_Label_1196
	.word	-64
	.word	4
	.word	_Label_1197
	.word	-68
	.word	4
	.word	_Label_1198
	.word	-72
	.word	4
	.word	_Label_1199
	.word	-76
	.word	4
	.word	_Label_1200
	.word	-80
	.word	4
	.word	_Label_1201
	.word	-84
	.word	4
	.word	_Label_1202
	.word	-88
	.word	4
	.word	_Label_1203
	.word	-92
	.word	4
	.word	_Label_1204
	.word	-96
	.word	4
	.word	_Label_1205
	.word	-100
	.word	4
	.word	_Label_1206
	.word	-104
	.word	4
	.word	_Label_1207
	.word	-108
	.word	4
	.word	_Label_1208
	.word	-112
	.word	4
	.word	_Label_1209
	.word	-116
	.word	4
	.word	_Label_1210
	.word	-120
	.word	4
	.word	_Label_1211
	.word	-124
	.word	4
	.word	_Label_1212
	.word	-128
	.word	4
	.word	_Label_1213
	.word	-132
	.word	4
	.word	_Label_1214
	.word	-136
	.word	4
	.word	_Label_1215
	.word	-140
	.word	4
	.word	_Label_1216
	.word	-144
	.word	4
	.word	_Label_1217
	.word	-148
	.word	4
	.word	_Label_1218
	.word	-152
	.word	4
	.word	_Label_1219
	.word	-156
	.word	4
	.word	_Label_1220
	.word	-160
	.word	4
	.word	_Label_1221
	.word	-164
	.word	4
	.word	_Label_1222
	.word	-168
	.word	4
	.word	_Label_1223
	.word	-172
	.word	4
	.word	_Label_1224
	.word	-176
	.word	4
	.word	_Label_1225
	.word	-180
	.word	4
	.word	_Label_1226
	.word	-184
	.word	4
	.word	_Label_1227
	.word	-188
	.word	4
	.word	_Label_1228
	.word	-192
	.word	4
	.word	_Label_1229
	.word	-196
	.word	4
	.word	0
_Label_1181:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1182:
	.ascii	"Pself\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1228:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1229:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1230
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1230:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1231
	.word	_sourceFileName
	.word	206		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1231:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11505,r1
_Label_3165:
	push	r0
	sub	r1,1,r1
	bne	_Label_3165
	mov	769,r13		! source line 769
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1232 = _StringConst_108
	set	_StringConst_108,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1232  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	779,r13		! source line 779
	mov	"\0\0AS",r10
!   _temp_1233 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1235 = &_temp_1234
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1235 = _temp_1235 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1237 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3166:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3166
!   _temp_1237 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1239:
!   Data Move: *_temp_1235 = _temp_1237  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3167:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3167
!   _temp_1235 = _temp_1235 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1236 = _temp_1236 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1236) then goto _Label_1239
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1239
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1240 = &_temp_1234
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3168
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3168:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1233 = *_temp_1240  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3169:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3169
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1241 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-184]
!   _temp_1242 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_1242 [0 ] into _temp_1243
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Prepare Argument: offset=12  value=_temp_1241  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0SE",r10
!   _temp_1244 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-172]
!   _temp_1245 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_1245 [1 ] into _temp_1246
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   Prepare Argument: offset=12  value=_temp_1244  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1247 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-160]
!   _temp_1248 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_1248 [2 ] into _temp_1249
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   Prepare Argument: offset=12  value=_temp_1247  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-152],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_1250 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-148]
!   _temp_1251 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Move address of _temp_1251 [3 ] into _temp_1252
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Prepare Argument: offset=12  value=_temp_1250  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0SE",r10
!   _temp_1253 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-136]
!   _temp_1254 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1254 [4 ] into _temp_1255
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Prepare Argument: offset=12  value=_temp_1253  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1256 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-124]
!   _temp_1257 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Move address of _temp_1257 [5 ] into _temp_1258
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_1256  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_1259 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-112]
!   _temp_1260 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_1260 [6 ] into _temp_1261
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1259  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1262 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-100]
!   _temp_1263 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_1263 [7 ] into _temp_1264
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_1262  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1265 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-88]
!   _temp_1266 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Move address of _temp_1266 [8 ] into _temp_1267
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_1265  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1268 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-76]
!   _temp_1269 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Move address of _temp_1269 [9 ] into _temp_1270
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_1268  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1276 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1277 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1276  (sizeInBytes=4)
	load	[r14+-60],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1272:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1277 then goto _Label_1275		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1275
_Label_1273:
	mov	793,r13		! source line 793
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0AS",r10
!   _temp_1278 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1278 [i ] into _temp_1279
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_1280 = _temp_1279 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1280 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1282 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1282 [i ] into _temp_1283
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1281 = _temp_1283		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1284 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1281  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1274:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1272
! END FOR
_Label_1275:
! ASSIGNMENT STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0SE",r10
!   _temp_1286 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_1288 = &threadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0RE",r10
	set	46024,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1289
	.word	4		! total size of parameters
	.word	46020		! frame size = 46020
	.word	_Label_1290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1291
	.word	-12
	.word	4
	.word	_Label_1292
	.word	-16
	.word	4
	.word	_Label_1293
	.word	-20
	.word	4
	.word	_Label_1294
	.word	-24
	.word	4
	.word	_Label_1295
	.word	-28
	.word	4
	.word	_Label_1296
	.word	-32
	.word	4
	.word	_Label_1297
	.word	-36
	.word	4
	.word	_Label_1298
	.word	-40
	.word	4
	.word	_Label_1299
	.word	-44
	.word	4
	.word	_Label_1300
	.word	-48
	.word	4
	.word	_Label_1301
	.word	-52
	.word	4
	.word	_Label_1302
	.word	-56
	.word	4
	.word	_Label_1303
	.word	-60
	.word	4
	.word	_Label_1304
	.word	-64
	.word	4
	.word	_Label_1305
	.word	-68
	.word	4
	.word	_Label_1306
	.word	-72
	.word	4
	.word	_Label_1307
	.word	-76
	.word	4
	.word	_Label_1308
	.word	-80
	.word	4
	.word	_Label_1309
	.word	-84
	.word	4
	.word	_Label_1310
	.word	-88
	.word	4
	.word	_Label_1311
	.word	-92
	.word	4
	.word	_Label_1312
	.word	-96
	.word	4
	.word	_Label_1313
	.word	-100
	.word	4
	.word	_Label_1314
	.word	-104
	.word	4
	.word	_Label_1315
	.word	-108
	.word	4
	.word	_Label_1316
	.word	-112
	.word	4
	.word	_Label_1317
	.word	-116
	.word	4
	.word	_Label_1318
	.word	-120
	.word	4
	.word	_Label_1319
	.word	-124
	.word	4
	.word	_Label_1320
	.word	-128
	.word	4
	.word	_Label_1321
	.word	-132
	.word	4
	.word	_Label_1322
	.word	-136
	.word	4
	.word	_Label_1323
	.word	-140
	.word	4
	.word	_Label_1324
	.word	-144
	.word	4
	.word	_Label_1325
	.word	-148
	.word	4
	.word	_Label_1326
	.word	-152
	.word	4
	.word	_Label_1327
	.word	-156
	.word	4
	.word	_Label_1328
	.word	-160
	.word	4
	.word	_Label_1329
	.word	-164
	.word	4
	.word	_Label_1330
	.word	-168
	.word	4
	.word	_Label_1331
	.word	-172
	.word	4
	.word	_Label_1332
	.word	-176
	.word	4
	.word	_Label_1333
	.word	-180
	.word	4
	.word	_Label_1334
	.word	-184
	.word	4
	.word	_Label_1335
	.word	-188
	.word	4
	.word	_Label_1336
	.word	-192
	.word	4
	.word	_Label_1337
	.word	-4356
	.word	4164
	.word	_Label_1338
	.word	-4360
	.word	4
	.word	_Label_1339
	.word	-4364
	.word	4
	.word	_Label_1340
	.word	-46008
	.word	41644
	.word	_Label_1341
	.word	-46012
	.word	4
	.word	_Label_1342
	.word	-46016
	.word	4
	.word	_Label_1343
	.word	-46020
	.word	4
	.word	0
_Label_1289:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1290:
	.ascii	"Pself\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1343:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3170:
	push	r0
	sub	r1,1,r1
	bne	_Label_3170
	mov	807,r13		! source line 807
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1344 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1344  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1349 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1350 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1349  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1345:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1350 then goto _Label_1348		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1348
_Label_1346:
	mov	816,r13		! source line 816
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1351 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1351  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	818,r13		! source line 818
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1352 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1352  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1354 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1354 [i ] into _temp_1355
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1353 = _temp_1355		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1353  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CA",r10
	call	_function_225_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1347:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1345
! END FOR
_Label_1348:
! CALL STATEMENT...
!   _temp_1356 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1356  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	822,r13		! source line 822
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_1357 = _function_224_PrintObjectAddr
	set	_function_224_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1358 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1357  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	825,r13		! source line 825
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1359
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1360
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1361
	.word	-12
	.word	4
	.word	_Label_1362
	.word	-16
	.word	4
	.word	_Label_1363
	.word	-20
	.word	4
	.word	_Label_1364
	.word	-24
	.word	4
	.word	_Label_1365
	.word	-28
	.word	4
	.word	_Label_1366
	.word	-32
	.word	4
	.word	_Label_1367
	.word	-36
	.word	4
	.word	_Label_1368
	.word	-40
	.word	4
	.word	_Label_1369
	.word	-44
	.word	4
	.word	_Label_1370
	.word	-48
	.word	4
	.word	_Label_1371
	.word	-52
	.word	4
	.word	_Label_1372
	.word	-56
	.word	4
	.word	_Label_1373
	.word	-60
	.word	4
	.word	0
_Label_1359:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1360:
	.ascii	"Pself\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1372:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1373:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3171:
	push	r0
	sub	r1,1,r1
	bne	_Label_3171
	mov	830,r13		! source line 830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0SE",r10
!   _temp_1374 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0IF",r10
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
!   _temp_1377 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1375 else goto _Label_1376
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1376
	jmp	_Label_1375
_Label_1375:
! THEN...
	mov	842,r13		! source line 842
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
!   _temp_1378 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1379 = &threadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1378  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1376:
! ASSIGNMENT STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0AS",r10
	mov	846,r13		! source line 846
	mov	"\0\0SE",r10
!   _temp_1380 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pointerToThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0AS",r10
!   if intIsZero (pointerToThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1381 = pointerToThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1381 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0SE",r10
!   _temp_1382 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	852,r13		! source line 852
	mov	"\0\0RE",r10
!   ReturnResult: pointerToThread  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1383
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1384
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1385
	.word	-12
	.word	4
	.word	_Label_1386
	.word	-16
	.word	4
	.word	_Label_1387
	.word	-20
	.word	4
	.word	_Label_1388
	.word	-24
	.word	4
	.word	_Label_1389
	.word	-28
	.word	4
	.word	_Label_1390
	.word	-32
	.word	4
	.word	_Label_1391
	.word	-36
	.word	4
	.word	_Label_1392
	.word	-40
	.word	4
	.word	0
_Label_1383:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1384:
	.ascii	"Pself\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1392:
	.byte	'P'
	.ascii	"pointerToThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
	mov	857,r13		! source line 857
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0SE",r10
!   _temp_1393 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1394 = _P_Kernel_currentThread + 76
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1394 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0SE",r10
!   _temp_1395 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_1396 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1397 = &threadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1396  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0SE",r10
!   _temp_1398 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1399
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1400
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1401
	.word	12
	.word	4
	.word	_Label_1402
	.word	-12
	.word	4
	.word	_Label_1403
	.word	-16
	.word	4
	.word	_Label_1404
	.word	-20
	.word	4
	.word	_Label_1405
	.word	-24
	.word	4
	.word	_Label_1406
	.word	-28
	.word	4
	.word	_Label_1407
	.word	-32
	.word	4
	.word	0
_Label_1399:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1400:
	.ascii	"Pself\0"
	.align
_Label_1401:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1408
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1408:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1409
	.word	_sourceFileName
	.word	228		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1409:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3173:
	push	r0
	sub	r1,1,r1
	bne	_Label_3173
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	880,r13		! source line 880
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3174:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3174
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0SE",r10
!   _temp_1411 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1412
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1413
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1414
	.word	-12
	.word	4
	.word	_Label_1415
	.word	-16
	.word	4
	.word	0
_Label_1412:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1413:
	.ascii	"Pself\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3175:
	push	r0
	sub	r1,1,r1
	bne	_Label_3175
	mov	893,r13		! source line 893
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1416) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1417 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1418 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CA",r10
	call	_function_225_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	911,r13		! source line 911
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1419
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1421
	.word	-12
	.word	4
	.word	_Label_1422
	.word	-16
	.word	4
	.word	_Label_1423
	.word	-20
	.word	4
	.word	0
_Label_1419:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1420:
	.ascii	"Pself\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3176:
	push	r0
	sub	r1,1,r1
	bne	_Label_3176
	mov	916,r13		! source line 916
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1424 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1424  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1426 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1426  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1427 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1429		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1429
!	jmp	_Label_1428
_Label_1428:
! THEN...
	mov	926,r13		! source line 926
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1430 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1431
_Label_1429:
! ELSE...
	mov	927,r13		! source line 927
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1433		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1433
!	jmp	_Label_1432
_Label_1432:
! THEN...
	mov	928,r13		! source line 928
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1434 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1434  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1435
_Label_1433:
! ELSE...
	mov	929,r13		! source line 929
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1437		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1437
!	jmp	_Label_1436
_Label_1436:
! THEN...
	mov	930,r13		! source line 930
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1438 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1438  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1439
_Label_1437:
! ELSE...
	mov	932,r13		! source line 932
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1440 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1440  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	932,r13		! source line 932
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1439:
! END IF...
_Label_1435:
! END IF...
_Label_1431:
! CALL STATEMENT...
!   _temp_1441 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1441  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1442 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1442  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1443
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1444
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1445
	.word	-12
	.word	4
	.word	_Label_1446
	.word	-16
	.word	4
	.word	_Label_1447
	.word	-20
	.word	4
	.word	_Label_1448
	.word	-24
	.word	4
	.word	_Label_1449
	.word	-28
	.word	4
	.word	_Label_1450
	.word	-32
	.word	4
	.word	_Label_1451
	.word	-36
	.word	4
	.word	_Label_1452
	.word	-40
	.word	4
	.word	_Label_1453
	.word	-44
	.word	4
	.word	_Label_1454
	.word	-48
	.word	4
	.word	0
_Label_1443:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1444:
	.ascii	"Pself\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1455
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1455:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1456
	.word	_sourceFileName
	.word	248		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1456:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_3177:
	push	r0
	sub	r1,1,r1
	bne	_Label_3177
	mov	949,r13		! source line 949
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0AS",r10
!   _temp_1458 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1464]
!   NEW ARRAY Constructor...
!   _temp_1460 = &_temp_1459
	add	r14,-1460,r1
	store	r1,[r14+-216]
!   _temp_1460 = _temp_1460 + 4
	load	[r14+-216],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1462 = zeros  (sizeInBytes=124)
	add	r14,-208,r4
	mov	31,r3
_Label_3178:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3178
!   _temp_1462 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-208]
	mov	10,r1
	store	r1,[r14+-212]
_Label_1464:
!   Data Move: *_temp_1460 = _temp_1462  (sizeInBytes=124)
	add	r14,-208,r5
	load	[r14+-216],r4
	mov	31,r3
_Label_3179:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3179
!   _temp_1460 = _temp_1460 + 124
	load	[r14+-216],r1
	add	r1,124,r1
	store	r1,[r14+-216]
!   _temp_1461 = _temp_1461 + -1
	load	[r14+-212],r1
	add	r1,-1,r1
	store	r1,[r14+-212]
!   if intNotZero (_temp_1461) then goto _Label_1464
	load	[r14+-212],r1
	cmp	r1,r0
	bne	_Label_1464
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1460]
!   _temp_1465 = &_temp_1459
	add	r14,-1460,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-1464],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3180
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3180:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1458 = *_temp_1465  (sizeInBytes=1244)
	load	[r14+-80],r5
	load	[r14+-1464],r4
	mov	311,r3
_Label_3181:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3181
! FOR STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1470 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1471 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1470  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1472]
_Label_1466:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1471 then goto _Label_1469		
	load	[r14+-1472],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1469
_Label_1467:
	mov	958,r13		! source line 958
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1472 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1472 [i ] into _temp_1473
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1475 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1475 [i ] into _temp_1476
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_1474 = _temp_1476		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-60]
!   _temp_1477 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1474  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
!   _temp_1478 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1478 [i ] into _temp_1479
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1480 = _temp_1479 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1480 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-36],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1468:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1466
! END FOR
_Label_1469:
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_1482 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_1484 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1486 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1487
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1488
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1489
	.word	-12
	.word	4
	.word	_Label_1490
	.word	-16
	.word	4
	.word	_Label_1491
	.word	-20
	.word	4
	.word	_Label_1492
	.word	-24
	.word	4
	.word	_Label_1493
	.word	-28
	.word	4
	.word	_Label_1494
	.word	-32
	.word	4
	.word	_Label_1495
	.word	-36
	.word	4
	.word	_Label_1496
	.word	-40
	.word	4
	.word	_Label_1497
	.word	-44
	.word	4
	.word	_Label_1498
	.word	-48
	.word	4
	.word	_Label_1499
	.word	-52
	.word	4
	.word	_Label_1500
	.word	-56
	.word	4
	.word	_Label_1501
	.word	-60
	.word	4
	.word	_Label_1502
	.word	-64
	.word	4
	.word	_Label_1503
	.word	-68
	.word	4
	.word	_Label_1504
	.word	-72
	.word	4
	.word	_Label_1505
	.word	-76
	.word	4
	.word	_Label_1506
	.word	-80
	.word	4
	.word	_Label_1507
	.word	-84
	.word	4
	.word	_Label_1508
	.word	-208
	.word	124
	.word	_Label_1509
	.word	-212
	.word	4
	.word	_Label_1510
	.word	-216
	.word	4
	.word	_Label_1511
	.word	-1460
	.word	1244
	.word	_Label_1512
	.word	-1464
	.word	4
	.word	_Label_1513
	.word	-1468
	.word	4
	.word	_Label_1514
	.word	-1472
	.word	4
	.word	0
_Label_1487:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1488:
	.ascii	"Pself\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1514:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3182:
	push	r0
	sub	r1,1,r1
	bne	_Label_3182
	mov	976,r13		! source line 976
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1515 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1515  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	984,r13		! source line 984
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1520 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1521 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1520  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1516:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1521 then goto _Label_1519		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1519
_Label_1517:
	mov	985,r13		! source line 985
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1522 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1522  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	986,r13		! source line 986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	987,r13		! source line 987
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1523 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1523  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	988,r13		! source line 988
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_1524 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1524 [i ] into _temp_1525
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1518:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1516
! END FOR
_Label_1519:
! CALL STATEMENT...
!   _temp_1526 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1526  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	991,r13		! source line 991
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_1527 = _function_224_PrintObjectAddr
	set	_function_224_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1528 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1527  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1529
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1531
	.word	-12
	.word	4
	.word	_Label_1532
	.word	-16
	.word	4
	.word	_Label_1533
	.word	-20
	.word	4
	.word	_Label_1534
	.word	-24
	.word	4
	.word	_Label_1535
	.word	-28
	.word	4
	.word	_Label_1536
	.word	-32
	.word	4
	.word	_Label_1537
	.word	-36
	.word	4
	.word	_Label_1538
	.word	-40
	.word	4
	.word	_Label_1539
	.word	-44
	.word	4
	.word	_Label_1540
	.word	-48
	.word	4
	.word	_Label_1541
	.word	-52
	.word	4
	.word	_Label_1542
	.word	-56
	.word	4
	.word	0
_Label_1529:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1530:
	.ascii	"Pself\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1541:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1542:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3183:
	push	r0
	sub	r1,1,r1
	bne	_Label_3183
	mov	999,r13		! source line 999
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1006,r13		! source line 1006
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1543 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1543  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1007,r13		! source line 1007
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1548 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1549 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1548  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1544:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1549 then goto _Label_1547		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1547
_Label_1545:
	mov	1008,r13		! source line 1008
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1550 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1550  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1009,r13		! source line 1009
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1551 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1551 [i ] into _temp_1552
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1546:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1544
! END FOR
_Label_1547:
! CALL STATEMENT...
!   _temp_1553 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1553  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_1554 = _function_224_PrintObjectAddr
	set	_function_224_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1555 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1554  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1015,r13		! source line 1015
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1556
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1558
	.word	-12
	.word	4
	.word	_Label_1559
	.word	-16
	.word	4
	.word	_Label_1560
	.word	-20
	.word	4
	.word	_Label_1561
	.word	-24
	.word	4
	.word	_Label_1562
	.word	-28
	.word	4
	.word	_Label_1563
	.word	-32
	.word	4
	.word	_Label_1564
	.word	-36
	.word	4
	.word	_Label_1565
	.word	-40
	.word	4
	.word	_Label_1566
	.word	-44
	.word	4
	.word	_Label_1567
	.word	-48
	.word	4
	.word	_Label_1568
	.word	-52
	.word	4
	.word	0
_Label_1556:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1557:
	.ascii	"Pself\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1568:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3184:
	push	r0
	sub	r1,1,r1
	bne	_Label_3184
	mov	1021,r13		! source line 1021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0SE",r10
!   _temp_1569 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0IF",r10
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1572 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1570 else goto _Label_1571
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1571
	jmp	_Label_1570
_Label_1570:
! THEN...
	mov	1032,r13		! source line 1032
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1573 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1574 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1573  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1571:
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
	mov	1036,r13		! source line 1036
	mov	"\0\0SE",r10
!   _temp_1575 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pointerToProcessControlBlock  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
!   if intIsZero (pointerToProcessControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1576 = pointerToProcessControlBlock + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1576 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0AS",r10
!   if intIsZero (pointerToProcessControlBlock) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1577 = pointerToProcessControlBlock + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1577 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1578 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0RE",r10
!   ReturnResult: pointerToProcessControlBlock  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1579
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1580
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1581
	.word	-12
	.word	4
	.word	_Label_1582
	.word	-16
	.word	4
	.word	_Label_1583
	.word	-20
	.word	4
	.word	_Label_1584
	.word	-24
	.word	4
	.word	_Label_1585
	.word	-28
	.word	4
	.word	_Label_1586
	.word	-32
	.word	4
	.word	_Label_1587
	.word	-36
	.word	4
	.word	_Label_1588
	.word	-40
	.word	4
	.word	_Label_1589
	.word	-44
	.word	4
	.word	0
_Label_1579:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1580:
	.ascii	"Pself\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1589:
	.byte	'P'
	.ascii	"pointerToProcessControlBlock\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3185:
	push	r0
	sub	r1,1,r1
	bne	_Label_3185
	mov	1051,r13		! source line 1051
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1590 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1591 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1591 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0SE",r10
!   _temp_1592 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1593 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1594 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1593  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1595 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1596
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1597
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1598
	.word	12
	.word	4
	.word	_Label_1599
	.word	-12
	.word	4
	.word	_Label_1600
	.word	-16
	.word	4
	.word	_Label_1601
	.word	-20
	.word	4
	.word	_Label_1602
	.word	-24
	.word	4
	.word	_Label_1603
	.word	-28
	.word	4
	.word	_Label_1604
	.word	-32
	.word	4
	.word	0
_Label_1596:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1597:
	.ascii	"Pself\0"
	.align
_Label_1598:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1605
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1605:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1606
	.word	_sourceFileName
	.word	271		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1606:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3186:
	push	r0
	sub	r1,1,r1
	bne	_Label_3186
	mov	1155,r13		! source line 1155
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1607 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1607  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1609 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   _temp_1611 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_1613 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1618 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1619 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1618  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1614:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1619 then goto _Label_1617		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1617
_Label_1615:
	mov	1174,r13		! source line 1174
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1622 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1622) then goto _Label_1621
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1621
!	jmp	_Label_1620
_Label_1620:
! THEN...
	mov	1178,r13		! source line 1178
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1623 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1623  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1178,r13		! source line 1178
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1621:
!   Increment the FOR-LOOP index variable and jump back
_Label_1616:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1614
! END FOR
_Label_1617:
! RETURN STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1624
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1625
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1626
	.word	-12
	.word	4
	.word	_Label_1627
	.word	-16
	.word	4
	.word	_Label_1628
	.word	-20
	.word	4
	.word	_Label_1629
	.word	-24
	.word	4
	.word	_Label_1630
	.word	-28
	.word	4
	.word	_Label_1631
	.word	-32
	.word	4
	.word	_Label_1632
	.word	-36
	.word	4
	.word	_Label_1633
	.word	-40
	.word	4
	.word	_Label_1634
	.word	-44
	.word	4
	.word	_Label_1635
	.word	-48
	.word	4
	.word	_Label_1636
	.word	-52
	.word	4
	.word	_Label_1637
	.word	-56
	.word	4
	.word	0
_Label_1624:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1625:
	.ascii	"Pself\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3187:
	push	r0
	sub	r1,1,r1
	bne	_Label_3187
	mov	1185,r13		! source line 1185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   _temp_1638 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1639 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1190,r13		! source line 1190
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1640 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1640  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1641 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1642 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0SE",r10
!   _temp_1643 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1644
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1645
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1646
	.word	-12
	.word	4
	.word	_Label_1647
	.word	-16
	.word	4
	.word	_Label_1648
	.word	-20
	.word	4
	.word	_Label_1649
	.word	-24
	.word	4
	.word	_Label_1650
	.word	-28
	.word	4
	.word	_Label_1651
	.word	-32
	.word	4
	.word	0
_Label_1644:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1645:
	.ascii	"Pself\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3188:
	push	r0
	sub	r1,1,r1
	bne	_Label_3188
	mov	1199,r13		! source line 1199
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0SE",r10
!   _temp_1652 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0WH",r10
_Label_1653:
!   if numberFreeFrames >= 1 then goto _Label_1655		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1655
!	jmp	_Label_1654
_Label_1654:
	mov	1210,r13		! source line 1210
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
!   _temp_1656 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1657 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1656  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1653
_Label_1655:
! ASSIGNMENT STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0AS",r10
	mov	1215,r13		! source line 1215
	mov	"\0\0SE",r10
!   _temp_1658 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_1659 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0AS",r10
!   _temp_1660 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1660		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1661
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1662
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1663
	.word	-12
	.word	4
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-24
	.word	4
	.word	_Label_1667
	.word	-28
	.word	4
	.word	_Label_1668
	.word	-32
	.word	4
	.word	_Label_1669
	.word	-36
	.word	4
	.word	_Label_1670
	.word	-40
	.word	4
	.word	0
_Label_1661:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1662:
	.ascii	"Pself\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1669:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1670:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	18,r1
_Label_3189:
	push	r0
	sub	r1,1,r1
	bne	_Label_3189
	mov	1229,r13		! source line 1229
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_1671 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0WH",r10
_Label_1672:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1674		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1674
!	jmp	_Label_1673
_Label_1673:
	mov	1239,r13		! source line 1239
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0SE",r10
!   _temp_1675 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1676 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1675  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1672
_Label_1674:
! FOR STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1681 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1682 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1681  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1677:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1682 then goto _Label_1680		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1680
_Label_1678:
	mov	1246,r13		! source line 1246
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0AS",r10
	mov	1247,r13		! source line 1247
	mov	"\0\0SE",r10
!   _temp_1683 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message FindZeroAndSet
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0AS",r10
!   _temp_1684 = f * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameAddr = 1048576 + _temp_1684		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1249,r13		! source line 1249
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1679:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1677
! END FOR
_Label_1680:
! ASSIGNMENT STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1685 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1688 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1687 = *_temp_1688  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1686 = _temp_1687 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1685 = _temp_1686  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0SE",r10
!   _temp_1689 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1690
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1692
	.word	12
	.word	4
	.word	_Label_1693
	.word	16
	.word	4
	.word	_Label_1694
	.word	-12
	.word	4
	.word	_Label_1695
	.word	-16
	.word	4
	.word	_Label_1696
	.word	-20
	.word	4
	.word	_Label_1697
	.word	-24
	.word	4
	.word	_Label_1698
	.word	-28
	.word	4
	.word	_Label_1699
	.word	-32
	.word	4
	.word	_Label_1700
	.word	-36
	.word	4
	.word	_Label_1701
	.word	-40
	.word	4
	.word	_Label_1702
	.word	-44
	.word	4
	.word	_Label_1703
	.word	-48
	.word	4
	.word	_Label_1704
	.word	-52
	.word	4
	.word	_Label_1705
	.word	-56
	.word	4
	.word	_Label_1706
	.word	-60
	.word	4
	.word	_Label_1707
	.word	-64
	.word	4
	.word	_Label_1708
	.word	-68
	.word	4
	.word	0
_Label_1690:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1691:
	.ascii	"Pself\0"
	.align
_Label_1692:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1693:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1706:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1707:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1708:
	.byte	'I'
	.ascii	"f\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	19,r1
_Label_3190:
	push	r0
	sub	r1,1,r1
	bne	_Label_3190
	mov	1264,r13		! source line 1264
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0SE",r10
!   _temp_1709 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1710 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: numFramesToReturn = *_temp_1710  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1715 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1716 = numFramesToReturn - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1715  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1711:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1716 then goto _Label_1714		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1714
_Label_1712:
	mov	1279,r13		! source line 1279
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0AS",r10
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0AS",r10
!   _temp_1717 = frameAddr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bitNumber = _temp_1717 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0SE",r10
!   _temp_1718 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1713:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1711
! END FOR
_Label_1714:
! SEND STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0SE",r10
!   _temp_1719 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1720 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1719  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1721 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1724 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1723 = *_temp_1724  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1722 = _temp_1723 - numFramesToReturn		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1721 = _temp_1722  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0SE",r10
!   _temp_1725 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1726
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1727
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1728
	.word	12
	.word	4
	.word	_Label_1729
	.word	-12
	.word	4
	.word	_Label_1730
	.word	-16
	.word	4
	.word	_Label_1731
	.word	-20
	.word	4
	.word	_Label_1732
	.word	-24
	.word	4
	.word	_Label_1733
	.word	-28
	.word	4
	.word	_Label_1734
	.word	-32
	.word	4
	.word	_Label_1735
	.word	-36
	.word	4
	.word	_Label_1736
	.word	-40
	.word	4
	.word	_Label_1737
	.word	-44
	.word	4
	.word	_Label_1738
	.word	-48
	.word	4
	.word	_Label_1739
	.word	-52
	.word	4
	.word	_Label_1740
	.word	-56
	.word	4
	.word	_Label_1741
	.word	-60
	.word	4
	.word	_Label_1742
	.word	-64
	.word	4
	.word	_Label_1743
	.word	-68
	.word	4
	.word	_Label_1744
	.word	-72
	.word	4
	.word	_Label_1745
	.word	-76
	.word	4
	.word	0
_Label_1726:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1727:
	.ascii	"Pself\0"
	.align
_Label_1728:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1742:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1743:
	.byte	'I'
	.ascii	"numFramesToReturn\0"
	.align
_Label_1744:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1745:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1746
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1746:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1747
	.word	_sourceFileName
	.word	290		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1747:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3191:
	push	r0
	sub	r1,1,r1
	bne	_Label_3191
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0AS",r10
!   _temp_1748 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1750 = &_temp_1749
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1750 = _temp_1750 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1752:
!   Data Move: *_temp_1750 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1750 = _temp_1750 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1751 = _temp_1751 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1751) then goto _Label_1752
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1752
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1753 = &_temp_1749
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3192
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3192:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1748 = *_temp_1753  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3193:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3193
! RETURN STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1754
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1755
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1756
	.word	-12
	.word	4
	.word	_Label_1757
	.word	-16
	.word	4
	.word	_Label_1758
	.word	-20
	.word	4
	.word	_Label_1759
	.word	-104
	.word	84
	.word	_Label_1760
	.word	-108
	.word	4
	.word	0
_Label_1754:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1755:
	.ascii	"Pself\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3194:
	push	r0
	sub	r1,1,r1
	bne	_Label_3194
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1761 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1761  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1317,r13		! source line 1317
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1762 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1762  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1318,r13		! source line 1318
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1767 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1768 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1767  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1763:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1768 then goto _Label_1766		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1766
_Label_1764:
	mov	1319,r13		! source line 1319
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1769 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1769  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1320,r13		! source line 1320
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1771 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1771 [i ] into _temp_1772
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1770 = _temp_1772		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1770  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1321,r13		! source line 1321
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1773 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1773  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1322,r13		! source line 1322
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1775 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1775 [i ] into _temp_1776
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1774 = *_temp_1776  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1774  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1323,r13		! source line 1323
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1777 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1777  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1324,r13		! source line 1324
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1778 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1325,r13		! source line 1325
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1779 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1779  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1326,r13		! source line 1326
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1781) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1780  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1780  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1327,r13		! source line 1327
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1782 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1782  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1328,r13		! source line 1328
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0IF",r10
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1786) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1785  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1785) then goto _Label_1784
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1784
!	jmp	_Label_1783
_Label_1783:
! THEN...
	mov	1330,r13		! source line 1330
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1788) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1787  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1787  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1330,r13		! source line 1330
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1789
_Label_1784:
! ELSE...
	mov	1332,r13		! source line 1332
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1790 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1790  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1332,r13		! source line 1332
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1789:
! CALL STATEMENT...
!   _temp_1791 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1334,r13		! source line 1334
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0IF",r10
	mov	1335,r13		! source line 1335
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1794) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1792 else goto _Label_1793
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1793
	jmp	_Label_1792
_Label_1792:
! THEN...
	mov	1336,r13		! source line 1336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1795 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1795  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1336,r13		! source line 1336
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1796
_Label_1793:
! ELSE...
	mov	1338,r13		! source line 1338
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1797 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1797  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1338,r13		! source line 1338
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1796:
! CALL STATEMENT...
!   _temp_1798 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0IF",r10
	mov	1341,r13		! source line 1341
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1801) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1799 else goto _Label_1800
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1800
	jmp	_Label_1799
_Label_1799:
! THEN...
	mov	1342,r13		! source line 1342
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1802 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1802  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1342,r13		! source line 1342
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1803
_Label_1800:
! ELSE...
	mov	1344,r13		! source line 1344
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1804 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1344,r13		! source line 1344
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1803:
! CALL STATEMENT...
!   _temp_1805 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1346,r13		! source line 1346
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0IF",r10
	mov	1347,r13		! source line 1347
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1808) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1806 else goto _Label_1807
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1807
	jmp	_Label_1806
_Label_1806:
! THEN...
	mov	1348,r13		! source line 1348
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1809 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1809  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1348,r13		! source line 1348
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1810
_Label_1807:
! ELSE...
	mov	1350,r13		! source line 1350
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1811 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1811  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1350,r13		! source line 1350
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1810:
! CALL STATEMENT...
!   _temp_1812 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1812  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1352,r13		! source line 1352
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0IF",r10
	mov	1353,r13		! source line 1353
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1815) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1813 else goto _Label_1814
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1814
	jmp	_Label_1813
_Label_1813:
! THEN...
	mov	1354,r13		! source line 1354
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1816 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1816  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1354,r13		! source line 1354
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1817
_Label_1814:
! ELSE...
	mov	1356,r13		! source line 1356
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1818 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1818  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1356,r13		! source line 1356
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1817:
! CALL STATEMENT...
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1765:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1763
! END FOR
_Label_1766:
! RETURN STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1819
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1820
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1821
	.word	-12
	.word	4
	.word	_Label_1822
	.word	-16
	.word	4
	.word	_Label_1823
	.word	-20
	.word	4
	.word	_Label_1824
	.word	-24
	.word	4
	.word	_Label_1825
	.word	-28
	.word	4
	.word	_Label_1826
	.word	-32
	.word	4
	.word	_Label_1827
	.word	-36
	.word	4
	.word	_Label_1828
	.word	-40
	.word	4
	.word	_Label_1829
	.word	-44
	.word	4
	.word	_Label_1830
	.word	-48
	.word	4
	.word	_Label_1831
	.word	-52
	.word	4
	.word	_Label_1832
	.word	-56
	.word	4
	.word	_Label_1833
	.word	-60
	.word	4
	.word	_Label_1834
	.word	-64
	.word	4
	.word	_Label_1835
	.word	-68
	.word	4
	.word	_Label_1836
	.word	-72
	.word	4
	.word	_Label_1837
	.word	-76
	.word	4
	.word	_Label_1838
	.word	-80
	.word	4
	.word	_Label_1839
	.word	-84
	.word	4
	.word	_Label_1840
	.word	-88
	.word	4
	.word	_Label_1841
	.word	-92
	.word	4
	.word	_Label_1842
	.word	-96
	.word	4
	.word	_Label_1843
	.word	-100
	.word	4
	.word	_Label_1844
	.word	-104
	.word	4
	.word	_Label_1845
	.word	-108
	.word	4
	.word	_Label_1846
	.word	-112
	.word	4
	.word	_Label_1847
	.word	-116
	.word	4
	.word	_Label_1848
	.word	-120
	.word	4
	.word	_Label_1849
	.word	-124
	.word	4
	.word	_Label_1850
	.word	-128
	.word	4
	.word	_Label_1851
	.word	-132
	.word	4
	.word	_Label_1852
	.word	-136
	.word	4
	.word	_Label_1853
	.word	-140
	.word	4
	.word	_Label_1854
	.word	-144
	.word	4
	.word	_Label_1855
	.word	-148
	.word	4
	.word	_Label_1856
	.word	-152
	.word	4
	.word	_Label_1857
	.word	-156
	.word	4
	.word	_Label_1858
	.word	-160
	.word	4
	.word	_Label_1859
	.word	-164
	.word	4
	.word	_Label_1860
	.word	-168
	.word	4
	.word	0
_Label_1819:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1820:
	.ascii	"Pself\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1860:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3195:
	push	r0
	sub	r1,1,r1
	bne	_Label_3195
	mov	1364,r13		! source line 1364
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0RE",r10
!   _temp_1863 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1863 [entry ] into _temp_1864
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1862 = *_temp_1864  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1861 = _temp_1862 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1861  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1865
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1867
	.word	12
	.word	4
	.word	_Label_1868
	.word	-12
	.word	4
	.word	_Label_1869
	.word	-16
	.word	4
	.word	_Label_1870
	.word	-20
	.word	4
	.word	_Label_1871
	.word	-24
	.word	4
	.word	0
_Label_1865:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1866:
	.ascii	"Pself\0"
	.align
_Label_1867:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3196:
	push	r0
	sub	r1,1,r1
	bne	_Label_3196
	mov	1374,r13		! source line 1374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0RE",r10
!   _temp_1874 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1874 [entry ] into _temp_1875
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1873 = *_temp_1875  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1872 = _temp_1873 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1872  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1876
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1878
	.word	12
	.word	4
	.word	_Label_1879
	.word	-12
	.word	4
	.word	_Label_1880
	.word	-16
	.word	4
	.word	_Label_1881
	.word	-20
	.word	4
	.word	_Label_1882
	.word	-24
	.word	4
	.word	0
_Label_1876:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1877:
	.ascii	"Pself\0"
	.align
_Label_1878:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3197:
	push	r0
	sub	r1,1,r1
	bne	_Label_3197
	mov	1383,r13		! source line 1383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_1883 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1883 [entry ] into _temp_1884
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1888 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1888 [entry ] into _temp_1889
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1887 = *_temp_1889  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1886 = _temp_1887 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1885 = _temp_1886 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1884 = _temp_1885  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1890
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1892
	.word	12
	.word	4
	.word	_Label_1893
	.word	16
	.word	4
	.word	_Label_1894
	.word	-12
	.word	4
	.word	_Label_1895
	.word	-16
	.word	4
	.word	_Label_1896
	.word	-20
	.word	4
	.word	_Label_1897
	.word	-24
	.word	4
	.word	_Label_1898
	.word	-28
	.word	4
	.word	_Label_1899
	.word	-32
	.word	4
	.word	_Label_1900
	.word	-36
	.word	4
	.word	0
_Label_1890:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1891:
	.ascii	"Pself\0"
	.align
_Label_1892:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1893:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3198:
	push	r0
	sub	r1,1,r1
	bne	_Label_3198
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0RE",r10
!   _temp_1904 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1904 [entry ] into _temp_1905
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1903 = *_temp_1905  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1902 = _temp_1903 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1902) then goto _Label_1906
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1906
!   _temp_1901 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1907
_Label_1906:
!   _temp_1901 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1907:
!   ReturnResult: _temp_1901  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1908
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1909
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1910
	.word	12
	.word	4
	.word	_Label_1911
	.word	-16
	.word	4
	.word	_Label_1912
	.word	-20
	.word	4
	.word	_Label_1913
	.word	-24
	.word	4
	.word	_Label_1914
	.word	-28
	.word	4
	.word	_Label_1915
	.word	-9
	.word	1
	.word	0
_Label_1908:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1909:
	.ascii	"Pself\0"
	.align
_Label_1910:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1915:
	.byte	'C'
	.ascii	"_temp_1901\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3199:
	push	r0
	sub	r1,1,r1
	bne	_Label_3199
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0RE",r10
!   _temp_1919 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1919 [entry ] into _temp_1920
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1918 = *_temp_1920  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1917 = _temp_1918 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1917) then goto _Label_1921
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1921
!   _temp_1916 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1922
_Label_1921:
!   _temp_1916 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1922:
!   ReturnResult: _temp_1916  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1923
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1925
	.word	12
	.word	4
	.word	_Label_1926
	.word	-16
	.word	4
	.word	_Label_1927
	.word	-20
	.word	4
	.word	_Label_1928
	.word	-24
	.word	4
	.word	_Label_1929
	.word	-28
	.word	4
	.word	_Label_1930
	.word	-9
	.word	1
	.word	0
_Label_1923:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1924:
	.ascii	"Pself\0"
	.align
_Label_1925:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1930:
	.byte	'C'
	.ascii	"_temp_1916\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3200:
	push	r0
	sub	r1,1,r1
	bne	_Label_3200
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0RE",r10
!   _temp_1934 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1934 [entry ] into _temp_1935
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1933 = *_temp_1935  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1932 = _temp_1933 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1932) then goto _Label_1936
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1936
!   _temp_1931 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1937
_Label_1936:
!   _temp_1931 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1937:
!   ReturnResult: _temp_1931  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1938
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1939
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1940
	.word	12
	.word	4
	.word	_Label_1941
	.word	-16
	.word	4
	.word	_Label_1942
	.word	-20
	.word	4
	.word	_Label_1943
	.word	-24
	.word	4
	.word	_Label_1944
	.word	-28
	.word	4
	.word	_Label_1945
	.word	-9
	.word	1
	.word	0
_Label_1938:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1939:
	.ascii	"Pself\0"
	.align
_Label_1940:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1945:
	.byte	'C'
	.ascii	"_temp_1931\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3201:
	push	r0
	sub	r1,1,r1
	bne	_Label_3201
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
!   _temp_1949 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1949 [entry ] into _temp_1950
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1948 = *_temp_1950  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1947 = _temp_1948 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1947) then goto _Label_1951
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1951
!   _temp_1946 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1952
_Label_1951:
!   _temp_1946 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1952:
!   ReturnResult: _temp_1946  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1953
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1955
	.word	12
	.word	4
	.word	_Label_1956
	.word	-16
	.word	4
	.word	_Label_1957
	.word	-20
	.word	4
	.word	_Label_1958
	.word	-24
	.word	4
	.word	_Label_1959
	.word	-28
	.word	4
	.word	_Label_1960
	.word	-9
	.word	1
	.word	0
_Label_1953:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1954:
	.ascii	"Pself\0"
	.align
_Label_1955:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1960:
	.byte	'C'
	.ascii	"_temp_1946\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3202:
	push	r0
	sub	r1,1,r1
	bne	_Label_3202
	mov	1429,r13		! source line 1429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   _temp_1961 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1961 [entry ] into _temp_1962
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1965 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1965 [entry ] into _temp_1966
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1964 = *_temp_1966  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1963 = _temp_1964 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1962 = _temp_1963  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1967
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1968
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1969
	.word	12
	.word	4
	.word	_Label_1970
	.word	-12
	.word	4
	.word	_Label_1971
	.word	-16
	.word	4
	.word	_Label_1972
	.word	-20
	.word	4
	.word	_Label_1973
	.word	-24
	.word	4
	.word	_Label_1974
	.word	-28
	.word	4
	.word	_Label_1975
	.word	-32
	.word	4
	.word	0
_Label_1967:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1968:
	.ascii	"Pself\0"
	.align
_Label_1969:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3203:
	push	r0
	sub	r1,1,r1
	bne	_Label_3203
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   _temp_1976 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1976 [entry ] into _temp_1977
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1980 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1980 [entry ] into _temp_1981
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1979 = *_temp_1981  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1978 = _temp_1979 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1977 = _temp_1978  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1982
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1984
	.word	12
	.word	4
	.word	_Label_1985
	.word	-12
	.word	4
	.word	_Label_1986
	.word	-16
	.word	4
	.word	_Label_1987
	.word	-20
	.word	4
	.word	_Label_1988
	.word	-24
	.word	4
	.word	_Label_1989
	.word	-28
	.word	4
	.word	_Label_1990
	.word	-32
	.word	4
	.word	0
_Label_1982:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1983:
	.ascii	"Pself\0"
	.align
_Label_1984:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3204:
	push	r0
	sub	r1,1,r1
	bne	_Label_3204
	mov	1447,r13		! source line 1447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   _temp_1991 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1991 [entry ] into _temp_1992
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1995 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1995 [entry ] into _temp_1996
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1994 = *_temp_1996  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1993 = _temp_1994 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1992 = _temp_1993  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1997
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1999
	.word	12
	.word	4
	.word	_Label_2000
	.word	-12
	.word	4
	.word	_Label_2001
	.word	-16
	.word	4
	.word	_Label_2002
	.word	-20
	.word	4
	.word	_Label_2003
	.word	-24
	.word	4
	.word	_Label_2004
	.word	-28
	.word	4
	.word	_Label_2005
	.word	-32
	.word	4
	.word	0
_Label_1997:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1998:
	.ascii	"Pself\0"
	.align
_Label_1999:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3205:
	push	r0
	sub	r1,1,r1
	bne	_Label_3205
	mov	1456,r13		! source line 1456
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0AS",r10
!   _temp_2006 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2006 [entry ] into _temp_2007
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2010 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2010 [entry ] into _temp_2011
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2009 = *_temp_2011  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2008 = _temp_2009 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2007 = _temp_2008  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2012
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2014
	.word	12
	.word	4
	.word	_Label_2015
	.word	-12
	.word	4
	.word	_Label_2016
	.word	-16
	.word	4
	.word	_Label_2017
	.word	-20
	.word	4
	.word	_Label_2018
	.word	-24
	.word	4
	.word	_Label_2019
	.word	-28
	.word	4
	.word	_Label_2020
	.word	-32
	.word	4
	.word	0
_Label_2012:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2013:
	.ascii	"Pself\0"
	.align
_Label_2014:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3206:
	push	r0
	sub	r1,1,r1
	bne	_Label_3206
	mov	1465,r13		! source line 1465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0AS",r10
!   _temp_2021 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2021 [entry ] into _temp_2022
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2025 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2025 [entry ] into _temp_2026
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2024 = *_temp_2026  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2023 = _temp_2024 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2022 = _temp_2023  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2027
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2029
	.word	12
	.word	4
	.word	_Label_2030
	.word	-12
	.word	4
	.word	_Label_2031
	.word	-16
	.word	4
	.word	_Label_2032
	.word	-20
	.word	4
	.word	_Label_2033
	.word	-24
	.word	4
	.word	_Label_2034
	.word	-28
	.word	4
	.word	_Label_2035
	.word	-32
	.word	4
	.word	0
_Label_2027:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2028:
	.ascii	"Pself\0"
	.align
_Label_2029:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3207:
	push	r0
	sub	r1,1,r1
	bne	_Label_3207
	mov	1474,r13		! source line 1474
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   _temp_2036 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2036 [entry ] into _temp_2037
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2040 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2040 [entry ] into _temp_2041
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2039 = *_temp_2041  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2038 = _temp_2039 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2037 = _temp_2038  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2042
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2043
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2044
	.word	12
	.word	4
	.word	_Label_2045
	.word	-12
	.word	4
	.word	_Label_2046
	.word	-16
	.word	4
	.word	_Label_2047
	.word	-20
	.word	4
	.word	_Label_2048
	.word	-24
	.word	4
	.word	_Label_2049
	.word	-28
	.word	4
	.word	_Label_2050
	.word	-32
	.word	4
	.word	0
_Label_2042:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2043:
	.ascii	"Pself\0"
	.align
_Label_2044:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3208:
	push	r0
	sub	r1,1,r1
	bne	_Label_3208
	mov	1483,r13		! source line 1483
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
!   _temp_2051 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2051 [entry ] into _temp_2052
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2055 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2055 [entry ] into _temp_2056
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2054 = *_temp_2056  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2053 = _temp_2054 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2052 = _temp_2053  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2057
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2058
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2059
	.word	12
	.word	4
	.word	_Label_2060
	.word	-12
	.word	4
	.word	_Label_2061
	.word	-16
	.word	4
	.word	_Label_2062
	.word	-20
	.word	4
	.word	_Label_2063
	.word	-24
	.word	4
	.word	_Label_2064
	.word	-28
	.word	4
	.word	_Label_2065
	.word	-32
	.word	4
	.word	0
_Label_2057:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2058:
	.ascii	"Pself\0"
	.align
_Label_2059:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3209:
	push	r0
	sub	r1,1,r1
	bne	_Label_3209
	mov	1492,r13		! source line 1492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   _temp_2066 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2066 [entry ] into _temp_2067
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2070 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2070 [entry ] into _temp_2071
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2069 = *_temp_2071  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2068 = _temp_2069 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2067 = _temp_2068  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2072
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2073
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2074
	.word	12
	.word	4
	.word	_Label_2075
	.word	-12
	.word	4
	.word	_Label_2076
	.word	-16
	.word	4
	.word	_Label_2077
	.word	-20
	.word	4
	.word	_Label_2078
	.word	-24
	.word	4
	.word	_Label_2079
	.word	-28
	.word	4
	.word	_Label_2080
	.word	-32
	.word	4
	.word	0
_Label_2072:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2073:
	.ascii	"Pself\0"
	.align
_Label_2074:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3210:
	push	r0
	sub	r1,1,r1
	bne	_Label_3210
	mov	1501,r13		! source line 1501
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2082 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2082 [0 ] into _temp_2083
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2081 = _temp_2083		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2084 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2081  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2084  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1507,r13		! source line 1507
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2085
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2087
	.word	-12
	.word	4
	.word	_Label_2088
	.word	-16
	.word	4
	.word	_Label_2089
	.word	-20
	.word	4
	.word	_Label_2090
	.word	-24
	.word	4
	.word	0
_Label_2085:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2086:
	.ascii	"Pself\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3211:
	push	r0
	sub	r1,1,r1
	bne	_Label_3211
	mov	1512,r13		! source line 1512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2091
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2091
	jmp	_Label_2092
_Label_2091:
! THEN...
	mov	1528,r13		! source line 1528
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2093
_Label_2092:
! ELSE...
	mov	1529,r13		! source line 1529
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2095		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2095
!	jmp	_Label_2094
_Label_2094:
! THEN...
	mov	1530,r13		! source line 1530
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2095:
! END IF...
_Label_2093:
! ASSIGNMENT STATEMENT...
	mov	1532,r13		! source line 1532
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0WH",r10
_Label_2096:
!	jmp	_Label_2097
_Label_2097:
	mov	1536,r13		! source line 1536
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2100		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2100
!	jmp	_Label_2099
_Label_2099:
! THEN...
	mov	1538,r13		! source line 1538
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2101 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1538,r13		! source line 1538
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2100:
! IF STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0IF",r10
	mov	1541,r13		! source line 1541
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2105) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2104  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2104 then goto _Label_2103 else goto _Label_2102
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2102
	jmp	_Label_2103
_Label_2102:
! THEN...
	mov	1542,r13		! source line 1542
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2106 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2106  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1542,r13		! source line 1542
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2103:
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
	mov	1545,r13		! source line 1545
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2108) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2107  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2107 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0WH",r10
_Label_2109:
!   if offset >= 8192 then goto _Label_2111		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2111
!	jmp	_Label_2110
_Label_2110:
	mov	1547,r13		! source line 1547
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2112 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2112  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1555,r13		! source line 1555
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2114		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2114
!	jmp	_Label_2113
_Label_2113:
! THEN...
	mov	1556,r13		! source line 1556
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2114:
! END WHILE...
	jmp	_Label_2109
_Label_2111:
! ASSIGNMENT STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2096
_Label_2098:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2115
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2116
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2117
	.word	12
	.word	4
	.word	_Label_2118
	.word	16
	.word	4
	.word	_Label_2119
	.word	20
	.word	4
	.word	_Label_2120
	.word	-9
	.word	1
	.word	_Label_2121
	.word	-16
	.word	4
	.word	_Label_2122
	.word	-20
	.word	4
	.word	_Label_2123
	.word	-24
	.word	4
	.word	_Label_2124
	.word	-28
	.word	4
	.word	_Label_2125
	.word	-10
	.word	1
	.word	_Label_2126
	.word	-32
	.word	4
	.word	_Label_2127
	.word	-36
	.word	4
	.word	_Label_2128
	.word	-40
	.word	4
	.word	_Label_2129
	.word	-44
	.word	4
	.word	_Label_2130
	.word	-48
	.word	4
	.word	0
_Label_2115:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2116:
	.ascii	"Pself\0"
	.align
_Label_2117:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2118:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2119:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2120:
	.byte	'C'
	.ascii	"_temp_2112\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2125:
	.byte	'C'
	.ascii	"_temp_2104\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2127:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2128:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2129:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2130:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3212:
	push	r0
	sub	r1,1,r1
	bne	_Label_3212
	mov	1566,r13		! source line 1566
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2131
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2131
	jmp	_Label_2132
_Label_2131:
! THEN...
	mov	1578,r13		! source line 1578
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2133
_Label_2132:
! ELSE...
	mov	1579,r13		! source line 1579
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2135		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2135
!	jmp	_Label_2134
_Label_2134:
! THEN...
	mov	1580,r13		! source line 1580
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2135:
! END IF...
_Label_2133:
! ASSIGNMENT STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0WH",r10
_Label_2136:
!	jmp	_Label_2137
_Label_2137:
	mov	1584,r13		! source line 1584
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2142		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2142
	jmp	_Label_2139
_Label_2142:
	mov	1586,r13		! source line 1586
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2144) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2143  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2143 then goto _Label_2141 else goto _Label_2139
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2139
	jmp	_Label_2141
_Label_2141:
	mov	1587,r13		! source line 1587
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2146) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2145  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2145 then goto _Label_2140 else goto _Label_2139
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2139
	jmp	_Label_2140
_Label_2139:
! THEN...
	mov	1588,r13		! source line 1588
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2140:
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
	mov	1590,r13		! source line 1590
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2148) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2147  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2147 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0WH",r10
_Label_2149:
!   if offset >= 8192 then goto _Label_2151		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2151
!	jmp	_Label_2150
_Label_2150:
	mov	1591,r13		! source line 1591
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2152 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2152  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2154		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2154
!	jmp	_Label_2153
_Label_2153:
! THEN...
	mov	1598,r13		! source line 1598
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2154:
! END WHILE...
	jmp	_Label_2149
_Label_2151:
! ASSIGNMENT STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2136
_Label_2138:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2155
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2156
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2157
	.word	12
	.word	4
	.word	_Label_2158
	.word	16
	.word	4
	.word	_Label_2159
	.word	20
	.word	4
	.word	_Label_2160
	.word	-9
	.word	1
	.word	_Label_2161
	.word	-16
	.word	4
	.word	_Label_2162
	.word	-20
	.word	4
	.word	_Label_2163
	.word	-24
	.word	4
	.word	_Label_2164
	.word	-10
	.word	1
	.word	_Label_2165
	.word	-28
	.word	4
	.word	_Label_2166
	.word	-11
	.word	1
	.word	_Label_2167
	.word	-32
	.word	4
	.word	_Label_2168
	.word	-36
	.word	4
	.word	_Label_2169
	.word	-40
	.word	4
	.word	_Label_2170
	.word	-44
	.word	4
	.word	0
_Label_2155:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2156:
	.ascii	"Pself\0"
	.align
_Label_2157:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2158:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2159:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2160:
	.byte	'C'
	.ascii	"_temp_2152\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2164:
	.byte	'C'
	.ascii	"_temp_2145\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2166:
	.byte	'C'
	.ascii	"_temp_2143\0"
	.align
_Label_2167:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2168:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2169:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2170:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3213:
	push	r0
	sub	r1,1,r1
	bne	_Label_3213
	mov	1608,r13		! source line 1608
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0IF",r10
	mov	1632,r13		! source line 1632
	mov	"\0\0SE",r10
!   _temp_2174 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2175) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2174  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2173  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2173 >= 4 then goto _Label_2172		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2172
!	jmp	_Label_2171
_Label_2171:
! THEN...
	mov	1635,r13		! source line 1635
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2172:
! IF STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2177		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2177
!	jmp	_Label_2176
_Label_2176:
! THEN...
	mov	1640,r13		! source line 1640
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2177:
! ASSIGNMENT STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0RE",r10
	mov	1645,r13		! source line 1645
	mov	"\0\0SE",r10
!   _temp_2180 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2179 = _temp_2180 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2181 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2182) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2179  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2181  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2178  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2178  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2183
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2184
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2185
	.word	12
	.word	4
	.word	_Label_2186
	.word	16
	.word	4
	.word	_Label_2187
	.word	20
	.word	4
	.word	_Label_2188
	.word	-12
	.word	4
	.word	_Label_2189
	.word	-16
	.word	4
	.word	_Label_2190
	.word	-20
	.word	4
	.word	_Label_2191
	.word	-24
	.word	4
	.word	_Label_2192
	.word	-28
	.word	4
	.word	_Label_2193
	.word	-32
	.word	4
	.word	_Label_2194
	.word	-36
	.word	4
	.word	_Label_2195
	.word	-40
	.word	4
	.word	_Label_2196
	.word	-44
	.word	4
	.word	0
_Label_2183:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2184:
	.ascii	"Pself\0"
	.align
_Label_2185:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2186:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2187:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2196:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2197
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2197:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2198
	.word	_sourceFileName
	.word	323		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2198:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3214:
	push	r0
	sub	r1,1,r1
	bne	_Label_3214
	mov	2117,r13		! source line 2117
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2199 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2118,r13		! source line 2118
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0SE",r10
!   _temp_2201 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_2203 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2204
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2205
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2206
	.word	-12
	.word	4
	.word	_Label_2207
	.word	-16
	.word	4
	.word	_Label_2208
	.word	-20
	.word	4
	.word	_Label_2209
	.word	-24
	.word	4
	.word	_Label_2210
	.word	-28
	.word	4
	.word	0
_Label_2204:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2205:
	.ascii	"Pself\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3215:
	push	r0
	sub	r1,1,r1
	bne	_Label_3215
	mov	2133,r13		! source line 2133
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0SE",r10
!   _temp_2211 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0WH",r10
_Label_2212:
!	jmp	_Label_2213
_Label_2213:
	mov	2147,r13		! source line 2147
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0SE",r10
!   _temp_2215 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2216) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2215  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0SE",r10
!   _temp_2217 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2154,r13		! source line 2154
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2226 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2220
	cmp	r1,2
	be	_Label_2221
	cmp	r1,3
	be	_Label_2222
	cmp	r1,4
	be	_Label_2223
	cmp	r1,5
	be	_Label_2224
	cmp	r1,6
	be	_Label_2225
	jmp	_Label_2218
! CASE 1...
_Label_2220:
! SEND STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_2227 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2221:
! CALL STATEMENT...
!   _temp_2228 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2228  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2159,r13		! source line 2159
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2222:
! CALL STATEMENT...
!   _temp_2229 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2229  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2161,r13		! source line 2161
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2223:
! CALL STATEMENT...
!   _temp_2230 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2230  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2163,r13		! source line 2163
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2224:
! BREAK STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0BR",r10
	jmp	_Label_2219
! CASE 6...
_Label_2225:
! CALL STATEMENT...
!   _temp_2231 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2231  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2169,r13		! source line 2169
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2218:
! CALL STATEMENT...
!   _temp_2232 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2232  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2171,r13		! source line 2171
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2219:
! END WHILE...
	jmp	_Label_2212
_Label_2214:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2233
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2234
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2235
	.word	12
	.word	4
	.word	_Label_2236
	.word	16
	.word	4
	.word	_Label_2237
	.word	20
	.word	4
	.word	_Label_2238
	.word	-12
	.word	4
	.word	_Label_2239
	.word	-16
	.word	4
	.word	_Label_2240
	.word	-20
	.word	4
	.word	_Label_2241
	.word	-24
	.word	4
	.word	_Label_2242
	.word	-28
	.word	4
	.word	_Label_2243
	.word	-32
	.word	4
	.word	_Label_2244
	.word	-36
	.word	4
	.word	_Label_2245
	.word	-40
	.word	4
	.word	_Label_2246
	.word	-44
	.word	4
	.word	_Label_2247
	.word	-48
	.word	4
	.word	_Label_2248
	.word	-52
	.word	4
	.word	0
_Label_2233:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2234:
	.ascii	"Pself\0"
	.align
_Label_2235:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2236:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2237:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2180,r13		! source line 2180
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2249
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2250
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2251
	.word	12
	.word	4
	.word	_Label_2252
	.word	16
	.word	4
	.word	_Label_2253
	.word	20
	.word	4
	.word	_Label_2254
	.word	24
	.word	4
	.word	0
_Label_2249:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2250:
	.ascii	"Pself\0"
	.align
_Label_2251:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2252:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2253:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2254:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3216:
	push	r0
	sub	r1,1,r1
	bne	_Label_3216
	mov	2206,r13		! source line 2206
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0SE",r10
!   _temp_2255 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0WH",r10
_Label_2256:
!	jmp	_Label_2257
_Label_2257:
	mov	2219,r13		! source line 2219
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0SE",r10
!   _temp_2259 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2260) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2259  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0SE",r10
!   _temp_2261 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2225,r13		! source line 2225
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2270 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2264
	cmp	r1,2
	be	_Label_2265
	cmp	r1,3
	be	_Label_2266
	cmp	r1,4
	be	_Label_2267
	cmp	r1,5
	be	_Label_2268
	cmp	r1,6
	be	_Label_2269
	jmp	_Label_2262
! CASE 1...
_Label_2264:
! SEND STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0SE",r10
!   _temp_2271 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2265:
! CALL STATEMENT...
!   _temp_2272 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2272  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2230,r13		! source line 2230
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2266:
! CALL STATEMENT...
!   _temp_2273 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2273  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2232,r13		! source line 2232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2267:
! CALL STATEMENT...
!   _temp_2274 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2274  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2234,r13		! source line 2234
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2268:
! BREAK STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0BR",r10
	jmp	_Label_2263
! CASE 6...
_Label_2269:
! CALL STATEMENT...
!   _temp_2275 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2275  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2240,r13		! source line 2240
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2262:
! CALL STATEMENT...
!   _temp_2276 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2276  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2242,r13		! source line 2242
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2263:
! END WHILE...
	jmp	_Label_2256
_Label_2258:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2277
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2278
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2279
	.word	12
	.word	4
	.word	_Label_2280
	.word	16
	.word	4
	.word	_Label_2281
	.word	20
	.word	4
	.word	_Label_2282
	.word	-12
	.word	4
	.word	_Label_2283
	.word	-16
	.word	4
	.word	_Label_2284
	.word	-20
	.word	4
	.word	_Label_2285
	.word	-24
	.word	4
	.word	_Label_2286
	.word	-28
	.word	4
	.word	_Label_2287
	.word	-32
	.word	4
	.word	_Label_2288
	.word	-36
	.word	4
	.word	_Label_2289
	.word	-40
	.word	4
	.word	_Label_2290
	.word	-44
	.word	4
	.word	_Label_2291
	.word	-48
	.word	4
	.word	_Label_2292
	.word	-52
	.word	4
	.word	0
_Label_2277:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2278:
	.ascii	"Pself\0"
	.align
_Label_2279:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2280:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2281:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2251,r13		! source line 2251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2293
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2294
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2295
	.word	12
	.word	4
	.word	_Label_2296
	.word	16
	.word	4
	.word	_Label_2297
	.word	20
	.word	4
	.word	_Label_2298
	.word	24
	.word	4
	.word	0
_Label_2293:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2294:
	.ascii	"Pself\0"
	.align
_Label_2295:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2296:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2297:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2298:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2299
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2299:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2300
	.word	_sourceFileName
	.word	346		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2300:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3217:
	push	r0
	sub	r1,1,r1
	bne	_Label_3217
	mov	2282,r13		! source line 2282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2301 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2301  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2289,r13		! source line 2289
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_2303 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_2306 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   _temp_2307 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2309 = &_temp_2308
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2309 = _temp_2309 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2311 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3218:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3218
!   _temp_2311 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2313:
!   Data Move: *_temp_2309 = _temp_2311  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3219:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3219
!   _temp_2309 = _temp_2309 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2310 = _temp_2310 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2310) then goto _Label_2313
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2313
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2314 = &_temp_2308
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3220
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3220:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2307 = *_temp_2314  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3221:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3221
! FOR STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2319 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2320 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2319  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2315:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2320 then goto _Label_2318		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2318
_Label_2316:
	mov	2299,r13		! source line 2299
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   _temp_2321 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2321 [i ] into _temp_2322
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2323 = _temp_2322 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2323 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_2324 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2324 [i ] into _temp_2325
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2327 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2327 [i ] into _temp_2328
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2326 = _temp_2328		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2329 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2326  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2317:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2315
! END FOR
_Label_2318:
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0SE",r10
!   _temp_2332 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   _temp_2333 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2335 = &_temp_2334
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2335 = _temp_2335 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2337 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3222:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3222
!   _temp_2337 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2339:
!   Data Move: *_temp_2335 = _temp_2337  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3223:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3223
!   _temp_2335 = _temp_2335 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2336 = _temp_2336 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2336) then goto _Label_2339
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2339
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2340 = &_temp_2334
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3224
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3224:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2333 = *_temp_2340  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3225:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3225
! FOR STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2345 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2346 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2345  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2341:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2346 then goto _Label_2344		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2344
_Label_2342:
	mov	2311,r13		! source line 2311
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   _temp_2347 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2347 [i ] into _temp_2348
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2349 = _temp_2348 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2349 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0SE",r10
!   _temp_2351 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2351 [i ] into _temp_2352
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2350 = _temp_2352		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2353 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2350  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2343:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2341
! END FOR
_Label_2344:
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3226:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3226
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   _temp_2355 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2356 = _temp_2355 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2356 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0AS",r10
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2357 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0SE",r10
!   _temp_2358 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2359
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2360
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2361
	.word	-12
	.word	4
	.word	_Label_2362
	.word	-16
	.word	4
	.word	_Label_2363
	.word	-20
	.word	4
	.word	_Label_2364
	.word	-24
	.word	4
	.word	_Label_2365
	.word	-28
	.word	4
	.word	_Label_2366
	.word	-32
	.word	4
	.word	_Label_2367
	.word	-36
	.word	4
	.word	_Label_2368
	.word	-40
	.word	4
	.word	_Label_2369
	.word	-44
	.word	4
	.word	_Label_2370
	.word	-48
	.word	4
	.word	_Label_2371
	.word	-52
	.word	4
	.word	_Label_2372
	.word	-56
	.word	4
	.word	_Label_2373
	.word	-60
	.word	4
	.word	_Label_2374
	.word	-64
	.word	4
	.word	_Label_2375
	.word	-68
	.word	4
	.word	_Label_2376
	.word	-72
	.word	4
	.word	_Label_2377
	.word	-100
	.word	28
	.word	_Label_2378
	.word	-104
	.word	4
	.word	_Label_2379
	.word	-108
	.word	4
	.word	_Label_2380
	.word	-392
	.word	284
	.word	_Label_2381
	.word	-396
	.word	4
	.word	_Label_2382
	.word	-400
	.word	4
	.word	_Label_2383
	.word	-404
	.word	4
	.word	_Label_2384
	.word	-408
	.word	4
	.word	_Label_2385
	.word	-412
	.word	4
	.word	_Label_2386
	.word	-416
	.word	4
	.word	_Label_2387
	.word	-420
	.word	4
	.word	_Label_2388
	.word	-424
	.word	4
	.word	_Label_2389
	.word	-428
	.word	4
	.word	_Label_2390
	.word	-432
	.word	4
	.word	_Label_2391
	.word	-436
	.word	4
	.word	_Label_2392
	.word	-440
	.word	4
	.word	_Label_2393
	.word	-444
	.word	4
	.word	_Label_2394
	.word	-448
	.word	4
	.word	_Label_2395
	.word	-452
	.word	4
	.word	_Label_2396
	.word	-456
	.word	4
	.word	_Label_2397
	.word	-460
	.word	4
	.word	_Label_2398
	.word	-500
	.word	40
	.word	_Label_2399
	.word	-504
	.word	4
	.word	_Label_2400
	.word	-508
	.word	4
	.word	_Label_2401
	.word	-912
	.word	404
	.word	_Label_2402
	.word	-916
	.word	4
	.word	_Label_2403
	.word	-920
	.word	4
	.word	_Label_2404
	.word	-924
	.word	4
	.word	_Label_2405
	.word	-928
	.word	4
	.word	_Label_2406
	.word	-932
	.word	4
	.word	_Label_2407
	.word	-936
	.word	4
	.word	_Label_2408
	.word	-940
	.word	4
	.word	_Label_2409
	.word	-944
	.word	4
	.word	0
_Label_2359:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2360:
	.ascii	"Pself\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2409:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3227:
	push	r0
	sub	r1,1,r1
	bne	_Label_3227
	mov	2331,r13		! source line 2331
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0SE",r10
!   _temp_2410 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2411 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2411  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2334,r13		! source line 2334
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2416 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2417 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2416  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2412:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2417 then goto _Label_2415		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2415
_Label_2413:
	mov	2335,r13		! source line 2335
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2418 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2336,r13		! source line 2336
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2337,r13		! source line 2337
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2419 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2338,r13		! source line 2338
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_2420 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2420 [i ] into _temp_2421
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2414:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2412
! END FOR
_Label_2415:
! CALL STATEMENT...
!   _temp_2422 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2422  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2341,r13		! source line 2341
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0SE",r10
!   _temp_2423 = _function_220_printFCB
	set	_function_220_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2424 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2423  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2343,r13		! source line 2343
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2425 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2425  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2344,r13		! source line 2344
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2430 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2431 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2430  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2426:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2431 then goto _Label_2429		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2429
_Label_2427:
	mov	2345,r13		! source line 2345
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2432 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2432  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2346,r13		! source line 2346
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2347,r13		! source line 2347
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2433 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2433  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2348,r13		! source line 2348
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2435 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2435 [i ] into _temp_2436
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2434 = _temp_2436		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2434  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2349,r13		! source line 2349
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2437 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2437  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2350,r13		! source line 2350
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0SE",r10
!   _temp_2438 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2438 [i ] into _temp_2439
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2428:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2426
! END FOR
_Label_2429:
! CALL STATEMENT...
!   _temp_2440 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2440  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2353,r13		! source line 2353
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0SE",r10
!   _temp_2441 = _function_219_printOpen
	set	_function_219_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2442 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2441  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0SE",r10
!   _temp_2443 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2444
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2446
	.word	-12
	.word	4
	.word	_Label_2447
	.word	-16
	.word	4
	.word	_Label_2448
	.word	-20
	.word	4
	.word	_Label_2449
	.word	-24
	.word	4
	.word	_Label_2450
	.word	-28
	.word	4
	.word	_Label_2451
	.word	-32
	.word	4
	.word	_Label_2452
	.word	-36
	.word	4
	.word	_Label_2453
	.word	-40
	.word	4
	.word	_Label_2454
	.word	-44
	.word	4
	.word	_Label_2455
	.word	-48
	.word	4
	.word	_Label_2456
	.word	-52
	.word	4
	.word	_Label_2457
	.word	-56
	.word	4
	.word	_Label_2458
	.word	-60
	.word	4
	.word	_Label_2459
	.word	-64
	.word	4
	.word	_Label_2460
	.word	-68
	.word	4
	.word	_Label_2461
	.word	-72
	.word	4
	.word	_Label_2462
	.word	-76
	.word	4
	.word	_Label_2463
	.word	-80
	.word	4
	.word	_Label_2464
	.word	-84
	.word	4
	.word	_Label_2465
	.word	-88
	.word	4
	.word	_Label_2466
	.word	-92
	.word	4
	.word	_Label_2467
	.word	-96
	.word	4
	.word	_Label_2468
	.word	-100
	.word	4
	.word	_Label_2469
	.word	-104
	.word	4
	.word	_Label_2470
	.word	-108
	.word	4
	.word	_Label_2471
	.word	-112
	.word	4
	.word	_Label_2472
	.word	-116
	.word	4
	.word	0
_Label_2444:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2445:
	.ascii	"Pself\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2472:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3228:
	push	r0
	sub	r1,1,r1
	bne	_Label_3228
	mov	2360,r13		! source line 2360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
	mov	2376,r13		! source line 2376
	mov	"\0\0SE",r10
!   _temp_2473 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2474
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2474
	jmp	_Label_2475
_Label_2474:
! THEN...
	mov	2378,r13		! source line 2378
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2475:
! SEND STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0SE",r10
!   _temp_2476 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0WH",r10
_Label_2477:
	mov	2383,r13		! source line 2383
	mov	"\0\0SE",r10
!   _temp_2480 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2478 else goto _Label_2479
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2479
	jmp	_Label_2478
_Label_2478:
	mov	2383,r13		! source line 2383
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   _temp_2481 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2482 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2481  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2477
_Label_2479:
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
	mov	2386,r13		! source line 2386
	mov	"\0\0SE",r10
!   _temp_2483 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2484 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2484 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2485 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2485 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2486 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2486 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0SE",r10
!   _temp_2487 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2488
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2489
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2490
	.word	12
	.word	4
	.word	_Label_2491
	.word	-12
	.word	4
	.word	_Label_2492
	.word	-16
	.word	4
	.word	_Label_2493
	.word	-20
	.word	4
	.word	_Label_2494
	.word	-24
	.word	4
	.word	_Label_2495
	.word	-28
	.word	4
	.word	_Label_2496
	.word	-32
	.word	4
	.word	_Label_2497
	.word	-36
	.word	4
	.word	_Label_2498
	.word	-40
	.word	4
	.word	_Label_2499
	.word	-44
	.word	4
	.word	_Label_2500
	.word	-48
	.word	4
	.word	_Label_2501
	.word	-52
	.word	4
	.word	_Label_2502
	.word	-56
	.word	4
	.word	0
_Label_2488:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2489:
	.ascii	"Pself\0"
	.align
_Label_2490:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2501:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2502:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
	mov	2401,r13		! source line 2401
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2504		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2504
!	jmp	_Label_2503
_Label_2503:
! THEN...
	mov	2432,r13		! source line 2432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2505 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2505  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2432,r13		! source line 2432
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2504:
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0WH",r10
_Label_2506:
!   if numFiles <= 0 then goto _Label_2508		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2508
!	jmp	_Label_2507
_Label_2507:
	mov	2442,r13		! source line 2442
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2509 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2509  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2443,r13		! source line 2443
	mov	"\0\0CA",r10
	call	_function_221_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2510 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2510  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2445,r13		! source line 2445
	mov	"\0\0CA",r10
	call	_function_221_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2511 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2511  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2447,r13		! source line 2447
	mov	"\0\0CA",r10
	call	_function_221_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2515 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2515 then goto _Label_2513		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2513
!	jmp	_Label_2514
_Label_2514:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2517
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2516 = _temp_2517		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2516  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2450,r13		! source line 2450
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2512 else goto _Label_2513
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2513
	jmp	_Label_2512
_Label_2512:
! THEN...
	mov	2451,r13		! source line 2451
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0BR",r10
	jmp	_Label_2508
! END IF...
_Label_2513:
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2506
_Label_2508:
! IF STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2519		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2519
!	jmp	_Label_2518
_Label_2518:
! THEN...
	mov	2459,r13		! source line 2459
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2519:
! SEND STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_2520 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2525 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2526 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2525  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2521:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2526 then goto _Label_2524		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2524
_Label_2522:
	mov	2464,r13		! source line 2464
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0AS",r10
!   _temp_2527 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2527 [i ] into _temp_2528
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2528		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2532 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2531 = *_temp_2532  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2531 != start then goto _Label_2530		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2530
!	jmp	_Label_2529
_Label_2529:
! THEN...
	mov	2467,r13		! source line 2467
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2533 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2536 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2535 = *_temp_2536  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2534 = _temp_2535 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2533 = _temp_2534  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_2537 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2530:
!   Increment the FOR-LOOP index variable and jump back
_Label_2523:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2521
! END FOR
_Label_2524:
! WHILE STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0WH",r10
_Label_2538:
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   _temp_2541 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2539 else goto _Label_2540
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2540
	jmp	_Label_2539
_Label_2539:
	mov	2474,r13		! source line 2474
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0SE",r10
!   _temp_2542 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2543 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2542  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2538
_Label_2540:
! ASSIGNMENT STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0AS",r10
	mov	2477,r13		! source line 2477
	mov	"\0\0SE",r10
!   _temp_2544 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
!   _temp_2545 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2546 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2546 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2547 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2548 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2553 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2552 = *_temp_2553  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2552 < 0 then goto _Label_2551		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2551
	jmp	_Label_2549
_Label_2551:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2554 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2554 ) then goto _Label_2550		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2550
!	jmp	_Label_2549
_Label_2549:
! THEN...
	mov	2487,r13		! source line 2487
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2555 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2555  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2487,r13		! source line 2487
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2550:
! RETURN STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2556
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2558
	.word	12
	.word	4
	.word	_Label_2559
	.word	-12
	.word	4
	.word	_Label_2560
	.word	-16
	.word	4
	.word	_Label_2561
	.word	-20
	.word	4
	.word	_Label_2562
	.word	-24
	.word	4
	.word	_Label_2563
	.word	-28
	.word	4
	.word	_Label_2564
	.word	-32
	.word	4
	.word	_Label_2565
	.word	-36
	.word	4
	.word	_Label_2566
	.word	-40
	.word	4
	.word	_Label_2567
	.word	-44
	.word	4
	.word	_Label_2568
	.word	-48
	.word	4
	.word	_Label_2569
	.word	-52
	.word	4
	.word	_Label_2570
	.word	-56
	.word	4
	.word	_Label_2571
	.word	-60
	.word	4
	.word	_Label_2572
	.word	-64
	.word	4
	.word	_Label_2573
	.word	-68
	.word	4
	.word	_Label_2574
	.word	-72
	.word	4
	.word	_Label_2575
	.word	-76
	.word	4
	.word	_Label_2576
	.word	-80
	.word	4
	.word	_Label_2577
	.word	-84
	.word	4
	.word	_Label_2578
	.word	-88
	.word	4
	.word	_Label_2579
	.word	-92
	.word	4
	.word	_Label_2580
	.word	-96
	.word	4
	.word	_Label_2581
	.word	-100
	.word	4
	.word	_Label_2582
	.word	-104
	.word	4
	.word	_Label_2583
	.word	-108
	.word	4
	.word	_Label_2584
	.word	-112
	.word	4
	.word	_Label_2585
	.word	-116
	.word	4
	.word	_Label_2586
	.word	-120
	.word	4
	.word	_Label_2587
	.word	-124
	.word	4
	.word	_Label_2588
	.word	-128
	.word	4
	.word	_Label_2589
	.word	-132
	.word	4
	.word	_Label_2590
	.word	-136
	.word	4
	.word	_Label_2591
	.word	-140
	.word	4
	.word	_Label_2592
	.word	-144
	.word	4
	.word	_Label_2593
	.word	-148
	.word	4
	.word	_Label_2594
	.word	-152
	.word	4
	.word	_Label_2595
	.word	-156
	.word	4
	.word	_Label_2596
	.word	-160
	.word	4
	.word	0
_Label_2556:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2557:
	.ascii	"Pself\0"
	.align
_Label_2558:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2590:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2591:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2592:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2593:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2594:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2595:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2596:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
	mov	2502,r13		! source line 2502
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   _temp_2599 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2599 then goto _Label_2598		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2598
!	jmp	_Label_2597
_Label_2597:
! THEN...
	mov	2505,r13		! source line 2505
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2598:
! SEND STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0SE",r10
!   _temp_2600 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0SE",r10
!   _temp_2601 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2602 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2602  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2603 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2606 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2605 = *_temp_2606  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2604 = _temp_2605 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2603 = _temp_2604  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2610 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2609 = *_temp_2610  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2609 > 0 then goto _Label_2608		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2608
!	jmp	_Label_2607
_Label_2607:
! THEN...
	mov	2512,r13		! source line 2512
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0SE",r10
!   _temp_2611 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0SE",r10
!   _temp_2612 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2613 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2612  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2614 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2617 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2616 = *_temp_2617  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2615 = _temp_2616 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2614 = _temp_2615  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2621 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2620 = *_temp_2621  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2620 > 0 then goto _Label_2619		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2619
!	jmp	_Label_2618
_Label_2618:
! THEN...
	mov	2516,r13		! source line 2516
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0SE",r10
!   _temp_2622 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0SE",r10
!   _temp_2623 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2624 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2623  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2619:
! END IF...
_Label_2608:
! SEND STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
!   _temp_2625 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2626
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2628
	.word	12
	.word	4
	.word	_Label_2629
	.word	-12
	.word	4
	.word	_Label_2630
	.word	-16
	.word	4
	.word	_Label_2631
	.word	-20
	.word	4
	.word	_Label_2632
	.word	-24
	.word	4
	.word	_Label_2633
	.word	-28
	.word	4
	.word	_Label_2634
	.word	-32
	.word	4
	.word	_Label_2635
	.word	-36
	.word	4
	.word	_Label_2636
	.word	-40
	.word	4
	.word	_Label_2637
	.word	-44
	.word	4
	.word	_Label_2638
	.word	-48
	.word	4
	.word	_Label_2639
	.word	-52
	.word	4
	.word	_Label_2640
	.word	-56
	.word	4
	.word	_Label_2641
	.word	-60
	.word	4
	.word	_Label_2642
	.word	-64
	.word	4
	.word	_Label_2643
	.word	-68
	.word	4
	.word	_Label_2644
	.word	-72
	.word	4
	.word	_Label_2645
	.word	-76
	.word	4
	.word	_Label_2646
	.word	-80
	.word	4
	.word	_Label_2647
	.word	-84
	.word	4
	.word	_Label_2648
	.word	-88
	.word	4
	.word	_Label_2649
	.word	-92
	.word	4
	.word	_Label_2650
	.word	-96
	.word	4
	.word	_Label_2651
	.word	-100
	.word	4
	.word	_Label_2652
	.word	-104
	.word	4
	.word	0
_Label_2626:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2627:
	.ascii	"Pself\0"
	.align
_Label_2628:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2652:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
	mov	2525,r13		! source line 2525
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2656 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2655 = *_temp_2656  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2655) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2657 = _temp_2655 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2657 ) then goto _Label_2654		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2654
!	jmp	_Label_2653
_Label_2653:
! THEN...
	mov	2531,r13		! source line 2531
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2662 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2661 = *_temp_2662  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2661) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2663 = _temp_2661 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2660 = *_temp_2663  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2660 >= 0 then goto _Label_2659		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2659
!	jmp	_Label_2658
_Label_2658:
! THEN...
	mov	2532,r13		! source line 2532
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2664 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2664  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2532,r13		! source line 2532
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2659:
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2666 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2665 = *_temp_2666  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2665) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2667 = _temp_2665 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2667 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2671 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2670 = *_temp_2671  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2670) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2672 = _temp_2670 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2669 = *_temp_2672  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2675 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2674 = *_temp_2675  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2674) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2676 = _temp_2674 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2673 = *_temp_2676  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2668 = _temp_2669 + _temp_2673		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2679 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2678 = *_temp_2679  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2678) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2680 = _temp_2678 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2677 = *_temp_2680  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2681 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2668  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2677  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2654:
! RETURN STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2682
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2683
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2684
	.word	12
	.word	4
	.word	_Label_2685
	.word	-12
	.word	4
	.word	_Label_2686
	.word	-16
	.word	4
	.word	_Label_2687
	.word	-20
	.word	4
	.word	_Label_2688
	.word	-24
	.word	4
	.word	_Label_2689
	.word	-28
	.word	4
	.word	_Label_2690
	.word	-32
	.word	4
	.word	_Label_2691
	.word	-36
	.word	4
	.word	_Label_2692
	.word	-40
	.word	4
	.word	_Label_2693
	.word	-44
	.word	4
	.word	_Label_2694
	.word	-48
	.word	4
	.word	_Label_2695
	.word	-52
	.word	4
	.word	_Label_2696
	.word	-56
	.word	4
	.word	_Label_2697
	.word	-60
	.word	4
	.word	_Label_2698
	.word	-64
	.word	4
	.word	_Label_2699
	.word	-68
	.word	4
	.word	_Label_2700
	.word	-72
	.word	4
	.word	_Label_2701
	.word	-76
	.word	4
	.word	_Label_2702
	.word	-80
	.word	4
	.word	_Label_2703
	.word	-84
	.word	4
	.word	_Label_2704
	.word	-88
	.word	4
	.word	_Label_2705
	.word	-92
	.word	4
	.word	_Label_2706
	.word	-96
	.word	4
	.word	_Label_2707
	.word	-100
	.word	4
	.word	_Label_2708
	.word	-104
	.word	4
	.word	_Label_2709
	.word	-108
	.word	4
	.word	0
_Label_2682:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2683:
	.ascii	"Pself\0"
	.align
_Label_2684:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
	mov	2544,r13		! source line 2544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_2710 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2716		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2716
!   _temp_2715 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2717
_Label_2716:
!   _temp_2715 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2717:
!   if _temp_2715 then goto _Label_2714 else goto _Label_2711
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2711
	jmp	_Label_2714
_Label_2714:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2719 = *_temp_2720  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2719 == 0 then goto _Label_2721		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2721
!   _temp_2718 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2722
_Label_2721:
!   _temp_2718 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2722:
!   if _temp_2718 then goto _Label_2713 else goto _Label_2711
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2711
	jmp	_Label_2713
_Label_2713:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2725 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2724 = *_temp_2725  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2724) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2726 = _temp_2724 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2723 = *_temp_2726  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2723 >= 0 then goto _Label_2712		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2712
!	jmp	_Label_2711
_Label_2711:
! THEN...
	mov	2561,r13		! source line 2561
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2727 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2727  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2561,r13		! source line 2561
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2712:
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2728 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2728  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0WH",r10
_Label_2729:
!   if numBytes <= 0 then goto _Label_2731		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2731
!	jmp	_Label_2730
_Label_2730:
	mov	2564,r13		! source line 2564
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2735 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2734 = *_temp_2735  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2734 == sector then goto _Label_2733		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2733
!	jmp	_Label_2732
_Label_2732:
! THEN...
	mov	2579,r13		! source line 2579
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2736) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2739 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2738 = *_temp_2739  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2737 = sector + _temp_2738		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2741 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2740 = *_temp_2741  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2742 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2737  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2740  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2743 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2743 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2744 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2744 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2733:
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2746 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2745 = *_temp_2746  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2745 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   _temp_2747 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2747  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2588,r13		! source line 2588
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2729
_Label_2731:
! SEND STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
!   _temp_2748 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2749
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2751
	.word	12
	.word	4
	.word	_Label_2752
	.word	16
	.word	4
	.word	_Label_2753
	.word	20
	.word	4
	.word	_Label_2754
	.word	24
	.word	4
	.word	_Label_2755
	.word	-16
	.word	4
	.word	_Label_2756
	.word	-20
	.word	4
	.word	_Label_2757
	.word	-24
	.word	4
	.word	_Label_2758
	.word	-28
	.word	4
	.word	_Label_2759
	.word	-32
	.word	4
	.word	_Label_2760
	.word	-36
	.word	4
	.word	_Label_2761
	.word	-40
	.word	4
	.word	_Label_2762
	.word	-44
	.word	4
	.word	_Label_2763
	.word	-48
	.word	4
	.word	_Label_2764
	.word	-52
	.word	4
	.word	_Label_2765
	.word	-56
	.word	4
	.word	_Label_2766
	.word	-60
	.word	4
	.word	_Label_2767
	.word	-64
	.word	4
	.word	_Label_2768
	.word	-68
	.word	4
	.word	_Label_2769
	.word	-72
	.word	4
	.word	_Label_2770
	.word	-76
	.word	4
	.word	_Label_2771
	.word	-80
	.word	4
	.word	_Label_2772
	.word	-84
	.word	4
	.word	_Label_2773
	.word	-88
	.word	4
	.word	_Label_2774
	.word	-92
	.word	4
	.word	_Label_2775
	.word	-96
	.word	4
	.word	_Label_2776
	.word	-100
	.word	4
	.word	_Label_2777
	.word	-104
	.word	4
	.word	_Label_2778
	.word	-9
	.word	1
	.word	_Label_2779
	.word	-10
	.word	1
	.word	_Label_2780
	.word	-108
	.word	4
	.word	_Label_2781
	.word	-112
	.word	4
	.word	_Label_2782
	.word	-116
	.word	4
	.word	_Label_2783
	.word	-120
	.word	4
	.word	_Label_2784
	.word	-124
	.word	4
	.word	_Label_2785
	.word	-128
	.word	4
	.word	0
_Label_2749:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2750:
	.ascii	"Pself\0"
	.align
_Label_2751:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2752:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2753:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2754:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2778:
	.byte	'C'
	.ascii	"_temp_2718\0"
	.align
_Label_2779:
	.byte	'C'
	.ascii	"_temp_2715\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2781:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2782:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2783:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2785:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
	mov	2608,r13		! source line 2608
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_2786 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2792		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2792
!   _temp_2791 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2793
_Label_2792:
!   _temp_2791 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2793:
!   if _temp_2791 then goto _Label_2790 else goto _Label_2787
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2787
	jmp	_Label_2790
_Label_2790:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2796 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2795 = *_temp_2796  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2795 == 0 then goto _Label_2797		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2797
!   _temp_2794 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2798
_Label_2797:
!   _temp_2794 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2798:
!   if _temp_2794 then goto _Label_2789 else goto _Label_2787
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2787
	jmp	_Label_2789
_Label_2789:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2801 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2800 = *_temp_2801  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2800) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2802 = _temp_2800 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2799 = *_temp_2802  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2799 >= 0 then goto _Label_2788		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2788
!	jmp	_Label_2787
_Label_2787:
! THEN...
	mov	2626,r13		! source line 2626
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2803 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2803  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2626,r13		! source line 2626
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2788:
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2804 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2804  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0WH",r10
_Label_2805:
!   if numBytes <= 0 then goto _Label_2807		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2807
!	jmp	_Label_2806
_Label_2806:
	mov	2629,r13		! source line 2629
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2811 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2810 = *_temp_2811  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2810 == sector then goto _Label_2809		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2809
!	jmp	_Label_2808
_Label_2808:
! THEN...
	mov	2645,r13		! source line 2645
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2812) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2809:
! ASSIGNMENT STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2814 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2813 = *_temp_2814  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2813 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
!   _temp_2815 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2815  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2648,r13		! source line 2648
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2819 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2818 = *_temp_2819  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2818 != sector then goto _Label_2817		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2817
!	jmp	_Label_2816
_Label_2816:
	jmp	_Label_2820
_Label_2817:
! ELSE...
	mov	2651,r13		! source line 2651
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2823
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2823
	jmp	_Label_2822
_Label_2823:
!   if bytesToMove != 8192 then goto _Label_2822		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2822
!	jmp	_Label_2821
_Label_2821:
	jmp	_Label_2824
_Label_2822:
! ELSE...
	mov	2655,r13		! source line 2655
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2827 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2826 = *_temp_2827  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2825 = sector + _temp_2826		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2829 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2828 = *_temp_2829  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2830 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2825  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2828  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2824:
! END IF...
_Label_2820:
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2831 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2831 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2832 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2832 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2664,r13		! source line 2664
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2805
_Label_2807:
! SEND STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0SE",r10
!   _temp_2833 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2834
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2836
	.word	12
	.word	4
	.word	_Label_2837
	.word	16
	.word	4
	.word	_Label_2838
	.word	20
	.word	4
	.word	_Label_2839
	.word	24
	.word	4
	.word	_Label_2840
	.word	-16
	.word	4
	.word	_Label_2841
	.word	-20
	.word	4
	.word	_Label_2842
	.word	-24
	.word	4
	.word	_Label_2843
	.word	-28
	.word	4
	.word	_Label_2844
	.word	-32
	.word	4
	.word	_Label_2845
	.word	-36
	.word	4
	.word	_Label_2846
	.word	-40
	.word	4
	.word	_Label_2847
	.word	-44
	.word	4
	.word	_Label_2848
	.word	-48
	.word	4
	.word	_Label_2849
	.word	-52
	.word	4
	.word	_Label_2850
	.word	-56
	.word	4
	.word	_Label_2851
	.word	-60
	.word	4
	.word	_Label_2852
	.word	-64
	.word	4
	.word	_Label_2853
	.word	-68
	.word	4
	.word	_Label_2854
	.word	-72
	.word	4
	.word	_Label_2855
	.word	-76
	.word	4
	.word	_Label_2856
	.word	-80
	.word	4
	.word	_Label_2857
	.word	-84
	.word	4
	.word	_Label_2858
	.word	-88
	.word	4
	.word	_Label_2859
	.word	-92
	.word	4
	.word	_Label_2860
	.word	-96
	.word	4
	.word	_Label_2861
	.word	-100
	.word	4
	.word	_Label_2862
	.word	-104
	.word	4
	.word	_Label_2863
	.word	-108
	.word	4
	.word	_Label_2864
	.word	-112
	.word	4
	.word	_Label_2865
	.word	-9
	.word	1
	.word	_Label_2866
	.word	-10
	.word	1
	.word	_Label_2867
	.word	-116
	.word	4
	.word	_Label_2868
	.word	-120
	.word	4
	.word	_Label_2869
	.word	-124
	.word	4
	.word	_Label_2870
	.word	-128
	.word	4
	.word	_Label_2871
	.word	-132
	.word	4
	.word	_Label_2872
	.word	-136
	.word	4
	.word	0
_Label_2834:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2835:
	.ascii	"Pself\0"
	.align
_Label_2836:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2838:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2839:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2865:
	.byte	'C'
	.ascii	"_temp_2794\0"
	.align
_Label_2866:
	.byte	'C'
	.ascii	"_temp_2791\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2868:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2870:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2871:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2872:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2873
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2873:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2874
	.word	_sourceFileName
	.word	371		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2874:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3234:
	push	r0
	sub	r1,1,r1
	bne	_Label_3234
	mov	2712,r13		! source line 2712
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0AS",r10
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
!   _temp_2875 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2876
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2878
	.word	-12
	.word	4
	.word	0
_Label_2876:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2877:
	.ascii	"Pself\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3235:
	push	r0
	sub	r1,1,r1
	bne	_Label_3235
	mov	2722,r13		! source line 2722
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2879 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2879  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2723,r13		! source line 2723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2724,r13		! source line 2724
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2880 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2880  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2725,r13		! source line 2725
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2726,r13		! source line 2726
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2881 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2881  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2728,r13		! source line 2728
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2882 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2882  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2729,r13		! source line 2729
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2730,r13		! source line 2730
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2883 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2731,r13		! source line 2731
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2732,r13		! source line 2732
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2884 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2884  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2733,r13		! source line 2733
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2734,r13		! source line 2734
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2735,r13		! source line 2735
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2885
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2887
	.word	-12
	.word	4
	.word	_Label_2888
	.word	-16
	.word	4
	.word	_Label_2889
	.word	-20
	.word	4
	.word	_Label_2890
	.word	-24
	.word	4
	.word	_Label_2891
	.word	-28
	.word	4
	.word	_Label_2892
	.word	-32
	.word	4
	.word	0
_Label_2885:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2886:
	.ascii	"Pself\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2893
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2893:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2894
	.word	_sourceFileName
	.word	388		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2894:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3236:
	push	r0
	sub	r1,1,r1
	bne	_Label_3236
	mov	2746,r13		! source line 2746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2895 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2895  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2747,r13		! source line 2747
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2748,r13		! source line 2748
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2896 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2898		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2898
!	jmp	_Label_2897
_Label_2897:
! THEN...
	mov	2751,r13		! source line 2751
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2899
_Label_2898:
! ELSE...
	mov	2753,r13		! source line 2753
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2900 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2753,r13		! source line 2753
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2899:
! RETURN STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2901
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2903
	.word	-12
	.word	4
	.word	_Label_2904
	.word	-16
	.word	4
	.word	_Label_2905
	.word	-20
	.word	4
	.word	0
_Label_2901:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2902:
	.ascii	"Pself\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3237:
	push	r0
	sub	r1,1,r1
	bne	_Label_3237
	mov	2759,r13		! source line 2759
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
!   _temp_2906 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2907 = _temp_2906 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
!   _temp_2908 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2909 = _temp_2908 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0RE",r10
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2912 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2911  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2910  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2910  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2913
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2914
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2915
	.word	12
	.word	4
	.word	_Label_2916
	.word	16
	.word	4
	.word	_Label_2917
	.word	-16
	.word	4
	.word	_Label_2918
	.word	-20
	.word	4
	.word	_Label_2919
	.word	-9
	.word	1
	.word	_Label_2920
	.word	-24
	.word	4
	.word	_Label_2921
	.word	-28
	.word	4
	.word	_Label_2922
	.word	-32
	.word	4
	.word	_Label_2923
	.word	-36
	.word	4
	.word	_Label_2924
	.word	-40
	.word	4
	.word	0
_Label_2913:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2914:
	.ascii	"Pself\0"
	.align
_Label_2915:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2916:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2919:
	.byte	'C'
	.ascii	"_temp_2910\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2924:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
	mov	2778,r13		! source line 2778
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0IF",r10
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
!   _temp_2928 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2929) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2928  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2927  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2927 then goto _Label_2926 else goto _Label_2925
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2925
	jmp	_Label_2926
_Label_2925:
! THEN...
	mov	2784,r13		! source line 2784
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2930 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2930  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2784,r13		! source line 2784
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2926:
! RETURN STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2931
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2933
	.word	-16
	.word	4
	.word	_Label_2934
	.word	-20
	.word	4
	.word	_Label_2935
	.word	-24
	.word	4
	.word	_Label_2936
	.word	-9
	.word	1
	.word	_Label_2937
	.word	-28
	.word	4
	.word	0
_Label_2931:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2932:
	.ascii	"Pself\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2936:
	.byte	'C'
	.ascii	"_temp_2927\0"
	.align
_Label_2937:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3239:
	push	r0
	sub	r1,1,r1
	bne	_Label_3239
	mov	2791,r13		! source line 2791
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2941 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2940 = *_temp_2941  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2940) then goto _Label_2939
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2939
!	jmp	_Label_2938
_Label_2938:
! THEN...
	mov	2818,r13		! source line 2818
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2942 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2942  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2818,r13		! source line 2818
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2939:
! IF STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0IF",r10
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2946) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2945  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2945 == 1112300152 then goto _Label_2944		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2944
!	jmp	_Label_2943
_Label_2943:
! THEN...
	mov	2823,r13		! source line 2823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2947 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2947  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2944:
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
	mov	2828,r13		! source line 2828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2948) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
	mov	2829,r13		! source line 2829
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2949) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2950) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0AS",r10
	mov	2831,r13		! source line 2831
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2951) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
	mov	2832,r13		! source line 2832
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2952) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
	mov	2833,r13		! source line 2833
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2953) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0IF",r10
!   _temp_2956 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2956) then goto _Label_2955
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2955
!	jmp	_Label_2954
_Label_2954:
! THEN...
	mov	2837,r13		! source line 2837
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2957 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2957  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2837,r13		! source line 2837
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2955:
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2959
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2959
!	jmp	_Label_2958
_Label_2958:
! THEN...
	mov	2845,r13		! source line 2845
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2960 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2960  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2845,r13		! source line 2845
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2959:
! IF STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0IF",r10
!   _temp_2963 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2963) then goto _Label_2962
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2962
!	jmp	_Label_2961
_Label_2961:
! THEN...
	mov	2851,r13		! source line 2851
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2964 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2964  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2851,r13		! source line 2851
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2962:
! IF STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0IF",r10
!   _temp_2967 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2967 then goto _Label_2966		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2966
!	jmp	_Label_2965
_Label_2965:
! THEN...
	mov	2855,r13		! source line 2855
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2968 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2968  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2855,r13		! source line 2855
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2966:
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0IF",r10
!   _temp_2971 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2971) then goto _Label_2970
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2970
!	jmp	_Label_2969
_Label_2969:
! THEN...
	mov	2862,r13		! source line 2862
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2972 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2972  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2862,r13		! source line 2862
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2970:
! IF STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0IF",r10
!   _temp_2975 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2975 then goto _Label_2974		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2974
!	jmp	_Label_2973
_Label_2973:
! THEN...
	mov	2866,r13		! source line 2866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2976 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2976  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2866,r13		! source line 2866
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2974:
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0AS",r10
!   _temp_2979 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2978 = _temp_2979 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2977 = _temp_2978 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2977 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2981		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2981
!	jmp	_Label_2980
_Label_2980:
! THEN...
	mov	2888,r13		! source line 2888
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2982 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2982  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2888,r13		! source line 2888
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2983 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2983  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2984 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2984  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2890,r13		! source line 2890
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2981:
! SEND STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0SE",r10
!   _temp_2985 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0IF",r10
	mov	2899,r13		! source line 2899
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2989) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2988  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2988 == 707406378 then goto _Label_2987		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2987
!	jmp	_Label_2986
_Label_2986:
! THEN...
	mov	2900,r13		! source line 2900
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2990 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2990  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2900,r13		! source line 2900
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0SE",r10
!   _temp_2991 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2987:
! ASSIGNMENT STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2996 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2997 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2996  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2992:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2997 then goto _Label_2995		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2995
_Label_2993:
	mov	2907,r13		! source line 2907
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
	mov	2908,r13		! source line 2908
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0IF",r10
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3001) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3000  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3000 then goto _Label_2999 else goto _Label_2998
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2998
	jmp	_Label_2999
_Label_2998:
! THEN...
	mov	2912,r13		! source line 2912
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3002 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3002  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
!   _temp_3003 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2999:
! SEND STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2994:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2992
! END FOR
_Label_2995:
! IF STATEMENT...
	mov	2921,r13		! source line 2921
	mov	"\0\0IF",r10
	mov	2921,r13		! source line 2921
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3007) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3006  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3006 == 707406378 then goto _Label_3005		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3005
!	jmp	_Label_3004
_Label_3004:
! THEN...
	mov	2922,r13		! source line 2922
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3008 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3008  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2922,r13		! source line 2922
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0SE",r10
!   _temp_3009 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3005:
! FOR STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3014 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3015 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3014  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3010:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3015 then goto _Label_3013		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3013
_Label_3011:
	mov	2928,r13		! source line 2928
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0IF",r10
	mov	2932,r13		! source line 2932
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3019) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3018  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3018 then goto _Label_3017 else goto _Label_3016
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3016
	jmp	_Label_3017
_Label_3016:
! THEN...
	mov	2933,r13		! source line 2933
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3020 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3020  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2933,r13		! source line 2933
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0SE",r10
!   _temp_3021 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3017:
! ASSIGNMENT STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3012:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3010
! END FOR
_Label_3013:
! IF STATEMENT...
	mov	2941,r13		! source line 2941
	mov	"\0\0IF",r10
	mov	2941,r13		! source line 2941
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3025) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3024  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3024 == 707406378 then goto _Label_3023		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3023
!	jmp	_Label_3022
_Label_3022:
! THEN...
	mov	2942,r13		! source line 2942
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3026 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3026  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2942,r13		! source line 2942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0SE",r10
!   _temp_3027 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3023:
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0AS",r10
	mov	2948,r13		! source line 2948
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2952,r13		! source line 2952
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3028
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3030
	.word	12
	.word	4
	.word	_Label_3031
	.word	-16
	.word	4
	.word	_Label_3032
	.word	-20
	.word	4
	.word	_Label_3033
	.word	-24
	.word	4
	.word	_Label_3034
	.word	-28
	.word	4
	.word	_Label_3035
	.word	-32
	.word	4
	.word	_Label_3036
	.word	-36
	.word	4
	.word	_Label_3037
	.word	-40
	.word	4
	.word	_Label_3038
	.word	-9
	.word	1
	.word	_Label_3039
	.word	-44
	.word	4
	.word	_Label_3040
	.word	-48
	.word	4
	.word	_Label_3041
	.word	-52
	.word	4
	.word	_Label_3042
	.word	-56
	.word	4
	.word	_Label_3043
	.word	-60
	.word	4
	.word	_Label_3044
	.word	-64
	.word	4
	.word	_Label_3045
	.word	-68
	.word	4
	.word	_Label_3046
	.word	-72
	.word	4
	.word	_Label_3047
	.word	-76
	.word	4
	.word	_Label_3048
	.word	-10
	.word	1
	.word	_Label_3049
	.word	-80
	.word	4
	.word	_Label_3050
	.word	-84
	.word	4
	.word	_Label_3051
	.word	-88
	.word	4
	.word	_Label_3052
	.word	-92
	.word	4
	.word	_Label_3053
	.word	-96
	.word	4
	.word	_Label_3054
	.word	-100
	.word	4
	.word	_Label_3055
	.word	-104
	.word	4
	.word	_Label_3056
	.word	-108
	.word	4
	.word	_Label_3057
	.word	-112
	.word	4
	.word	_Label_3058
	.word	-116
	.word	4
	.word	_Label_3059
	.word	-120
	.word	4
	.word	_Label_3060
	.word	-124
	.word	4
	.word	_Label_3061
	.word	-128
	.word	4
	.word	_Label_3062
	.word	-132
	.word	4
	.word	_Label_3063
	.word	-136
	.word	4
	.word	_Label_3064
	.word	-140
	.word	4
	.word	_Label_3065
	.word	-144
	.word	4
	.word	_Label_3066
	.word	-148
	.word	4
	.word	_Label_3067
	.word	-152
	.word	4
	.word	_Label_3068
	.word	-156
	.word	4
	.word	_Label_3069
	.word	-160
	.word	4
	.word	_Label_3070
	.word	-164
	.word	4
	.word	_Label_3071
	.word	-168
	.word	4
	.word	_Label_3072
	.word	-172
	.word	4
	.word	_Label_3073
	.word	-176
	.word	4
	.word	_Label_3074
	.word	-180
	.word	4
	.word	_Label_3075
	.word	-184
	.word	4
	.word	_Label_3076
	.word	-188
	.word	4
	.word	_Label_3077
	.word	-192
	.word	4
	.word	_Label_3078
	.word	-196
	.word	4
	.word	_Label_3079
	.word	-200
	.word	4
	.word	_Label_3080
	.word	-204
	.word	4
	.word	_Label_3081
	.word	-208
	.word	4
	.word	_Label_3082
	.word	-212
	.word	4
	.word	_Label_3083
	.word	-216
	.word	4
	.word	_Label_3084
	.word	-220
	.word	4
	.word	_Label_3085
	.word	-224
	.word	4
	.word	_Label_3086
	.word	-228
	.word	4
	.word	_Label_3087
	.word	-232
	.word	4
	.word	_Label_3088
	.word	-236
	.word	4
	.word	_Label_3089
	.word	-240
	.word	4
	.word	_Label_3090
	.word	-244
	.word	4
	.word	_Label_3091
	.word	-248
	.word	4
	.word	_Label_3092
	.word	-252
	.word	4
	.word	_Label_3093
	.word	-256
	.word	4
	.word	_Label_3094
	.word	-260
	.word	4
	.word	_Label_3095
	.word	-264
	.word	4
	.word	_Label_3096
	.word	-268
	.word	4
	.word	0
_Label_3028:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3029:
	.ascii	"Pself\0"
	.align
_Label_3030:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3038:
	.byte	'C'
	.ascii	"_temp_3018\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3048:
	.byte	'C'
	.ascii	"_temp_3000\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_3085:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3086:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3087:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3088:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3089:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3090:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3091:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3092:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3093:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3094:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3095:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3096:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
