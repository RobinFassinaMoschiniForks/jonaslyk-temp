BEGIN{/* 2>NUL 
    "%ProgramFiles%\dtrace\dtrace" -w -q -yc:\symbols -xstrsize=256 -xdynvarsize=512m -xbufsize=1024m -xswitchrate=100000hz -s %~f0 %*
    @goto :EOF 
*/} 
#pragma D option defaultargs
#pragma D option quiet
typedef void* PVOID;
typedef void* VOID;
typedef uint64_t ULONGLONG;
typedef void** PHANDLE;
typedef uint64_t LARGE_INTEGER,*PLARGE_INTEGER ;
typedef GUID CRM_PROTOCOL_ID, *PCRM_PROTOCOL_ID;
typedef ULONG WNF_CHANGE_STAMP, *PWNF_CHANGE_STAMP;
typedef void * PIO_APC_ROUTINE ;
typedef void* PPS_APC_ROUTINE;
typedef void* PTIMER_APC_ROUTINE ;
typedef void* PTPP_START_ROUTINE;
typedef PVOID T2_CANCEL_PARAMETERS,*PT2_CANCEL_PARAMETERS;
typedef uint32_t LCID ;
typedef WORD LANGID,*PLANGID;
typedef uint32_t* KAFFINITY;
typedef unsigned short RTL_ATOM, *PRTL_ATOM;
typedef enum _BOOL { false ,true} BOOL;
self uint8_t print;uint64_t a1int;string a1str;
BEGIN{ printf("%s","Started up\n") ; a1int=strtoll($$1); a1str=$$1;}
ERROR { print(arg0); print(arg1); print(arg2); print(arg3); print(arg4); print(arg5); }
inline size_t MIN[ size_t a, size_t b ] = a > b ? b : a;
inline size_t MAX[ size_t a, size_t b ] = a < b ? b : a;
inline uintptr_t MAX_USER = (uintptr_t) 0xFFFF080000000000 ;
inline void* GET[ void* FROM, size_t OFSIZE ] =
( ( ! FROM || ! OFSIZE ) ? alloca(OFSIZE)
             :
             ( ( (uintptr_t)FROM ) > MAX_USER ) ? ( self->GETTMP = alloca(OFSIZE), bcopy( FROM, self->GETTMP, OFSIZE ), self->GETTMP )
                                             :
                                             copyin( ( uintptr_t )FROM, OFSIZE )
);
inline void* COPY_FROM_TO_OFSIZE[ void* FROM, void* TO, size_t OFSIZE ] =
( ( ! FROM || ! TO || ! OFSIZE ) ? ( TO ? TO : alloca(1) )
             :
             ( ((uintptr_t) FROM) > MAX_USER ) ? ( bcopy( FROM, (void*) TO, OFSIZE ), TO )
                                            :
                                            ( copyinto( ( uintptr_t )FROM, OFSIZE, TO ), TO )
 );
self void* GETASSIZETMP;
inline void* COPY_FROM_OFSIZE_ASSIZE[ void* FROM, size_t OFSIZE, size_t ASSIZE ] =
(
    self->GETASSIZETMP = alloca( ASSIZE + 1 ),
    ( !FROM || !OFSIZE ) ? self->GETASSIZETMP
             :
             ( ((uintptr_t)FROM) > MAX_USER ) ? ( bcopy( FROM, self->GETASSIZETMP, MIN[ ASSIZE, OFSIZE ] ), self->GETASSIZETMP )
                                            :
                                            ( copyinto( ((uintptr_t)FROM), MIN[ ASSIZE, OFSIZE ], self->GETASSIZETMP ), self->GETASSIZETMP )
);
typedef uint8_t BIT ;typedef uint8_t BIT1 ;typedef uint8_t BIT2 ;typedef uint8_t BIT3 ;typedef uint8_t BIT4 ;typedef uint8_t BIT5 ;typedef uint8_t BIT6 ; typedef uint8_t BIT7 ;typedef uint8_t BIT8 ;typedef uint8_t BIT9 ;typedef uint8_t BIT10;typedef uint8_t BIT11;typedef uint8_t BIT12; typedef uint8_t BIT13;typedef uint8_t BIT14;typedef uint8_t BIT15;typedef uint8_t BIT16;typedef uint8_t BIT17;typedef uint8_t BIT18; typedef uint8_t BIT19;typedef uint8_t BIT20;typedef uint8_t BIT21;typedef uint8_t BIT22;typedef uint8_t BIT23;typedef uint8_t BIT24; typedef uint8_t BIT25;typedef uint8_t BIT26;typedef uint8_t BIT27;typedef uint8_t BIT28;typedef uint8_t BIT29;typedef uint8_t BIT30; typedef uint8_t BIT31;typedef uint8_t BIT32;typedef uint8_t BIT33;typedef uint8_t BIT34;typedef uint8_t BIT35;typedef uint8_t BIT36; typedef uint8_t BIT37;typedef uint8_t BIT38;typedef uint8_t BIT39;typedef uint8_t BIT40;typedef uint8_t BIT41;typedef uint8_t BIT42; typedef uint8_t BIT43;typedef uint8_t BIT44;typedef uint8_t BIT45;typedef uint8_t BIT46;typedef uint8_t BIT47;typedef uint8_t BIT48; typedef uint8_t BIT49;typedef uint8_t BIT50;typedef uint8_t BIT51;typedef uint8_t BIT52;typedef uint8_t BIT53;typedef uint8_t BIT54; typedef uint8_t BIT55;typedef uint8_t BIT56;typedef uint8_t BIT57;typedef uint8_t BIT58;typedef uint8_t BIT59;typedef uint8_t BIT60; typedef uint8_t BIT61;typedef uint8_t BIT62;typedef uint8_t BIT63;typedef uint8_t BIT64;
typedef struct BITSET{ BIT _BIT1 ;BIT _BIT2; BIT _BIT3; BIT _BIT4; BIT _BIT5; BIT _BIT6; BIT _BIT7; BIT _BIT8;BIT _BIT9 ;BIT _BIT10; BIT _BIT11;BIT _BIT12;BIT _BIT13;BIT _BIT14;BIT _BIT15;BIT _BIT16;BIT _BIT17;BIT _BIT18;BIT _BIT19;BIT _BIT20; BIT _BIT21;BIT _BIT22;BIT _BIT23;BIT _BIT24;BIT _BIT25;BIT _BIT26;BIT _BIT27;BIT _BIT28;BIT _BIT29;BIT _BIT30; BIT _BIT31;BIT _BIT32; }BITSET,*PBITSET;
inline PBITSET maskToStruct[ uint64_t maskvalue ] =(
    self->maskstruct = *( struct BITSET* ) alloca( sizeof(BITSET) ),
    self->maskstruct._BIT1 = ( maskvalue & (1 << 0) ) != 0, self->maskstruct._BIT2 = (maskvalue & (1 << 1)) != 0, self->maskstruct._BIT3 = ( maskvalue & (1 << 2)) != 0, self->maskstruct._BIT4 = (maskvalue & (1 << 3)) !=0, self->maskstruct._BIT5= (maskvalue & (1 << 4)) !=0, self->maskstruct._BIT6= (maskvalue & (1 << 5)) !=0, self->maskstruct._BIT7= (maskvalue & (1 << 6)) !=0, self->maskstruct._BIT8= (maskvalue & (1 << 7)) !=0, self->maskstruct._BIT9= (maskvalue & (1 << 8)) !=0, self->maskstruct._BIT10= (maskvalue & (1 << 9)) !=0, self->maskstruct._BIT11= (maskvalue & (1 << 10)) !=0, self->maskstruct._BIT12= (maskvalue & (1 << 11)) !=0, self->maskstruct._BIT13= (maskvalue & (1 << 12)) !=0, self->maskstruct._BIT14= (maskvalue & (1 << 13)) !=0, self->maskstruct._BIT15= (maskvalue & (1 << 14)) !=0, self->maskstruct._BIT16= (maskvalue & (1 << 15)) !=0, self->maskstruct._BIT17= (maskvalue & (1 << 16)) !=0, self->maskstruct._BIT18= (maskvalue & (1 << 17)) !=0, self->maskstruct._BIT19= (maskvalue & (1 << 18)) !=0, self->maskstruct._BIT20= (maskvalue & (1 << 19)) !=0, self->maskstruct._BIT21= (maskvalue & (1 << 20)) !=0, self->maskstruct._BIT22= (maskvalue & (1 << 21)) !=0, self->maskstruct._BIT23= (maskvalue & (1 << 22)) !=0, self->maskstruct._BIT24= (maskvalue & (1 << 23)) !=0, self->maskstruct._BIT25= (maskvalue & (1 << 24)) !=0, self->maskstruct._BIT26= (maskvalue & (1 << 25)) !=0, self->maskstruct._BIT27= (maskvalue & (1 << 26)) !=0, self->maskstruct._BIT28= (maskvalue & (1 << 27)) !=0, self->maskstruct._BIT29= (maskvalue & (1 << 28)) !=0, self->maskstruct._BIT30= (maskvalue & (1 << 29)) !=0, self->maskstruct._BIT31= (maskvalue & (1 << 30)) !=0, self->maskstruct._BIT32= (maskvalue & (1 << 31)) !=0,
(PBITSET)&self->maskstruct._BIT1);
typedef char CHAR ;typedef wchar_t* WSTR;inline uint16_t STRSIZE = 256; this char BLANKSTR[ STRSIZE ];
typedef struct STR{ char chars[ STRSIZE ]; }STR;this STR NEWSTR;
inline STR NEWSTR[ string str ]=( self->NEWSTR = this->NEWSTR, (*(string*)&self->NEWSTR.chars[0]) = str, self->NEWSTR );
inline int NARROW8[ STR* s ,int offset] = ( c = ((char*)&s->chars[0]), wc = (wchar_t*)c, c[0+offset]=wc[0+offset],c[1+offset]=wc[1+offset],c[2+offset]=wc[2+offset],c[3+offset]=wc[3+offset],c[4+offset]=wc[4+offset],c[5+offset]=wc[5+offset],c[6+offset]=wc[6+offset],c[7+offset]=wc[7+offset],offset+8 );
inline char* NARROW[ STR* s ] = ( o = &s->chars[0],
    offset = NARROW8[s,0], offset = NARROW8[s,offset], offset = NARROW8[s,offset],offset = NARROW8[s,offset], offset = NARROW8[s,offset], offset = NARROW8[s,offset], offset = NARROW8[s,offset],offset = NARROW8[s,offset],
    offset = NARROW8[s,offset], offset = NARROW8[s,offset], offset = NARROW8[s,offset],offset = NARROW8[s,offset], offset = NARROW8[s,offset], offset = NARROW8[s,offset], offset = NARROW8[s,offset],offset = NARROW8[s,offset],
o);
typedef uint64_t PID;typedef uint64_t TID; STR HandleCreatedBy[ PID , void* ];
string STATICHANDLES[void* v];BEGIN{
    STATICHANDLES[ (void*)-6 ] = "NtCurrentEffectiveToken"; STATICHANDLES[ (void*)-5 ] = "NtCurrentThreadToken"; STATICHANDLES[ (void*)-4 ] = "NtCurrentProcessToken"; STATICHANDLES[ (void*)-2 ] = "NtCurrentThread"; STATICHANDLES[ (void*)-1 ] = "NtCurrentProcess" ;
}
typedef struct HANDLE { void* h; STR name ; }HANDLE;this HANDLE newHANDLE;
inline HANDLE NewHandleinfo[ uint64_t h ] = (
NEWHINFO = this->newHANDLE,
    NEWHINFO.h = (STATICHANDLES[ (void*)h ] == "" ) ? (void*)( 0x00000000ffffffff & h ) : (void*) h ,
    NEWHINFO.name = (STATICHANDLES[ (void*)h ] != "" ) ? NEWSTR[ STATICHANDLES[ (void*)h ] ] : HandleCreatedBy[ pid, (void*)h ],
NEWHINFO);inline HANDLE GET_HANDLE[ uint64_t v ] = NewHandleinfo[v];
typedef struct UNICODE_STRING{ USHORT Length; USHORT MaximumLength;STR Buffer;}UNICODE_STRING;this UNICODE_STRING NEW_UNICODE_STRING;
inline UNICODE_STRING GET_UNICODE_STRING[ nt`UNICODE_STRING* punistr ] = ( self->unistr = *(nt`UNICODE_STRING*)GET[ punistr, sizeof(nt`UNICODE_STRING) ] ,
self->RETURN_UNICODE_STRING = this->NEW_UNICODE_STRING,
 self->RETURN_UNICODE_STRING.Length = self->unistr.Length,
 self->RETURN_UNICODE_STRING.MaximumLength = self->unistr.MaximumLength,
    *((string*)&self->RETURN_UNICODE_STRING.Buffer.chars[0]) = (char*)COPY_FROM_OFSIZE_ASSIZE[ self->unistr.Buffer, self->unistr.Length*2, STRSIZE * 2 ],
    *((string*)&self->RETURN_UNICODE_STRING.Buffer.chars[0]) = NARROW[ &self->RETURN_UNICODE_STRING.Buffer ],
    self->RETURN_UNICODE_STRING.Buffer.chars[self->unistr.Length] = "\x00"[0],
self->RETURN_UNICODE_STRING);inline UNICODE_STRING GET_PUNICODE_STRING[ uint64_t punistr ] = punistr ? GET_UNICODE_STRING[ (nt`UNICODE_STRING*)punistr ] : this->NEW_UNICODE_STRING;
typedef struct SECURITY_QUALITY_OF_SERVICE{ ULONG Length; enum { Anonymous = 0, Identification = 1, Impersonation = 2, Delegation = 3 } ImpersonationLevel ; UCHAR ContextTrackingMode; UCHAR EffectiveOnly; }SECURITY_QUALITY_OF_SERVICE,*PSECURITY_QUALITY_OF_SERVICE;
typedef struct OBJECT_ATTRIBUTES_ATTRIBUTES{ BIT1 PROTECT_CLOSE; BIT2 INHERIT; BIT3 AUDIT_OBJECT_CLOSE; BIT4 UNUSED; BIT5 PERMANENT; BIT6 EXCLUSIVE; BIT7 CASE_INSENSITIVE; BIT8 OPENIF; BIT9 OPENLINK; BIT10 KERNEL_HANDLE; BIT11 FORCE_ACCESS_CHECK; BIT12 IGNORE_IMPERSONATED_DEVICEMAP; BIT13 DONT_REPARSE; } OBJECT_ATTRIBUTES_ATTRIBUTES;
       inline OBJECT_ATTRIBUTES_ATTRIBUTES GET_OBJECT_ATTRIBUTES_ATTRIBUTES[uint64_t v] = *(OBJECT_ATTRIBUTES_ATTRIBUTES*) maskToStruct[ (uint64_t)v ];
typedef struct SECURITY_DESCRIPTOR{ UCHAR Revision; UCHAR Sbz1; USHORT Control; void* Owner; void* Group; void* Sacl; void* Dacl; } SECURITY_DESCRIPTOR,*PSECURITY_DESCRIPTOR;
typedef struct OBJECT_ATTRIBUTES{
    ULONG Length; HANDLE RootDirectory; UNICODE_STRING ObjectName; OBJECT_ATTRIBUTES_ATTRIBUTES Attributes; SECURITY_DESCRIPTOR SecurityDescriptor; SECURITY_QUALITY_OF_SERVICE SecurityQualityOfService;
}OBJECT_ATTRIBUTES; this OBJECT_ATTRIBUTES NEW_OBJECT_ATTRIBUTES; self OBJECT_ATTRIBUTES NEW_OBJECT_ATTRIBUTES;
inline OBJECT_ATTRIBUTES GET_OBJECT_ATTRIBUTES[ nt`OBJECT_ATTRIBUTES* pobjattr ] = ( objattr = *(nt`OBJECT_ATTRIBUTES*)GET[ (void*)pobjattr, sizeof(nt`OBJECT_ATTRIBUTES) ],
self->RETURN_OBJECT_ATTRIBUTES = this->NEW_OBJECT_ATTRIBUTES,
 self->RETURN_OBJECT_ATTRIBUTES.Length = objattr.Length ,
 self->RETURN_OBJECT_ATTRIBUTES.RootDirectory = GET_HANDLE[ (uint64_t)objattr.RootDirectory ],
 self->RETURN_OBJECT_ATTRIBUTES.Attributes = GET_OBJECT_ATTRIBUTES_ATTRIBUTES[ objattr.Attributes ],
 self->RETURN_OBJECT_ATTRIBUTES.ObjectName = GET_PUNICODE_STRING[ (int64_t)objattr.ObjectName ],
 objattr.SecurityDescriptor ? ( self->RETURN_OBJECT_ATTRIBUTES.SecurityDescriptor = *(SECURITY_DESCRIPTOR*)GET[ (void*)objattr.SecurityDescriptor, sizeof(SECURITY_DESCRIPTOR) ], 0) : 0,
 objattr.SecurityQualityOfService ? ( self->RETURN_OBJECT_ATTRIBUTES.SecurityQualityOfService = *(SECURITY_QUALITY_OF_SERVICE*)GET[ (void*)objattr.SecurityQualityOfService, sizeof(SECURITY_QUALITY_OF_SERVICE) ],0) : 0 ,
self->RETURN_OBJECT_ATTRIBUTES ); inline OBJECT_ATTRIBUTES GET_POBJECT_ATTRIBUTES[ uint64_t pobjattr ] = pobjattr ? GET_OBJECT_ATTRIBUTES[ (nt`OBJECT_ATTRIBUTES*) pobjattr ] : this->NEW_OBJECT_ATTRIBUTES ;
union allSyscalls;
typedef enum KPROCESSOR_MODE { KernelMode, UserMode } KPROCESSOR_MODE;
typedef enum _IO_SESSION_EVENT { IoSessionEventIgnore = 0, IoSessionEventCreated = 1, IoSessionEventTerminated = 2, IoSessionEventConnected = 3, IoSessionEventDisconnected = 4, IoSessionEventLogon = 5, IoSessionEventLogoff = 6, IoSessionEventMax = 7} IO_SESSION_EVENT, *PIO_SESSION_EVENT;
typedef enum _LOGICAL { UNKNOWN,ADD,SUBTRACT,MULTIPLY,DIVIDE,MODULUS,BITSHIFT_LEFT,BITSHIFT_RIGHT,BITWISE_AND,BITWISE_OR,BITWISE_XOR,BITWISE_COMPLEMENT,LOGICAL_NOT,LOGICAL_AND,LOGICAL_OR,EQUAL_TO,NOT_EQUAL_TO,LESS_THAN,GREATER_THAN,LESS_THAN_EQUAL_TO,GREATER_THAN_EQUAL_TO,TERNARY_CONDITIONAL,EXISTS,NOT_EXISTS,INDEX_OF,MAKE_DWORD,MAKE_STRING}LOGICAL;
typedef enum _THREADINFOCLASS { ThreadBasicInformation = 0, ThreadTimes = 1, ThreadPriority = 2, ThreadBasePriority = 3, ThreadAffinityMask = 4, ThreadImpersonationToken = 5, ThreadDescriptorTableEntry = 6, ThreadEnableAlignmentFaultFixup = 7, ThreadEventPair_Reusable = 8, ThreadQuerySetWin32StartAddress = 9, ThreadZeroTlsCell = 10, ThreadPerformanceCount = 11, ThreadAmILastThread = 12, ThreadIdealProcessor = 13, ThreadPriorityBoost = 14, ThreadSetTlsArrayAddress = 15, ThreadIsIoPending = 16, ThreadHideFromDebugger = 17, ThreadBreakOnTermination = 18, ThreadSwitchLegacyState = 19, ThreadIsTerminated = 20, ThreadLastSystemCall = 21, ThreadIoPriority = 22, ThreadCycleTime = 23, ThreadPagePriority = 24, ThreadActualBasePriority = 25, ThreadTebInformation = 26, ThreadCSwitchMon = 27, ThreadCSwitchPmu = 28, ThreadWow64Context = 29, ThreadGroupInformation = 30, ThreadUmsInformation = 31, ThreadCounterProfiling = 32, ThreadIdealProcessorEx = 33, ThreadCpuAccountingInformation = 34, ThreadSuspendCount = 35, ThreadHeterogeneousCpuPolicy = 36, ThreadContainerId = 37, ThreadNameInformation = 38, ThreadSelectedCpuSets = 39, ThreadSystemThreadInformation = 40, ThreadActualGroupAffinity = 41, ThreadDynamicCodePolicyInfo = 42, ThreadExplicitCaseSensitivity = 43, ThreadWorkOnBehalfTicket = 44, ThreadSubsystemInformation = 45, ThreadDbgkWerReportActive = 46, ThreadAttachContainer = 47, ThreadManageWritesToExecutableMemory = 48, ThreadPowerThrottlingState = 49, ThreadWorkloadClass = 50, ThreadCreateStateChange = 51, ThreadApplyStateChange = 52, MaxThreadInfoClass = 53 }THREADINFOCLASS;
typedef enum _ACTIVATION_CONTEXT_INFO_CLASS { ActivationContextBasicInformation = 1, ActivationContextDetailedInformation = 2, AssemblyDetailedInformationInActivationContext = 3, FileInformationInAssemblyOfAssemblyInActivationContext = 4, RunlevelInformationInActivationContext = 5, CompatibilityInformationInActivationContext = 6, ActivationContextManifestResourceName = 7, MaxActivationContextInfoClass = 8, AssemblyDetailedInformationInActivationContxt = 3, FileInformationInAssemblyOfAssemblyInActivationContxt = 4 }ACTIVATION_CONTEXT_INFO_CLASS;
typedef enum _EVENT_INFO_CLASS { EventProviderBinaryTrackInfo = 0, EventProviderSetEnableAllKeywords = 1, EventProviderSetTraits = 2, EventProviderUseDescriptorType = 3, MaxEventInfo = 4 }EVENT_INFO_CLASS;
typedef enum _FILTER_BOOT_OPTION_OPERATION { FilterBootOptionOperationOpenSystemStore = 0, FilterBootOptionOperationSetElement = 1, FilterBootOptionOperationDeleteElement = 2, FilterBootOptionOperationMax = 3 }FILTER_BOOT_OPTION_OPERATION;
typedef enum _LSA_LOOKUP_DOMAIN_INFO_CLASS { AccountDomainInformation = 5, DnsDomainInformation = 12 }LSA_LOOKUP_DOMAIN_INFO_CLASS ;
typedef enum _MEMORY_RESERVE_TYPE { MemoryReserveUserApc = 0, MemoryReserveIoCompletion = 1, MemoryReserveTypeMax = 2 }MEMORY_RESERVE_TYPE;
typedef enum _MEM_EXTENDED_PARAMETER_TYPE { MemExtendedParameterInvalidType = 0, MemExtendedParameterAddressRequirements = 1, MemExtendedParameterNumaNode = 2, MemExtendedParameterPartitionHandle = 3, MemExtendedParameterUserPhysicalHandle = 4, MemExtendedParameterAttributeFlags = 5, MemExtendedParameterImageMachine = 6, MemExtendedParameterMax = 7 }MEM_EXTENDED_PARAMETER_TYPE;
typedef enum _PLUGPLAY_CONTROL_CLASS { PlugPlayControlEnumerateDevice = 0, PlugPlayControlRegisterNewDevice = 1, PlugPlayControlDeregisterDevice = 2, PlugPlayControlInitializeDevice = 3, PlugPlayControlStartDevice = 4, PlugPlayControlUnlockDevice = 5, PlugPlayControlQueryAndRemoveDevice = 6, PlugPlayControlUserResponse = 7, PlugPlayControlGenerateLegacyDevice = 8, PlugPlayControlGetInterfaceDeviceList = 9, PlugPlayControlProperty = 10, PlugPlayControlDeviceClassAssociation = 11, PlugPlayControlGetRelatedDevice = 12, PlugPlayControlGetInterfaceDeviceAlias = 13, PlugPlayControlDeviceStatus = 14, PlugPlayControlGetDeviceDepth = 15, PlugPlayControlQueryDeviceRelations = 16, PlugPlayControlTargetDeviceRelation = 17, PlugPlayControlQueryConflictList = 18, PlugPlayControlRetrieveDock = 19, PlugPlayControlResetDevice = 20, PlugPlayControlHaltDevice = 21, PlugPlayControlGetBlockedDriverList = 22, PlugPlayControlGetDeviceInterfaceEnabled = 23, MaxPlugPlayControl = 24 }PLUGPLAY_CONTROL_CLASS ,*PPLUGPLAY_CONTROL_CLASS ;
typedef enum _POWER_ACTION { PowerActionNone = 0, PowerActionReserved = 1, PowerActionSleep = 2, PowerActionHibernate = 3, PowerActionShutdown = 4, PowerActionShutdownReset = 5, PowerActionShutdownOff = 6, PowerActionWarmEject = 7, PowerActionDisplayOff = 8 }POWER_ACTION;
typedef enum _POWER_INFORMATION_LEVEL { SystemPowerPolicyAc = 0, SystemPowerPolicyDc = 1, VerifySystemPolicyAc = 2, VerifySystemPolicyDc = 3, SystemPowerCapabilities = 4, SystemBatteryState = 5, SystemPowerStateHandler = 6, ProcessorStateHandler = 7, SystemPowerPolicyCurrent = 8, AdministratorPowerPolicy = 9, SystemReserveHiberFile = 10, ProcessorInformation = 11, SystemPowerInformation = 12, ProcessorStateHandler2 = 13, LastWakeTime = 14, LastSleepTime = 15, SystemExecutionState = 16, SystemPowerStateNotifyHandler = 17, ProcessorPowerPolicyAc = 18, ProcessorPowerPolicyDc = 19, VerifyProcessorPowerPolicyAc = 20, VerifyProcessorPowerPolicyDc = 21, ProcessorPowerPolicyCurrent = 22, SystemPowerStateLogging = 23, SystemPowerLoggingEntry = 24, SetPowerSettingValue = 25, NotifyUserPowerSetting = 26, PowerInformationLevelUnused0 = 27, SystemMonitorHiberBootPowerOff = 28, SystemVideoState = 29, TraceApplicationPowerMessage = 30, TraceApplicationPowerMessageEnd = 31, ProcessorPerfStates = 32, ProcessorIdleStates = 33, ProcessorCap = 34, SystemWakeSource = 35, SystemHiberFileInformation = 36, TraceServicePowerMessage = 37, ProcessorLoad = 38, PowerShutdownNotification = 39, MonitorCapabilities = 40, SessionPowerInit = 41, SessionDisplayState = 42, PowerRequestCreate = 43, PowerRequestAction = 44, GetPowerRequestList = 45, ProcessorInformationEx = 46, NotifyUserModeLegacyPowerEvent = 47, GroupPark = 48, ProcessorIdleDomains = 49, WakeTimerList = 50, SystemHiberFileSize = 51, ProcessorIdleStatesHv = 52, ProcessorPerfStatesHv = 53, ProcessorPerfCapHv = 54, ProcessorSetIdle = 55, LogicalProcessorIdling = 56, UserPresence = 57, PowerSettingNotificationName = 58, GetPowerSettingValue = 59, IdleResiliency = 60, SessionRITState = 61, SessionConnectNotification = 62, SessionPowerCleanup = 63, SessionLockState = 64, SystemHiberbootState = 65, PlatformInformation = 66, PdcInvocation = 67, MonitorInvocation = 68, FirmwareTableInformationRegistered = 69, SetShutdownSelectedTime = 70, SuspendResumeInvocation = 71, PlmPowerRequestCreate = 72, ScreenOff = 73, CsDeviceNotification = 74, PlatformRole = 75, LastResumePerformance = 76, DisplayBurst = 77, ExitLatencySamplingPercentage = 78, RegisterSpmPowerSettings = 79, PlatformIdleStates = 80, ProcessorIdleVeto = 81, PlatformIdleVeto = 82, SystemBatteryStatePrecise = 83, ThermalEvent = 84, PowerRequestActionInternal = 85, BatteryDeviceState = 86, PowerInformationInternal = 87, ThermalStandby = 88, SystemHiberFileType = 89, PhysicalPowerButtonPress = 90, QueryPotentialDripsConstraint = 91, EnergyTrackerCreate = 92, EnergyTrackerQuery = 93, UpdateBlackBoxRecorder = 94, SessionAllowExternalDmaDevices = 95, SendSuspendResumeNotification = 96, PowerInformationLevelMaximum = 97 }POWER_INFORMATION_LEVEL;
typedef enum _PROCESS_ACTIVITY_TYPE { ProcessActivityTypeAudio = 0, ProcessActivityTypeMax = 1 }PROCESS_ACTIVITY_TYPE ;
typedef enum _RTL_UMS_THREAD_INFO_CLASS { UmsThreadInvalidInfoClass = 0, UmsThreadUserContext = 1, UmsThreadPriority = 2, UmsThreadAffinity = 3, UmsThreadTeb = 4, UmsThreadIsSuspended = 5, UmsThreadIsTerminated = 6, UmsThreadMaxInfoClass = 7 }RTL_UMS_THREAD_INFO_CLASS;
typedef enum _SECURE_SETTING_VALUE_TYPE { SecureSettingValueTypeBoolean = 0, SecureSettingValueTypeUlong = 1, SecureSettingValueTypeBinary = 2, SecureSettingValueTypeString = 3, SecureSettingValueTypeUnknown = 4 }SECURE_SETTING_VALUE_TYPE,*PSECURE_SETTING_VALUE_TYPE;
typedef enum _SHUTDOWN_ACTION { ShutdownNoReboot = 0, ShutdownReboot = 1, ShutdownPowerOff = 2, ShutdownRebootForRecovery = 3 }SHUTDOWN_ACTION ;
typedef enum _SYSDBG_COMMAND { SysDbgQueryModuleInformation = 0, SysDbgQueryTraceInformation = 1, SysDbgSetTracepoint = 2, SysDbgSetSpecialCall = 3, SysDbgClearSpecialCalls = 4, SysDbgQuerySpecialCalls = 5, SysDbgBreakPoint = 6, SysDbgQueryVersion = 7, SysDbgReadVirtual = 8, SysDbgWriteVirtual = 9, SysDbgReadPhysical = 10, SysDbgWritePhysical = 11, SysDbgReadControlSpace = 12, SysDbgWriteControlSpace = 13, SysDbgReadIoSpace = 14, SysDbgWriteIoSpace = 15, SysDbgReadMsr = 16, SysDbgWriteMsr = 17, SysDbgReadBusData = 18, SysDbgWriteBusData = 19, SysDbgCheckLowMemory = 20, SysDbgEnableKernelDebugger = 21, SysDbgDisableKernelDebugger = 22, SysDbgGetAutoKdEnable = 23, SysDbgSetAutoKdEnable = 24, SysDbgGetPrintBufferSize = 25, SysDbgSetPrintBufferSize = 26, SysDbgGetKdUmExceptionEnable = 27, SysDbgSetKdUmExceptionEnable = 28, SysDbgGetTriageDump = 29, SysDbgGetKdBlockEnable = 30, SysDbgSetKdBlockEnable = 31, SysDbgRegisterForUmBreakInfo = 32, SysDbgGetUmBreakPid = 33, SysDbgClearUmBreakPid = 34, SysDbgGetUmAttachPid = 35, SysDbgClearUmAttachPid = 36, SysDbgGetLiveKernelDump = 37, SysDbgKdPullRemoteFile = 38 }SYSDBG_COMMAND;
typedef enum _TRACE_QUERY_INFO_CLASS { TraceGuidQueryList = 0, TraceGuidQueryInfo = 1, TraceGuidQueryProcess = 2, TraceStackTracingInfo = 3, TraceSystemTraceEnableFlagsInfo = 4, TraceSampledProfileIntervalInfo = 5, TraceProfileSourceConfigInfo = 6, TraceProfileSourceListInfo = 7, TracePmcEventListInfo = 8, TracePmcCounterListInfo = 9, TraceSetDisallowList = 10, TraceVersionInfo = 11, TraceGroupQueryList = 12, TraceGroupQueryInfo = 13, TraceDisallowListQuery = 14, TraceInfoReserved15 = 15, TracePeriodicCaptureStateListInfo = 16, TracePeriodicCaptureStateInfo = 17, TraceProviderBinaryTracking = 18, TraceMaxLoggersQuery = 19, TraceLbrConfigurationInfo = 20, TraceLbrEventListInfo = 21, TraceMaxPmcCounterQuery = 22, TraceStreamCount = 23, TraceStackCachingInfo = 24, TracePmcCounterOwners = 25, TraceUnifiedStackCachingInfo = 26, MaxTraceSetInfoClass = 27 }TRACE_QUERY_INFO_CLASS;
typedef enum _WNF_DATA_SCOPE { WnfDataScopeSystem = 0, WnfDataScopeSession = 1, WnfDataScopeUser = 2, WnfDataScopeProcess = 3, WnfDataScopeMachine = 4, WnfDataScopePhysicalMachine = 5 }WNF_DATA_SCOPE;
typedef enum _WNF_STATE_NAME_INFORMATION { WnfInfoStateNameExist = 0, WnfInfoSubscribersPresent = 1, WnfInfoIsQuiescent = 2 }WNF_STATE_NAME_INFORMATION;
typedef enum _WNF_STATE_NAME_LIFETIME { WnfWellKnownStateName = 0, WnfPermanentStateName = 1, WnfPersistentStateName = 2, WnfTemporaryStateName = 3 }WNF_STATE_NAME_LIFETIME;
typedef enum _WORKERFACTORYINFOCLASS { WorkerFactoryTimeout = 0, WorkerFactoryRetryTimeout = 1, WorkerFactoryIdleTimeout = 2, WorkerFactoryBindingCount = 3, WorkerFactoryThreadMinimum = 4, WorkerFactoryThreadMaximum = 5, WorkerFactoryPaused = 6, WorkerFactoryBasicInformation = 7, WorkerFactoryAdjustThreadGoal = 8, WorkerFactoryCallbackType = 9, WorkerFactoryStackInformation = 10, WorkerFactoryThreadBasePriority = 11, WorkerFactoryTimeoutWaiters = 12, WorkerFactoryFlags = 13, WorkerFactoryThreadSoftMaximum = 14, WorkerFactoryThreadCpuSets = 15, MaxWorkerFactoryInfoClass = 16 }WORKERFACTORYINFOCLASS;
typedef enum _WTS_INFO_CLASS { WTSInitialProgram = 0, WTSApplicationName = 1, WTSWorkingDirectory = 2, WTSOEMId = 3, WTSSessionId = 4, WTSUserName = 5, WTSWinStationName = 6, WTSDomainName = 7, WTSConnectState = 8, WTSClientBuildNumber = 9, WTSClientName = 10, WTSClientDirectory = 11, WTSClientProductId = 12, WTSClientHardwareId = 13, WTSClientAddress = 14, WTSClientDisplay = 15, WTSClientProtocolType = 16, WTSIdleTime = 17, WTSLogonTime = 18, WTSIncomingBytes = 19, WTSOutgoingBytes = 20, WTSIncomingFrames = 21, WTSOutgoingFrames = 22, WTSClientInfo = 23, WTSSessionInfo = 24, WTSSessionInfoEx = 25, WTSConfigInfo = 26, WTSValidationInfo = 27, WTSSessionAddressV4 = 28, WTSIsRemoteSession = 29 }WTS_INFO_CLASS;
typedef enum _ACL_INFORMATION_CLASS { AclRevisionInformation = 1, AclSizeInformation = 2 }ACL_INFORMATION_CLASS ;
typedef enum _ALPC_MESSAGE_INFORMATION_CLASS { AlpcMessageSidInformation = 0, AlpcMessageTokenModifiedIdInformation = 1, AlpcMessageDirectStatusInformation = 2, AlpcMessageHandleInformation = 3 }ALPC_MESSAGE_INFORMATION_CLASS ;
typedef enum _ALPC_PORT_INFORMATION_CLASS { AlpcBasicInformation = 0, AlpcPortInformation = 1, AlpcAssociateCompletionPortInformation = 2, AlpcConnectedSIDInformation = 3, AlpcServerInformation = 4, AlpcMessageZoneInformation = 5, AlpcRegisterCompletionListInformation = 6, AlpcUnregisterCompletionListInformation = 7, AlpcAdjustCompletionListConcurrencyCountInformation = 8, AlpcRegisterCallbackInformation = 9, AlpcCompletionListRundownInformation = 10, AlpcWaitForPortReferences = 11, AlpcServerSessionInformation = 12 }ALPC_PORT_INFORMATION_CLASS ;
typedef enum _ATOM_INFORMATION_CLASS { AtomBasicInformation = 0, AtomTableInformation = 1 }ATOM_INFORMATION_CLASS ;
typedef enum _CLS_LOG_INFORMATION_CLASS { ClfsLogBasicInformation = 0, ClfsLogBasicInformationPhysical = 1, ClfsLogPhysicalNameInformation = 2, ClfsLogStreamIdentifierInformation = 3, ClfsLogSystemMarkingInformation = 4, ClfsLogPhysicalLsnInformation = 5 }CLS_LOG_INFORMATION_CLASS ;
typedef enum _ENLISTMENT_INFORMATION_CLASS { EnlistmentBasicInformation = 0, EnlistmentRecoveryInformation = 1, EnlistmentCrmInformation = 2 }ENLISTMENT_INFORMATION_CLASS ;
typedef enum _ENUM_FILE_INFORMATION_CLASS { ENUM_FILE_ID_BOTH_DIR_INFO = 0, ENUM_FILE_BOTH_DIR_INFO = 1, ENUM_FILE_FULL_DIR_INFO = 2 }ENUM_FILE_INFORMATION_CLASS;
typedef enum _ETW_COVERAGE_SAMPLER_INFORMATION_CLASS { EtwCoverageSamplerCreateInformation = 0, EtwCoverageSamplerQueryInformation = 1, EtwCoverageSamplerBloomInformation = 2, EtwCoverageSamplerPerfInformation = 3, EtwCoverageSamplerStatusInformation = 4, MaxEtwCoverageSamplerInfoClass = 5 }ETW_COVERAGE_SAMPLER_INFORMATION_CLASS ;
typedef enum _EVENT_INFORMATION_CLASS { EventBasicInformation = 0 }EVENT_INFORMATION_CLASS ;
typedef enum _EVENT_TRACE_INFORMATION_CLASS { EventTraceKernelVersionInformation = 0, EventTraceGroupMaskInformation = 1, EventTracePerformanceInformation = 2, EventTraceTimeProfileInformation = 3, EventTraceSessionSecurityInformation = 4, EventTraceSpinlockInformation = 5, EventTraceStackTracingInformation = 6, EventTraceExecutiveResourceInformation = 7, EventTraceHeapTracingInformation = 8, EventTraceHeapSummaryTracingInformation = 9, EventTracePoolTagFilterInformation = 10, EventTracePebsTracingInformation = 11, EventTraceProfileConfigInformation = 12, EventTraceProfileSourceListInformation = 13, EventTraceProfileEventListInformation = 14, EventTraceProfileCounterListInformation = 15, EventTraceStackCachingInformation = 16, EventTraceObjectTypeFilterInformation = 17, EventTraceSoftRestartInformation = 18, EventTraceLastBranchConfigurationInformation = 19, EventTraceLastBranchEventListInformation = 20, EventTraceProfileSourceAddInformation = 21, EventTraceProfileSourceRemoveInformation = 22, EventTraceProcessorTraceConfigurationInformation = 23, EventTraceProcessorTraceEventListInformation = 24, EventTraceCoverageSamplerInformation = 25, EventTraceUnifiedStackCachingInformation = 26, MaxEventTraceInfoClass = 27 }EVENT_TRACE_INFORMATION_CLASS ;
typedef enum _HAL_QUERY_INFORMATION_CLASS { HalInstalledBusInformation = 0, HalProfileSourceInformation = 1, HalInformationClassUnused1 = 2, HalPowerInformation = 3, HalProcessorSpeedInformation = 4, HalCallbackInformation = 5, HalMapRegisterInformation = 6, HalMcaLogInformation = 7, HalFrameBufferCachingInformation = 8, HalDisplayBiosInformation = 9, HalProcessorFeatureInformation = 10, HalNumaTopologyInterface = 11, HalErrorInformation = 12, HalCmcLogInformation = 13, HalCpeLogInformation = 14, HalQueryMcaInterface = 15, HalQueryAMLIIllegalIOPortAddresses = 16, HalQueryMaxHotPlugMemoryAddress = 17, HalPartitionIpiInterface = 18, HalPlatformInformation = 19, HalQueryProfileSourceList = 20, HalInitLogInformation = 21, HalFrequencyInformation = 22, HalProcessorBrandString = 23 }HAL_QUERY_INFORMATION_CLASS ;
typedef enum _HAL_SET_INFORMATION_CLASS { HalProfileSourceInterval = 0, HalProfileSourceInterruptHandler = 1, HalMcaRegisterDriver = 2, HalKernelErrorHandler = 3, HalCmcRegisterDriver = 4, HalCpeRegisterDriver = 5, HalMcaLog = 6, HalCmcLog = 7, HalCpeLog = 8, HalGenerateCmcInterrupt = 9, HalProfileSourceTimerHandler = 10, HalEnlightenment = 11, HalProfileDpgoSourceInterruptHandler = 12 }HAL_SET_INFORMATION_CLASS ;
typedef enum _HEAP_INFORMATION_CLASS { HeapCompatibilityInformation = 0, HeapEnableTerminationOnCorruption = 1, HeapExtendedInformation = 2, HeapOptimizeResources = 3, HeapTaggingInformation = 4, HeapStackDatabase = 5, HeapMemoryLimit = 6, HeapTag = 7, HeapDetailedFailureInformation = -2147483647, HeapSetDebuggingInformation = -2147483646 }HEAP_INFORMATION_CLASS ;
typedef enum _HLSURF_INFORMATION_CLASS { HLSurfDxSharedSurface = 0, HLSurfPresentFlags = 1, HLSurfConfirmedUpdateId = 2, HLSurfSurfaceData = 3, HLSurfSurfaceRegions = 4, HLSurfNewSurfacePending = 5, HLSurfRedirectionStyle = 6, HLSurfOpenCompositorRef = 7, HLSurfCloseCompositorRef = 8, HLSurfSurfaceRegionsAndMove = 9, HLSurfGenerateMoveData = 10, HLSurfInformationLast = 11 }HLSURF_INFORMATION_CLASS ;
typedef enum _HOT_PATCH_INFORMATION_CLASS { ManageHotPatchLoadPatch = 0, ManageHotPatchUnloadPatch = 1, ManageHotPatchQueryPatches = 2, ManageHotPatchLoadPatchForUser = 3, ManageHotPatchUnloadPatchForUser = 4, ManageHotPatchQueryPatchesForUser = 5, ManageHotPatchQueryActivePatches = 6, ManageHotPatchApplyImagePatch = 7, ManageHotPatchQuerySinglePatch = 8, ManageHotPatchCheckEnabled = 9, ManageHotPatchMax = 10 }HOT_PATCH_INFORMATION_CLASS ;
typedef enum _IO_COMPLETION_INFORMATION_CLASS { IoCompletionBasicInformation = 0 }IO_COMPLETION_INFORMATION_CLASS ;
typedef enum _JOURNAL_CHANGE_INFORMATION_CLASS { JournalCreateKey = 0, JournalDeleteKey = 1, JournalRenameKey = 2, JournalSetValue = 3, JournalDeleteValue = 4, JournalSetKeySecurity = 5, JournalSetKeyUserFlags = 6, JournalSetLastWriteTime = 7, JournalBeginTransaction = 8, JournalCommitTransaction = 9, JournalAbortTransaction = 10, MaxJournalChangeAction = 11 }JOURNAL_CHANGE_INFORMATION_CLASS ;
typedef enum _JOURNAL_INFORMATION_CLASS { JournalAbsoluteInformation = 0, JournalClientInformation = 1, MaxJournalInformation = 2 }JOURNAL_INFORMATION_CLASS ;
typedef enum _KEY_INFORMATION_CLASS { KeyBasicInformation = 0, KeyNodeInformation = 1, KeyFullInformation = 2, KeyNameInformation = 3, KeyCachedInformation = 4, KeyFlagsInformation = 5, KeyVirtualizationInformation = 6, KeyHandleTagsInformation = 7, KeyTrustInformation = 8, KeyLayerInformation = 9, MaxKeyInfoClass = 10 }KEY_INFORMATION_CLASS ;
typedef enum _KEY_SET_INFORMATION_CLASS { KeyWriteTimeInformation = 0, KeyWow64FlagsInformation = 1, KeyControlFlagsInformation = 2, KeySetVirtualizationInformation = 3, KeySetDebugInformation = 4, KeySetHandleTagsInformation = 5, KeySetLayerInformation = 6, MaxKeySetInfoClass = 7 }KEY_SET_INFORMATION_CLASS ;
typedef enum _KEY_VALUE_INFORMATION_CLASS { KeyValueBasicInformation = 0, KeyValueFullInformation = 1, KeyValuePartialInformation = 2, KeyValueFullInformationAlign64 = 3, KeyValuePartialInformationAlign64 = 4, KeyValueLayerInformation = 5, MaxKeyValueInfoClass = 6 }KEY_VALUE_INFORMATION_CLASS ;
typedef enum _MAG_INFORMATION_CLASS { MagLensContextInitialize = 0, MagLensContextDeinitialize = 1, MagLensContextTransformOutputSource = 2, MagLensContextTransformOutputMagFac = 3, MagLensContextTransformInput = 4, MagLensContextColorTransform = 5, MagLensContextWindowFilterList = 6, MagLensContextRenderTarget = 7, MagLensContextUpdateRenderTarget = 8, MagLensContextFlags = 9, MagLensContextSamplingMode = 10, MagLensContextLast = 11 }MAG_INFORMATION_CLASS ;
typedef enum _MEMORY_INFORMATION_CLASS { MemoryBasicInformation = 0, MemoryWorkingSetInformation = 1, MemoryMappedFilenameInformation = 2, MemoryRegionInformation = 3, MemoryWorkingSetExInformation = 4, MemorySharedCommitInformation = 5, MemoryImageInformation = 6, MemoryRegionInformationEx = 7, MemoryPrivilegedBasicInformation = 8, MemoryEnclaveImageInformation = 9, MemoryBasicInformationCapped = 10, MemoryPhysicalContiguityInformation = 11, MemoryBadInformation = 12 }MEMORY_INFORMATION_CLASS ;
typedef enum _MUTANT_INFORMATION_CLASS { MutantBasicInformation = 0, MutantOwnerInformation = 1 }MUTANT_INFORMATION_CLASS ;
typedef enum _OBJECT_INFORMATION_CLASS { ObjectBasicInformation = 0, ObjectNameInformation = 1, ObjectTypeInformation = 2, ObjectTypesInformation = 3, ObjectHandleFlagInformation = 4, ObjectSessionInformation = 5, ObjectSessionObjectInformation = 6, MaxObjectInfoClass = 7 }OBJECT_INFORMATION_CLASS ;
typedef enum _PARTITION_INFORMATION_CLASS { SystemMemoryPartitionInformation = 0, SystemMemoryPartitionMoveMemory = 1, SystemMemoryPartitionAddPagefile = 2, SystemMemoryPartitionCombineMemory = 3, SystemMemoryPartitionInitialAddMemory = 4, SystemMemoryPartitionGetMemoryEvents = 5, SystemMemoryPartitionSetAttributes = 6, SystemMemoryPartitionNodeInformation = 7, SystemMemoryPartitionCreateLargePages = 8, SystemMemoryPartitionDedicatedMemoryInformation = 9, SystemMemoryPartitionOpenDedicatedMemory = 10, SystemMemoryPartitionMemoryChargeAttributes = 11, SystemMemoryPartitionClearAttributes = 12, SystemMemoryPartitionMax = 13 }PARTITION_INFORMATION_CLASS ;
typedef enum _POLICY_DOMAIN_INFORMATION_CLASS { PolicyDomainEfsInformation = 2, PolicyDomainKerberosTicketInformation = 3 }POLICY_DOMAIN_INFORMATION_CLASS ;
typedef enum _POLICY_INFORMATION_CLASS { PolicyAuditLogInformation = 1, PolicyAuditEventsInformation = 2, PolicyPrimaryDomainInformation = 3, PolicyPdAccountInformation = 4, PolicyAccountDomainInformation = 5, PolicyLsaServerRoleInformation = 6, PolicyReplicaSourceInformation = 7, PolicyDefaultQuotaInformation = 8, PolicyModificationInformation = 9, PolicyAuditFullSetInformation = 10, PolicyAuditFullQueryInformation = 11, PolicyDnsDomainInformation = 12, PolicyDnsDomainInformationInt = 13, PolicyLocalAccountDomainInformation = 14, PolicyMachineAccountInformation = 15, PolicyLastEntry = 16 }POLICY_INFORMATION_CLASS ;
typedef enum _POLICY_NOTIFICATION_INFORMATION_CLASS { PolicyNotifyAuditEventsInformation = 1, PolicyNotifyAccountDomainInformation = 2, PolicyNotifyServerRoleInformation = 3, PolicyNotifyDnsDomainInformation = 4, PolicyNotifyDomainEfsInformation = 5, PolicyNotifyDomainKerberosTicketInformation = 6, PolicyNotifyMachineAccountPasswordInformation = 7, PolicyNotifyGlobalSaclInformation = 8, PolicyNotifyMax = 9 }POLICY_NOTIFICATION_INFORMATION_CLASS ;
typedef enum _PORT_INFORMATION_CLASS { PortBasicInformation = 0, PortDumpInformation = 1 }PORT_INFORMATION_CLASS ;
typedef enum _PROCESS_INFORMATION_CLASS { ProcessMemoryPriority = 0, ProcessMemoryExhaustionInfo = 1, ProcessAppMemoryInfo = 2, ProcessInPrivateInfo = 3, ProcessPowerThrottling = 4, ProcessReservedValue1 = 5, ProcessTelemetryCoverageInfo = 6, ProcessProtectionLevelInfo = 7, ProcessLeapSecondInfo = 8, ProcessMachineTypeInfo = 9, ProcessInformationClassMax = 10 }PROCESS_INFORMATION_CLASS ;
typedef enum _READ_DIRECTORY_NOTIFY_INFORMATION_CLASS { ReadDirectoryNotifyInformation = 1, ReadDirectoryNotifyExtendedInformation = 2 }READ_DIRECTORY_NOTIFY_INFORMATION_CLASS ;
typedef enum _RESOURCEMANAGER_INFORMATION_CLASS { ResourceManagerBasicInformation = 0, ResourceManagerCompletionInformation = 1 }RESOURCEMANAGER_INFORMATION_CLASS ;
typedef enum _SECTION_INFORMATION_CLASS { SectionBasicInformation = 0, SectionImageInformation = 1, SectionRelocationInformation = 2, SectionOriginalBaseInformation = 3, SectionInternalImageInformation = 4, MaxSectionInfoClass = 5 }SECTION_INFORMATION_CLASS ;
typedef enum _SEMAPHORE_INFORMATION_CLASS { SemaphoreBasicInformation = 0 }SEMAPHORE_INFORMATION_CLASS ;
typedef enum _SYSTEM_INFORMATION_CLASS { SystemBasicInformation = 0, SystemProcessorInformation = 1, SystemPerformanceInformation = 2, SystemTimeOfDayInformation = 3, SystemPathInformation = 4, SystemProcessInformation = 5, SystemCallCountInformation = 6, SystemDeviceInformation = 7, SystemProcessorPerformanceInformation = 8, SystemFlagsInformation = 9, SystemCallTimeInformation = 10, SystemModuleInformation = 11, SystemLocksInformation = 12, SystemStackTraceInformation = 13, SystemPagedPoolInformation = 14, SystemNonPagedPoolInformation = 15, SystemHandleInformation = 16, SystemObjectInformation = 17, SystemPageFileInformation = 18, SystemVdmInstemulInformation = 19, SystemVdmBopInformation = 20, SystemFileCacheInformation = 21, SystemPoolTagInformation = 22, SystemInterruptInformation = 23, SystemDpcBehaviorInformation = 24, SystemFullMemoryInformation = 25, SystemLoadGdiDriverInformation = 26, SystemUnloadGdiDriverInformation = 27, SystemTimeAdjustmentInformation = 28, SystemSummaryMemoryInformation = 29, SystemMirrorMemoryInformation = 30, SystemPerformanceTraceInformation = 31, SystemObsolete0 = 32, SystemExceptionInformation = 33, SystemCrashDumpStateInformation = 34, SystemKernelDebuggerInformation = 35, SystemContextSwitchInformation = 36, SystemRegistryQuotaInformation = 37, SystemExtendServiceTableInformation = 38, SystemPrioritySeperation = 39, SystemVerifierAddDriverInformation = 40, SystemVerifierRemoveDriverInformation = 41, SystemProcessorIdleInformation = 42, SystemLegacyDriverInformation = 43, SystemCurrentTimeZoneInformation = 44, SystemLookasideInformation = 45, SystemTimeSlipNotification = 46, SystemSessionCreate = 47, SystemSessionDetach = 48, SystemSessionInformation = 49, SystemRangeStartInformation = 50, SystemVerifierInformation = 51, SystemVerifierThunkExtend = 52, SystemSessionProcessInformation = 53, SystemLoadGdiDriverInSystemSpace = 54, SystemNumaProcessorMap = 55, SystemPrefetcherInformation = 56, SystemExtendedProcessInformation = 57, SystemRecommendedSharedDataAlignment = 58, SystemComPlusPackage = 59, SystemNumaAvailableMemory = 60, SystemProcessorPowerInformation = 61, SystemEmulationBasicInformation = 62, SystemEmulationProcessorInformation = 63, SystemExtendedHandleInformation = 64, SystemLostDelayedWriteInformation = 65, SystemBigPoolInformation = 66, SystemSessionPoolTagInformation = 67, SystemSessionMappedViewInformation = 68, SystemHotpatchInformation = 69, SystemObjectSecurityMode = 70, SystemWatchdogTimerHandler = 71, SystemWatchdogTimerInformation = 72, SystemLogicalProcessorInformation = 73, SystemWow64SharedInformationObsolete = 74, SystemRegisterFirmwareTableInformationHandler = 75, SystemFirmwareTableInformation = 76, SystemModuleInformationEx = 77, SystemVerifierTriageInformation = 78, SystemSuperfetchInformation = 79, SystemMemoryListInformation = 80, SystemFileCacheInformationEx = 81, SystemThreadPriorityClientIdInformation = 82, SystemProcessorIdleCycleTimeInformation = 83, SystemVerifierCancellationInformation = 84, SystemProcessorPowerInformationEx = 85, SystemRefTraceInformation = 86, SystemSpecialPoolInformation = 87, SystemProcessIdInformation = 88, SystemErrorPortInformation = 89, SystemBootEnvironmentInformation = 90, SystemHypervisorInformation = 91, SystemVerifierInformationEx = 92, SystemTimeZoneInformation = 93, SystemImageFileExecutionOptionsInformation = 94, SystemCoverageInformation = 95, SystemPrefetchPatchInformation = 96, SystemVerifierFaultsInformation = 97, SystemSystemPartitionInformation = 98, SystemSystemDiskInformation = 99, SystemProcessorPerformanceDistribution = 100, SystemNumaProximityNodeInformation = 101, SystemDynamicTimeZoneInformation = 102, SystemCodeIntegrityInformation = 103, SystemProcessorMicrocodeUpdateInformation = 104, SystemProcessorBrandString = 105, SystemVirtualAddressInformation = 106, SystemLogicalProcessorAndGroupInformation = 107, SystemProcessorCycleTimeInformation = 108, SystemStoreInformation = 109, SystemRegistryAppendString = 110, SystemAitSamplingValue = 111, SystemVhdBootInformation = 112, SystemCpuQuotaInformation = 113, SystemNativeBasicInformation = 114, SystemErrorPortTimeouts = 115, SystemLowPriorityIoInformation = 116, SystemBootEntropyInformation = 117, SystemVerifierCountersInformation = 118, SystemPagedPoolInformationEx = 119, SystemSystemPtesInformationEx = 120, SystemNodeDistanceInformation = 121, SystemAcpiAuditInformation = 122, SystemBasicPerformanceInformation = 123, SystemQueryPerformanceCounterInformation = 124, SystemSessionBigPoolInformation = 125, SystemBootGraphicsInformation = 126, SystemScrubPhysicalMemoryInformation = 127, SystemBadPageInformation = 128, SystemProcessorProfileControlArea = 129, SystemCombinePhysicalMemoryInformation = 130, SystemEntropyInterruptTimingInformation = 131, SystemConsoleInformation = 132, SystemPlatformBinaryInformation = 133, SystemPolicyInformation = 134, SystemHypervisorProcessorCountInformation = 135, SystemDeviceDataInformation = 136, SystemDeviceDataEnumerationInformation = 137, SystemMemoryTopologyInformation = 138, SystemMemoryChannelInformation = 139, SystemBootLogoInformation = 140, SystemProcessorPerformanceInformationEx = 141, SystemCriticalProcessErrorLogInformation = 142, SystemSecureBootPolicyInformation = 143, SystemPageFileInformationEx = 144, SystemSecureBootInformation = 145, SystemEntropyInterruptTimingRawInformation = 146, SystemPortableWorkspaceEfiLauncherInformation = 147, SystemFullProcessInformation = 148, SystemKernelDebuggerInformationEx = 149, SystemBootMetadataInformation = 150, SystemSoftRebootInformation = 151, SystemElamCertificateInformation = 152, SystemOfflineDumpConfigInformation = 153, SystemProcessorFeaturesInformation = 154, SystemRegistryReconciliationInformation = 155, SystemEdidInformation = 156, SystemManufacturingInformation = 157, SystemEnergyEstimationConfigInformation = 158, SystemHypervisorDetailInformation = 159, SystemProcessorCycleStatsInformation = 160, SystemVmGenerationCountInformation = 161, SystemTrustedPlatformModuleInformation = 162, SystemKernelDebuggerFlags = 163, SystemCodeIntegrityPolicyInformation = 164, SystemIsolatedUserModeInformation = 165, SystemHardwareSecurityTestInterfaceResultsInformation = 166, SystemSingleModuleInformation = 167, SystemAllowedCpuSetsInformation = 168, SystemVsmProtectionInformation = 169, SystemInterruptCpuSetsInformation = 170, SystemSecureBootPolicyFullInformation = 171, SystemCodeIntegrityPolicyFullInformation = 172, SystemAffinitizedInterruptProcessorInformation = 173, SystemRootSiloInformation = 174, SystemCpuSetInformation = 175, SystemCpuSetTagInformation = 176, SystemWin32WerStartCallout = 177, SystemSecureKernelProfileInformation = 178, SystemCodeIntegrityPlatformManifestInformation = 179, SystemInterruptSteeringInformation = 180, SystemSupportedProcessorArchitectures = 181, SystemMemoryUsageInformation = 182, SystemCodeIntegrityCertificateInformation = 183, SystemPhysicalMemoryInformation = 184, SystemControlFlowTransition = 185, SystemKernelDebuggingAllowed = 186, SystemActivityModerationExeState = 187, SystemActivityModerationUserSettings = 188, SystemCodeIntegrityPoliciesFullInformation = 189, SystemCodeIntegrityUnlockInformation = 190, SystemIntegrityQuotaInformation = 191, SystemFlushInformation = 192, SystemProcessorIdleMaskInformation = 193, SystemSecureDumpEncryptionInformation = 194, SystemWriteConstraintInformation = 195, SystemKernelVaShadowInformation = 196, SystemHypervisorSharedPageInformation = 197, SystemFirmwareBootPerformanceInformation = 198, SystemCodeIntegrityVerificationInformation = 199, SystemFirmwarePartitionInformation = 200, SystemSpeculationControlInformation = 201, SystemDmaGuardPolicyInformation = 202, SystemEnclaveLaunchControlInformation = 203, SystemWorkloadAllowedCpuSetsInformation = 204, SystemCodeIntegrityUnlockModeInformation = 205, SystemLeapSecondInformation = 206, SystemFlags2Information = 207, SystemSecurityModelInformation = 208, SystemCodeIntegritySyntheticCacheInformation = 209, SystemFeatureConfigurationInformation = 210, SystemFeatureConfigurationSectionInformation = 211, SystemFeatureUsageSubscriptionInformation = 212, SystemSecureSpeculationControlInformation = 213, SystemSpacesBootInformation = 214, SystemFwRamdiskInformation = 215, SystemWheaIpmiHardwareInformation = 216, SystemDifSetRuleClassInformation = 217, SystemDifClearRuleClassInformation = 218, SystemDifApplyPluginVerificationOnDriver = 219, SystemDifRemovePluginVerificationOnDriver = 220, SystemShadowStackInformation = 221, SystemBuildVersionInformation = 222, SystemPoolLimitInformation = 223, SystemCodeIntegrityAddDynamicStore = 224, SystemCodeIntegrityClearDynamicStores = 225, SystemDifPoolTrackingInformation = 226, SystemPoolZeroingInformation = 227, SystemDpcWatchdogInformation = 228, SystemDpcWatchdogInformation2 = 229, SystemSupportedProcessorArchitectures2 = 230, SystemSingleProcessorRelationshipInformation = 231, SystemXfgCheckFailureInformation = 232, MaxSystemInfoClass = 233 }SYSTEM_INFORMATION_CLASS;
typedef enum _SYMBOLIC_LINK_INFO_CLASS { SymbolicLinkGlobalInformation = 1, SymbolicLinkAccessMask = 2 }SYMBOLIC_LINK_INFO_CLASS ;
typedef enum _THREAD_INFORMATION_CLASS { ThreadMemoryPriority = 0, ThreadAbsoluteCpuPriority = 1, ThreadDynamicCodePolicy = 2, ThreadPowerThrottling = 3, ThreadInformationClassMax = 4 }THREAD_INFORMATION_CLASS ;
typedef enum _TIMER_INFORMATION_CLASS { TimerBasicInformation = 0 }TIMER_INFORMATION_CLASS ;
typedef enum _TIMER_SET_INFORMATION_CLASS { TimerSetCoalescableTimer = 0, MaxTimerInfoClass = 1 }TIMER_SET_INFORMATION_CLASS ;
typedef enum _TOKEN_INFORMATION_CLASS { TokenUser = 1, TokenGroups = 2, TokenPrivileges = 3, TokenOwner = 4, TokenPrimaryGroup = 5, TokenDefaultDacl = 6, TokenSource = 7, TokenType = 8, TokenImpersonationLevel = 9, TokenStatistics = 10, TokenRestrictedSids = 11, TokenSessionId = 12, TokenGroupsAndPrivileges = 13, TokenSessionReference = 14, TokenSandBoxInert = 15, TokenAuditPolicy = 16, TokenOrigin = 17, TokenElevationType = 18, TokenLinkedToken = 19, TokenElevation = 20, TokenHasRestrictions = 21, TokenAccessInformation = 22, TokenVirtualizationAllowed = 23, TokenVirtualizationEnabled = 24, TokenIntegrityLevel = 25, TokenUIAccess = 26, TokenMandatoryPolicy = 27, TokenLogonSid = 28, TokenIsAppContainer = 29, TokenCapabilities = 30, TokenAppContainerSid = 31, TokenAppContainerNumber = 32, TokenUserClaimAttributes = 33, TokenDeviceClaimAttributes = 34, TokenRestrictedUserClaimAttributes = 35, TokenRestrictedDeviceClaimAttributes = 36, TokenDeviceGroups = 37, TokenRestrictedDeviceGroups = 38, TokenSecurityAttributes = 39, TokenIsRestricted = 40, TokenProcessTrustLevel = 41, TokenPrivateNameSpace = 42, TokenSingletonAttributes = 43, TokenBnoIsolation = 44, TokenChildProcessFlags = 45, TokenIsLessPrivilegedAppContainer = 46, TokenIsSandboxed = 47, TokenOriginatingProcessTrustLevel = 48, MaxTokenInfoClass = 49 }TOKEN_INFORMATION_CLASS ;
typedef enum _TRACE_INFORMATION_CLASS { TraceIdClass = 0, TraceHandleClass = 1, TraceEnableFlagsClass = 2, TraceEnableLevelClass = 3, GlobalLoggerHandleClass = 4, EventLoggerHandleClass = 5, AllLoggerHandlesClass = 6, TraceHandleByNameClass = 7, LoggerEventsLostClass = 8, TraceSessionSettingsClass = 9, LoggerEventsLoggedClass = 10, DiskIoNotifyRoutinesClass = 11, TraceInformationClassReserved1 = 12, AllPossibleNotifyRoutinesClass = 12, FltIoNotifyRoutinesClass = 13, TraceInformationClassReserved2 = 14, WdfNotifyRoutinesClass = 15, MaxTraceInformationClass = 16 }TRACE_INFORMATION_CLASS ;
typedef enum _TRANSACTIONMANAGER_INFORMATION_CLASS { TransactionManagerBasicInformation = 0, TransactionManagerLogInformation = 1, TransactionManagerLogPathInformation = 2, TransactionManagerRecoveryInformation = 4, TransactionManagerOnlineProbeInformation = 3, TransactionManagerOldestTransactionInformation = 5 }TRANSACTIONMANAGER_INFORMATION_CLASS ;
typedef enum _TRANSACTION_INFORMATION_CLASS { TransactionBasicInformation = 0, TransactionPropertiesInformation = 1, TransactionEnlistmentInformation = 2, TransactionSuperiorEnlistmentInformation = 3, TransactionBindInformation = 4, TransactionDTCPrivateInformation = 5 }TRANSACTION_INFORMATION_CLASS ;
typedef enum _TRUSTED_INFORMATION_CLASS { TrustedDomainNameInformation = 1, TrustedControllersInformation = 2, TrustedPosixOffsetInformation = 3, TrustedPasswordInformation = 4, TrustedDomainInformationBasic = 5, TrustedDomainInformationEx = 6, TrustedDomainAuthInformation = 7, TrustedDomainFullInformation = 8, TrustedDomainAuthInformationInternal = 9, TrustedDomainFullInformationInternal = 10, TrustedDomainInformationEx2Internal = 11, TrustedDomainFullInformation2Internal = 12, TrustedDomainSupportedEncryptionTypes = 13 }TRUSTED_INFORMATION_CLASS ;
typedef enum _VIRTUAL_MEMORY_INFORMATION_CLASS { VmPrefetchInformation = 0, VmPagePriorityInformation = 1, VmCfgCallTargetInformation = 2, VmPageDirtyStateInformation = 3, VmImageHotPatchInformation = 4, VmPhysicalContiguityInformation = 5, VmVirtualMachinePrepopulateInformation = 6, VmRemoveFromWorkingSetInformation = 7 }VIRTUAL_MEMORY_INFORMATION_CLASS ;
typedef enum _WATCHDOG_INFORMATION_CLASS { WdInfoTimeoutValue = 0, WdInfoResetTimer = 1, WdInfoStopTimer = 2, WdInfoStartTimer = 3, WdInfoTriggerAction = 4, WdInfoState = 5, WdInfoTriggerReset = 6, WdInfoNop = 7, WdInfoGeneratedLastReset = 8, WdInfoInvalid = 9 }WATCHDOG_INFORMATION_CLASS ;
typedef enum _WIN32_MEMORY_INFORMATION_CLASS { MemoryRegionInfo = 0 }WIN32_MEMORY_INFORMATION_CLASS;
typedef enum _WIN32_MEMORY_PARTITION_INFORMATION_CLASS { MemoryPartitionInfo = 0, MemoryPartitionDedicatedMemoryInfo = 1 }WIN32_MEMORY_PARTITION_INFORMATION_CLASS ;
typedef enum _NTSTATUS{ STATUS_SUCCESS = 0x00000000 , STATUS_WAIT_1 = 0x00000001 , STATUS_WAIT_2 = 0x00000002 , STATUS_WAIT_3 = 0x00000003 , STATUS_WAIT_63 = 0x0000003f , STATUS_ABANDONED = 0x00000080 , STATUS_ABANDONED_WAIT_0 = 0x00000080 , STATUS_ABANDONED_WAIT_63 = 0x000000bf , STATUS_USER_APC = 0x000000c0 , STATUS_ALREADY_COMPLETE = 0x000000ff , STATUS_KERNEL_APC = 0x00000100 , STATUS_ALERTED = 0x00000101 , STATUS_TIMEOUT = 0x00000102 , STATUS_PENDING = 0x00000103 , STATUS_REPARSE = 0x00000104 , STATUS_MORE_ENTRIES = 0x00000105 , STATUS_NOT_ALL_ASSIGNED = 0x00000106 , STATUS_SOME_NOT_MAPPED = 0x00000107 , STATUS_OPLOCK_BREAK_IN_PROGRESS = 0x00000108 , STATUS_VOLUME_MOUNTED = 0x00000109 , STATUS_RXACT_COMMITTED = 0x0000010a , STATUS_NOTIFY_CLEANUP = 0x0000010b , STATUS_NOTIFY_ENUM_DIR = 0x0000010c , STATUS_NO_QUOTAS_FOR_ACCOUNT = 0x0000010d , STATUS_PRIMARY_TRANSPORT_CONNECT_FAILED = 0x0000010e , STATUS_PAGE_FAULT_TRANSITION = 0x00000110 , STATUS_PAGE_FAULT_DEMAND_ZERO = 0x00000111 , STATUS_PAGE_FAULT_COPY_ON_WRITE = 0x00000112 , STATUS_PAGE_FAULT_GUARD_PAGE = 0x00000113 , STATUS_PAGE_FAULT_PAGING_FILE = 0x00000114 , STATUS_CACHE_PAGE_LOCKED = 0x00000115 , STATUS_CRASH_DUMP = 0x00000116 , STATUS_BUFFER_ALL_ZEROS = 0x00000117 , STATUS_REPARSE_OBJECT = 0x00000118 , STATUS_RESOURCE_REQUIREMENTS_CHANGED = 0x00000119 , STATUS_TRANSLATION_COMPLETE = 0x00000120 , STATUS_DS_MEMBERSHIP_EVALUATED_LOCALLY = 0x00000121 , STATUS_NOTHING_TO_TERMINATE = 0x00000122 , STATUS_PROCESS_NOT_IN_JOB = 0x00000123 , STATUS_PROCESS_IN_JOB = 0x00000124 , STATUS_VOLSNAP_HIBERNATE_READY = 0x00000125 , STATUS_FSFILTER_OP_COMPLETED_SUCCESSFULLY = 0x00000126 , STATUS_INTERRUPT_VECTOR_ALREADY_CONNECTED = 0x00000127 , STATUS_INTERRUPT_STILL_CONNECTED = 0x00000128 , STATUS_PROCESS_CLONED = 0x00000129 , STATUS_FILE_LOCKED_WITH_ONLY_READERS = 0x0000012a , STATUS_FILE_LOCKED_WITH_WRITERS = 0x0000012b , STATUS_VALID_IMAGE_HASH = 0x0000012c , STATUS_VALID_CATALOG_HASH = 0x0000012d , STATUS_VALID_STRONG_CODE_HASH = 0x0000012e , STATUS_GHOSTED = 0x0000012f , STATUS_DATA_OVERWRITTEN = 0x00000130 , STATUS_RESOURCEMANAGER_READ_ONLY = 0x00000202 , STATUS_RING_PREVIOUSLY_EMPTY = 0x00000210 , STATUS_RING_PREVIOUSLY_FULL = 0x00000211 , STATUS_RING_PREVIOUSLY_ABOVE_QUOTA = 0x00000212 , STATUS_RING_NEWLY_EMPTY = 0x00000213 , STATUS_RING_SIGNAL_OPPOSITE_ENDPOINT = 0x00000214 , STATUS_OPLOCK_SWITCHED_TO_NEW_HANDLE = 0x00000215 , STATUS_OPLOCK_HANDLE_CLOSED = 0x00000216 , STATUS_WAIT_FOR_OPLOCK = 0x00000367 , STATUS_REPARSE_GLOBAL = 0x00000368 , DBG_EXCEPTION_HANDLED = 0x00010001 , DBG_CONTINUE = 0x00010002 , STATUS_FLT_IO_COMPLETE = 0x001c0001 , STATUS_OBJECT_NAME_EXISTS = 0x40000000 , STATUS_THREAD_WAS_SUSPENDED = 0x40000001 , STATUS_WORKING_SET_LIMIT_RANGE = 0x40000002 , STATUS_IMAGE_NOT_AT_BASE = 0x40000003 , STATUS_RXACT_STATE_CREATED = 0x40000004 , STATUS_SEGMENT_NOTIFICATION = 0x40000005 , STATUS_LOCAL_USER_SESSION_KEY = 0x40000006 , STATUS_BAD_CURRENT_DIRECTORY = 0x40000007 , STATUS_SERIAL_MORE_WRITES = 0x40000008 , STATUS_REGISTRY_RECOVERED = 0x40000009 , STATUS_FT_READ_RECOVERY_FROM_BACKUP = 0x4000000a , STATUS_FT_WRITE_RECOVERY = 0x4000000b , STATUS_SERIAL_COUNTER_TIMEOUT = 0x4000000c , STATUS_NULL_LM_PASSWORD = 0x4000000d , STATUS_IMAGE_MACHINE_TYPE_MISMATCH = 0x4000000e , STATUS_RECEIVE_PARTIAL = 0x4000000f , STATUS_RECEIVE_EXPEDITED = 0x40000010 , STATUS_RECEIVE_PARTIAL_EXPEDITED = 0x40000011 , STATUS_EVENT_DONE = 0x40000012 , STATUS_EVENT_PENDING = 0x40000013 , STATUS_CHECKING_FILE_SYSTEM = 0x40000014 , STATUS_FATAL_APP_EXIT = 0x40000015 , STATUS_PREDEFINED_HANDLE = 0x40000016 , STATUS_WAS_UNLOCKED = 0x40000017 , STATUS_SERVICE_NOTIFICATION = 0x40000018 , STATUS_WAS_LOCKED = 0x40000019 , STATUS_LOG_HARD_ERROR = 0x4000001a , STATUS_ALREADY_WIN32 = 0x4000001b , STATUS_WX86_UNSIMULATE = 0x4000001c , STATUS_WX86_CONTINUE = 0x4000001d , STATUS_WX86_SINGLE_STEP = 0x4000001e , STATUS_WX86_BREAKPOINT = 0x4000001f , STATUS_WX86_EXCEPTION_CONTINUE = 0x40000020 , STATUS_WX86_EXCEPTION_LASTCHANCE = 0x40000021 , STATUS_WX86_EXCEPTION_CHAIN = 0x40000022 , STATUS_IMAGE_MACHINE_TYPE_MISMATCH_EXE = 0x40000023 , STATUS_NO_YIELD_PERFORMED = 0x40000024 , STATUS_TIMER_RESUME_IGNORED = 0x40000025 , STATUS_ARBITRATION_UNHANDLED = 0x40000026 , STATUS_CARDBUS_NOT_SUPPORTED = 0x40000027 , STATUS_WX86_CREATEWX86TIB = 0x40000028 , STATUS_MP_PROCESSOR_MISMATCH = 0x40000029 , STATUS_HIBERNATED = 0x4000002a , STATUS_RESUME_HIBERNATION = 0x4000002b , STATUS_FIRMWARE_UPDATED = 0x4000002c , STATUS_DRIVERS_LEAKING_LOCKED_PAGES = 0x4000002d , STATUS_MESSAGE_RETRIEVED = 0x4000002e}NTSTATUS ;
typedef enum _EVENT_TYPE{ NotificationEvent = 0, SynchronizationEvent = 1 }EVENT_TYPE ;
typedef enum _FILE_DISPOSITION{ SUPERSEDE = 0x00000000, OPEN = 0x00000001, CREATE = 0x00000002, OPEN_IF = 0x00000003, OVERWRITE = 0x00000004, OVERWRITE_IF = 0x00000005}FILE_DISPOSITION ;
typedef enum _CREATE_FILE_TYPE{ CreateFileTypeNone = 0, CreateFileTypeNamedPipe = 1, CreateFileTypeMailslot = 2}CREATE_FILE_TYPE ;
typedef enum _SEP_TOKEN_AUDIT_POLICY_VALUE { SepTokenAuditPolicyNotSet = 0x0, SepTokenAuditPolicySetAndNull = 0x1, SepTokenAuditPolicySetAndNonNull = 0x2 }SEP_TOKEN_AUDIT_POLICY_VALUE;
typedef enum _TIMER_TYPE { NotificationTimer, SynchronizationTimer } TIMER_TYPE;
typedef enum _OPERATIONRESULT { FILE_SUPERSEDED , FILE_OPENED , FILE_CREATED , FILE_OVERWRITTEN , FILE_EXISTS , FILE_DOES_NOT_EXIST} OPERATIONRESULT;
typedef enum _WAIT_TYPE { WaitAll, WaitAny, WaitNotification, WaitDequeue, WaitDpc } WAIT_TYPE;
typedef enum _KPROFILE_SOURCE { ProfileTime = 0, ProfileAlignmentFixup = 1, ProfileTotalIssues = 2, ProfilePipelineDry = 3, ProfileLoadInstructions = 4, ProfilePipelineFrozen = 5, ProfileBranchInstructions = 6, ProfileTotalNonissues = 7, ProfileDcacheMisses = 8, ProfileIcacheMisses = 9, ProfileCacheMisses = 10, ProfileBranchMispredictions = 11, ProfileStoreInstructions = 12, ProfileFpInstructions = 13, ProfileIntegerInstructions = 14, Profile2Issue = 15, Profile3Issue = 16, Profile4Issue = 17, ProfileSpecialInstructions = 18, ProfileTotalCycles = 19, ProfileIcacheIssues = 20, ProfileDcacheAccesses = 21, ProfileMemoryBarrierCycles = 22, ProfileLoadLinkedIssues = 23, ProfileMaximum = 24 }KPROFILE_SOURCE ;
typedef enum _SE_SIGNING_LEVEL{ UNCHECKED =0x00000000, UNSIGNED =0x00000001, ENTERPRISE =0x00000002, CUSTOM_1 =0x00000003, AUTHENTICODE =0x00000004, CUSTOM_2 =0x00000005, STORE =0x00000006, CUSTOM_3 =0x00000007, ANTIMALWARE =0x00000007, MICROSOFT =0x00000008, CUSTOM_4 =0x00000009, CUSTOM_5 =0x0000000A, DYNAMIC_CODEGEN =0x0000000B, WINDOWS =0x0000000C, CUSTOM_7 =0x0000000D, WINDOWS_TCB =0x0000000E, CUSTOM_6 =0x0000000F } SE_SIGNING_LEVEL;
typedef enum _PROCESSINFOCLASS { ProcessBasicInformation = 0, ProcessQuotaLimits = 1, ProcessIoCounters = 2, ProcessVmCounters = 3, ProcessTimes = 4, ProcessBasePriority = 5, ProcessRaisePriority = 6, ProcessDebugPort = 7, ProcessExceptionPort = 8, ProcessAccessToken = 9, ProcessLdtInformation = 10, ProcessLdtSize = 11, ProcessDefaultHardErrorMode = 12, ProcessIoPortHandlers = 13, ProcessPooledUsageAndLimits = 14, ProcessWorkingSetWatch = 15, ProcessUserModeIOPL = 16, ProcessEnableAlignmentFaultFixup = 17, ProcessPriorityClass = 18, ProcessWx86Information = 19, ProcessHandleCount = 20, ProcessAffinityMask = 21, ProcessPriorityBoost = 22, ProcessDeviceMap = 23, ProcessSessionInformation = 24, ProcessForegroundInformation = 25, ProcessWow64Information = 26, ProcessImageFileName = 27, ProcessLUIDDeviceMapsEnabled = 28, ProcessBreakOnTermination = 29, ProcessDebugObjectHandle = 30, ProcessDebugFlags = 31, ProcessHandleTracing = 32, ProcessIoPriority = 33, ProcessExecuteFlags = 34, ProcessTlsInformation = 35, ProcessCookie = 36, ProcessImageInformation = 37, ProcessCycleTime = 38, ProcessPagePriority = 39, ProcessInstrumentationCallback = 40, ProcessThreadStackAllocation = 41, ProcessWorkingSetWatchEx = 42, ProcessImageFileNameWin32 = 43, ProcessImageFileMapping = 44, ProcessAffinityUpdateMode = 45, ProcessMemoryAllocationMode = 46, ProcessGroupInformation = 47, ProcessTokenVirtualizationEnabled = 48, ProcessOwnerInformation = 49, ProcessWindowInformation = 50, ProcessHandleInformation = 51, ProcessMitigationPolicy = 52, ProcessDynamicFunctionTableInformation = 53, ProcessHandleCheckingMode = 54, ProcessKeepAliveCount = 55, ProcessRevokeFileHandles = 56, ProcessWorkingSetControl = 57, ProcessHandleTable = 58, ProcessCheckStackExtentsMode = 59, ProcessCommandLineInformation = 60, ProcessProtectionInformation = 61, ProcessMemoryExhaustion = 62, ProcessFaultInformation = 63, ProcessTelemetryIdInformation = 64, ProcessCommitReleaseInformation = 65, ProcessDefaultCpuSetsInformation = 66, ProcessAllowedCpuSetsInformation = 67, ProcessReserved1Information = 66, ProcessReserved2Information = 67, ProcessSubsystemProcess = 68, ProcessJobMemoryInformation = 69, ProcessInPrivate = 70, ProcessRaiseUMExceptionOnInvalidHandleClose = 71, ProcessIumChallengeResponse = 72, ProcessChildProcessInformation = 73, ProcessHighGraphicsPriorityInformation = 74, MaxProcessInfoClass = 75 } PROCESSINFOCLASS, *PPROCESSINFOCLASS;
typedef enum _JOBOBJECTINFOCLASS { JobObjectBasicAccountingInformation = 1, JobObjectBasicLimitInformation = 2, JobObjectBasicProcessIdList = 3, JobObjectBasicUIRestrictions = 4, JobObjectSecurityLimitInformation = 5, JobObjectEndOfJobTimeInformation = 6, JobObjectAssociateCompletionPortInformation = 7, JobObjectBasicAndIoAccountingInformation = 8, JobObjectExtendedLimitInformation = 9, JobObjectJobSetInformation = 10, JobObjectGroupInformation = 11, JobObjectNotificationLimitInformation = 12, JobObjectLimitViolationInformation = 13, JobObjectGroupInformationEx = 14, JobObjectCpuRateControlInformation = 15, JobObjectCompletionFilter = 16, JobObjectCompletionCounter = 17, JobObjectFreezeInformation = 18, JobObjectExtendedAccountingInformation = 19, JobObjectWakeInformation = 20, JobObjectBackgroundInformation = 21, JobObjectSchedulingRankBiasInformation = 22, JobObjectTimerVirtualizationInformation = 23, JobObjectCycleTimeNotification = 24, JobObjectClearEvent = 25, JobObjectInterferenceInformation = 26, JobObjectClearPeakJobMemoryUsed = 27, JobObjectMemoryUsageInformation = 28, JobObjectSharedCommit = 29, JobObjectContainerId = 30, JobObjectIoRateControlInformation = 31, JobObjectSiloRootDirectory = 37, JobObjectServerSiloBasicInformation = 38, JobObjectServerSiloUserSharedData = 39, JobObjectServerSiloInitialize = 40, JobObjectServerSiloRunningState = 41, JobObjectIoAttribution = 42, JobObjectMemoryPartitionInformation = 43, JobObjectContainerTelemetryId = 44, JobObjectSiloSystemRoot = 45, JobObjectEnergyTrackingState = 46, JobObjectThreadImpersonationInformation = 47, JobObjectReserved1Information = 18, JobObjectReserved2Information = 19, JobObjectReserved3Information = 20, JobObjectReserved4Information = 21, JobObjectReserved5Information = 22, JobObjectReserved6Information = 23, JobObjectReserved7Information = 24, JobObjectReserved8Information = 25, JobObjectReserved9Information = 26, JobObjectReserved10Information = 27, JobObjectReserved11Information = 28, JobObjectReserved12Information = 29, JobObjectReserved13Information = 30, JobObjectReserved14Information = 31, JobObjectNetRateControlInformation = 32, JobObjectNotificationLimitInformation2 = 33, JobObjectLimitViolationInformation2 = 34, JobObjectCreateSilo = 35, JobObjectSiloBasicInformation = 36, JobObjectReserved15Information = 37, JobObjectReserved16Information = 38, JobObjectReserved17Information = 39, JobObjectReserved18Information = 40, JobObjectReserved19Information = 41, JobObjectReserved20Information = 42, JobObjectReserved21Information = 43, JobObjectReserved22Information = 44, JobObjectReserved23Information = 45, JobObjectReserved24Information = 46, JobObjectReserved25Information = 47, MaxJobObjectInfoClass = 48}JOBOBJECTINFOCLASS;
typedef enum _SECTION_INHERIT { ViewShare = 1, ViewUnmap = 2 }SECTION_INHERIT ;
typedef enum _KTMOBJECT_TYPE { KTMOBJECT_TRANSACTION = 0, KTMOBJECT_TRANSACTION_MANAGER = 1, KTMOBJECT_RESOURCE_MANAGER = 2, KTMOBJECT_ENLISTMENT = 3, KTMOBJECT_INVALID = 4 }KTMOBJECT_TYPE;
typedef enum _IO_SESSION_STATE { IoSessionStateCreated = 1, IoSessionStateInitialized = 2, IoSessionStateConnected = 3, IoSessionStateDisconnected = 4, IoSessionStateDisconnectedLoggedOn = 5, IoSessionStateLoggedOn = 6, IoSessionStateLoggedOff = 7, IoSessionStateTerminated = 8, IoSessionStateMax = 9 }IO_SESSION_STATE;
typedef enum _AUDIT_EVENT_TYPE { AuditEventObjectAccess = 0, AuditEventDirectoryServiceAccess = 1 } AUDIT_EVENT_TYPE, *PAUDIT_EVENT_TYPE;
typedef enum _MI_ENCLAVE_TYPE { MiEnclaveNone = 0, MiEnclaveHardware = 1, MiEnclaveVsm = 2, MiEnclaveMax = 3 }MI_ENCLAVE_TYPE;
typedef enum _IO_CTRL_CODE{ IOCTL_CDROM_DISK_TYPE = 0x00020040, IOCTL_CDROM_READ_TOC = 0x00024000 ,IOCTL_CDROM_SEEK_AUDIO_MSF = 0x00024004 ,IOCTL_CDROM_STOP_AUDIO = 0x00024008 ,IOCTL_CDROM_PAUSE_AUDIO = 0x0002400c ,IOCTL_CDROM_SIMBAD = 0x0002400c ,IOCTL_CDROM_RESUME_AUDIO = 0x00024010 ,IOCTL_CDROM_GET_VOLUME = 0x00024014 ,IOCTL_CDROM_PLAY_AUDIO_MSF = 0x00024018 ,IOCTL_CDROM_SET_VOLUME = 0x00024028 ,IOCTL_CDROM_READ_Q_CHANNEL = 0x0002402c ,IOCTL_CDROM_GET_CONTROL = 0x00024034 ,OBSOLETE_IOCTL_CDROM_GET_CONTROL = 0x00024034 ,IOCTL_CDROM_GET_LAST_SESSION = 0x00024038 ,IOCTL_CDROM_RAW_READ = 0x0002403e ,IOCTL_CDROM_GET_DRIVE_GEOMETRY = 0x0002404c ,IOCTL_CDROM_GET_DRIVE_GEOMETRY_EX = 0x00024050 ,IOCTL_CDROM_READ_TOC_EX = 0x00024054 ,IOCTL_CDROM_GET_CONFIGURATION = 0x00024058 ,IOCTL_CDROM_SET_SPEED = 0x00024060 ,IOCTL_CDROM_GET_INQUIRY_DATA = 0x00024064 ,IOCTL_CDROM_ENABLE_STREAMING = 0x00024068 ,IOCTL_CDROM_GET_PERFORMANCE = 0x00024070 ,IOCTL_CDROM_CHECK_VERIFY = 0x00024800 ,IOCTL_CDROM_MEDIA_REMOVAL = 0x00024804 ,IOCTL_CDROM_EJECT_MEDIA = 0x00024808 ,IOCTL_CDROM_LOAD_MEDIA = 0x0002480c ,IOCTL_CDROM_RESERVE = 0x00024810 ,IOCTL_CDROM_RELEASE = 0x00024814 ,IOCTL_CDROM_FIND_NEW_DEVICES = 0x00024818 ,IOCTL_CDROM_UNLOAD_DRIVER = 0x00025008 ,IOCTL_CDROM_EXCLUSIVE_ACCESS = 0x0002c05c ,IOCTL_CDROM_SEND_OPC_INFORMATION = 0x0002c06c ,IOCTL_SCSI_GET_INQUIRY_DATA = 0x0004100c ,IOCTL_SCSI_GET_CAPABILITIES = 0x00041010 ,IOCTL_SCSI_GET_ADDRESS = 0x00041018 ,IOCTL_SCSI_RESCAN_BUS = 0x0004101c ,IOCTL_SCSI_GET_DUMP_POINTERS = 0x00041020 ,IOCTL_SCSI_FREE_DUMP_POINTERS = 0x00041024 ,IOCTL_SPB_LOCK_CONTROLLER = 0x00041800 ,IOCTL_SPB_UNLOCK_CONTROLLER = 0x00041804 ,IOCTL_SPB_EXECUTE_SEQUENCE = 0x00041808 ,IOCTL_SPB_LOCK_CONNECTION = 0x0004180c ,IOCTL_SPB_UNLOCK_CONNECTION = 0x00041810 ,IOCTL_SPB_FULL_DUPLEX = 0x00041814 ,IOCTL_GET_TUPLE_DATA = 0x00042ee0 ,IOCTL_SOCKET_INFORMATION = 0x00042ef0 ,IOCTL_SD_SUBMIT_REQUEST = 0x00043073 ,IOCTL_SD_GET_SOCKET_COUNT = 0x00043074 ,IOCTL_SD_GET_ADAPTER_SOCKET_INFO = 0x00043078 ,IOCTL_SD_GET_DEVICE_INFO = 0x0004307c ,IOCTL_SD_SET_CONTROLLER_SPEED = 0x00043080 ,IOCTL_PCMCIA_HIDE_DEVICE = 0x0004af08 ,IOCTL_PCMCIA_REVEAL_DEVICE = 0x0004af0c ,IOCTL_SCSI_PASS_THROUGH = 0x0004d004 ,IOCTL_SCSI_MINIPORT = 0x0004d008 ,IOCTL_SCSI_PASS_THROUGH_DIRECT = 0x0004d014 ,IOCTL_IDE_PASS_THROUGH = 0x0004d028 ,IOCTL_ATA_PASS_THROUGH = 0x0004d02c ,IOCTL_ATA_PASS_THROUGH_DIRECT = 0x0004d030 ,IOCTL_ATA_MINIPORT = 0x0004d034 ,IOCTL_MINIPORT_PROCESS_SERVICE_IRP = 0x0004d038 ,IOCTL_MPIO_PASS_THROUGH_PATH = 0x0004d03c ,IOCTL_MPIO_PASS_THROUGH_PATH_DIRECT = 0x0004d040 ,IOCTL_SCSI_PASS_THROUGH_EX = 0x0004d044 ,IOCTL_SCSI_PASS_THROUGH_DIRECT_EX = 0x0004d048 ,IOCTL_MPIO_PASS_THROUGH_PATH_EX = 0x0004d04c ,IOCTL_MPIO_PASS_THROUGH_PATH_DIRECT_EX = 0x0004d050 ,FSCTL_DFS_GET_REFERRALS = 0x00060194 ,FSCTL_DFS_GET_REFERRALS_EX = 0x000601B0 ,IOCTL_DISK_GET_DRIVE_GEOMETRY = 0x00070000 ,IOCTL_DISK_VERIFY = 0x00070014 ,IOCTL_DISK_PERFORMANCE = 0x00070020 ,IOCTL_DISK_IS_WRITABLE = 0x00070024 ,IOCTL_DISK_LOGGING = 0x00070028 ,IOCTL_DISK_HISTOGRAM_STRUCTURE = 0x00070030 ,IOCTL_DISK_HISTOGRAM_DATA = 0x00070034 ,IOCTL_DISK_HISTOGRAM_RESET = 0x00070038 ,IOCTL_DISK_REQUEST_STRUCTURE = 0x0007003c ,IOCTL_DISK_REQUEST_DATA = 0x00070040 ,IOCTL_DISK_CONTROLLER_NUMBER = 0x00070044 ,IOCTL_DISK_GET_PARTITION_INFO_EX = 0x00070048 ,IOCTL_DISK_GET_DRIVE_LAYOUT_EX = 0x00070050 ,IOCTL_DISK_PERFORMANCE_OFF = 0x00070060 ,IOCTL_DISK_GET_DRIVE_GEOMETRY_EX = 0x000700a0 ,IOCTL_DISK_GET_PARTITION_ATTRIBUTES = 0x000700e8 ,IOCTL_DISK_GET_DISK_ATTRIBUTES = 0x000700f0 ,IOCTL_DISK_IS_CLUSTERED = 0x000700f8 ,IOCTL_DISK_UPDATE_PROPERTIES = 0x00070140 ,IOCTL_DISK_GET_CLUSTER_INFO = 0x00070214 ,IOCTL_DISK_GET_PERFORMANCE_INFO = 0x00070224 ,IOCTL_DISK_SENSE_DEVICE = 0x000703e0 ,IOCTL_DISK_INTERNAL_SET_VERIFY = 0x00070403 ,IOCTL_DISK_INTERNAL_CLEAR_VERIFY = 0x00070407 ,IOCTL_DISK_INTERNAL_SET_NOTIFY = 0x00070408 ,IOCTL_DISK_GET_MEDIA_TYPES = 0x00070c00 ,IOCTL_SFFDISK_QUERY_DEVICE_PROTOCOL = 0x00071e80 ,IOCTL_SFFDISK_PARTITION_ACCESS = 0x00071e8c ,IOCTL_SFFDISK_MMC_SOFT_RESET = 0x00071e90 ,IOCTL_SFFDISK_MMC_QUERY_EXT_CSD = 0x00071e94 ,IOCTL_SFFDISK_MMC_QUERY_BKOPS_STATE = 0x00071e98 ,IOCTL_DISK_GET_PARTITION_INFO = 0x00074004 ,IOCTL_DISK_GET_DRIVE_LAYOUT = 0x0007400c ,IOCTL_DISK_GET_LENGTH_INFO = 0x0007405c ,SMART_GET_VERSION = 0x00074080 ,IOCTL_DISK_GET_CACHE_INFORMATION = 0x000740d4 ,IOCTL_DISK_GET_WRITE_CACHE_STATE = 0x000740dc ,OBSOLETE_DISK_GET_WRITE_CACHE_STATE = 0x000740dc ,IOCTL_DISK_GET_CACHE_SETTING = 0x000740e0 ,IOCTL_DISK_GET_SAN_SETTINGS = 0x00074200 ,IOCTL_DISK_GET_SNAPSHOT_INFO = 0x00074208 ,IOCTL_DISK_ARE_VOLUMES_READY = 0x0007421c ,IOCTL_DISK_CHECK_VERIFY = 0x00074800 ,IOCTL_DISK_MEDIA_REMOVAL = 0x00074804 ,IOCTL_DISK_EJECT_MEDIA = 0x00074808 ,IOCTL_DISK_LOAD_MEDIA = 0x0007480c ,IOCTL_DISK_RESERVE = 0x00074810 ,IOCTL_DISK_RELEASE = 0x00074814 ,IOCTL_DISK_FIND_NEW_DEVICES = 0x00074818 ,IOCTL_TAPE_FIND_NEW_DEVICES = 0x00074818 ,IOCTL_SFFDISK_DEVICE_COMMAND = 0x00079e84 ,IOCTL_SFFDISK_DEVICE_PASSWORD = 0x00079e88 ,IOCTL_DISK_SET_PARTITION_INFO = 0x0007c008 ,IOCTL_DISK_SET_DRIVE_LAYOUT = 0x0007c010 ,IOCTL_DISK_FORMAT_TRACKS = 0x0007c018 ,IOCTL_DISK_REASSIGN_BLOCKS = 0x0007c01c ,IOCTL_DISK_FORMAT_TRACKS_EX = 0x0007c02c ,IOCTL_DISK_SET_PARTITION_INFO_EX = 0x0007c04c ,IOCTL_DISK_SET_DRIVE_LAYOUT_EX = 0x0007c054 ,IOCTL_DISK_CREATE_DISK = 0x0007c058 ,IOCTL_DISK_COPY_DATA = 0x0007c064 ,SMART_SEND_DRIVE_COMMAND = 0x0007c084 ,SMART_RCV_DRIVE_DATA = 0x0007c088 ,IOCTL_DISK_REASSIGN_BLOCKS_EX = 0x0007c0a4 ,IOCTL_DISK_UPDATE_DRIVE_SIZE = 0x0007c0c8 ,IOCTL_DISK_GROW_PARTITION = 0x0007c0d0 ,IOCTL_DISK_SET_CACHE_INFORMATION = 0x0007c0d8 ,IOCTL_DISK_SET_CACHE_SETTING = 0x0007c0e4 ,IOCTL_DISK_SET_PARTITION_ATTRIBUTES = 0x0007c0ec ,IOCTL_DISK_SET_DISK_ATTRIBUTES = 0x0007c0f4 ,IOCTL_DISK_DELETE_DRIVE_LAYOUT = 0x0007c100 ,IOCTL_DISK_SET_SAN_SETTINGS = 0x0007c204 ,IOCTL_DISK_SET_SNAPSHOT_INFO = 0x0007c20c ,IOCTL_DISK_RESET_SNAPSHOT_INFO = 0x0007c210 ,IOCTL_DISK_SET_CLUSTER_INFO = 0x0007c218 ,IOCTL_DISK_VOLUMES_ARE_READY = 0x0007c220 ,IOCTL_DISK_FORMAT_DRIVE = 0x0007c3cc ,IOCTL_DISK_SIMBAD = 0x0007d000 ,FSCTL_REQUEST_OPLOCK_LEVEL_1 = 0x00090000 ,FSCTL_REQUEST_OPLOCK_LEVEL_2 = 0x00090004 ,FSCTL_REQUEST_BATCH_OPLOCK = 0x00090008 ,FSCTL_OPLOCK_BREAK_ACKNOWLEDGE = 0x0009000c ,FSCTL_OPBATCH_ACK_CLOSE_PENDING = 0x00090010 ,FSCTL_OPLOCK_BREAK_NOTIFY = 0x00090014 ,FSCTL_LOCK_VOLUME = 0x00090018 ,FSCTL_UNLOCK_VOLUME = 0x0009001c ,FSCTL_DISMOUNT_VOLUME = 0x00090020 ,SCARD_IOCTL_LISTREADERGROUPSA = 0x00090020 ,SCARD_IOCTL_LISTREADERGROUPSW = 0x00090024 ,FSCTL_IS_VOLUME_MOUNTED = 0x00090028 ,SCARD_IOCTL_LISTREADERSA = 0x00090028 ,FSCTL_IS_PATHNAME_VALID = 0x0009002c ,SCARD_IOCTL_LISTREADERSW = 0x0009002c ,FSCTL_MARK_VOLUME_DIRTY = 0x00090030 ,FSCTL_QUERY_RETRIEVAL_POINTERS = 0x0009003b ,FSCTL_GET_COMPRESSION = 0x0009003c ,FSCTL_SET_BOOTLOADER_ACCESSED = 0x0009004f ,FSCTL_OPLOCK_BREAK_ACK_NO_2 = 0x00090050 ,SCARD_IOCTL_INTRODUCEREADERGROUPA = 0x00090050 ,FSCTL_INVALIDATE_VOLUMES = 0x00090054 ,SCARD_IOCTL_INTRODUCEREADERGROUPW = 0x00090054 ,FSCTL_QUERY_FAT_BPB = 0x00090058 ,SCARD_IOCTL_FORGETREADERGROUPA = 0x00090058 ,FSCTL_REQUEST_FILTER_OPLOCK = 0x0009005c ,SCARD_IOCTL_FORGETREADERGROUPW = 0x0009005c ,FSCTL_FILESYSTEM_GET_STATISTICS = 0x00090060 ,SCARD_IOCTL_INTRODUCEREADERA = 0x00090060 ,FSCTL_GET_NTFS_VOLUME_DATA = 0x00090064 ,SCARD_IOCTL_INTRODUCEREADERW = 0x00090064 ,FSCTL_GET_NTFS_FILE_RECORD = 0x00090068 ,SCARD_IOCTL_FORGETREADERA = 0x00090068 ,SCARD_IOCTL_FORGETREADERW = 0x0009006c ,FSCTL_GET_VOLUME_BITMAP = 0x0009006f ,SCARD_IOCTL_ADDREADERTOGROUPA = 0x00090070 ,FSCTL_GET_RETRIEVAL_POINTERS = 0x00090073 ,FSCTL_MOVE_FILE = 0x00090074 ,SCARD_IOCTL_ADDREADERTOGROUPW = 0x00090074 ,FSCTL_IS_VOLUME_DIRTY = 0x00090078 ,SCARD_IOCTL_REMOVEREADERFROMGROUPA = 0x00090078 ,SCARD_IOCTL_REMOVEREADERFROMGROUPW = 0x0009007c ,FSCTL_ALLOW_EXTENDED_DASD_IO = 0x00090083 ,FSCTL_FIND_FILES_BY_SID = 0x0009008f ,FSCTL_SET_OBJECT_ID = 0x00090098 ,FSCTL_GET_OBJECT_ID = 0x0009009c ,FSCTL_DELETE_OBJECT_ID = 0x000900a0 ,FSCTL_SET_REPARSE_POINT = 0x000900a4 ,FSCTL_GET_REPARSE_POINT = 0x000900a8 ,FSCTL_DELETE_REPARSE_POINT = 0x000900ac ,FSCTL_ENUM_USN_DATA = 0x000900b3 ,FSCTL_READ_USN_JOURNAL = 0x000900bb ,FSCTL_SET_OBJECT_ID_EXTENDED = 0x000900bc ,FSCTL_CREATE_OR_GET_OBJECT_ID = 0x000900c0 ,FSCTL_SET_SPARSE = 0x000900c4 ,FSCTL_SET_ENCRYPTION = 0x000900d7 ,FSCTL_ENCRYPTION_FSCTL_IO = 0x000900db ,FSCTL_WRITE_RAW_ENCRYPTED = 0x000900df ,FSCTL_READ_RAW_ENCRYPTED = 0x000900e3 ,FSCTL_CREATE_USN_JOURNAL = 0x000900e7 ,FSCTL_READ_FILE_USN_DATA = 0x000900eb ,FSCTL_WRITE_USN_CLOSE_RECORD = 0x000900ef ,FSCTL_EXTEND_VOLUME = 0x000900f0 ,FSCTL_QUERY_USN_JOURNAL = 0x000900f4 ,FSCTL_DELETE_USN_JOURNAL = 0x000900f8 ,FSCTL_MARK_HANDLE = 0x000900fc ,FSCTL_SIS_COPYFILE = 0x00090100 ,FSCTL_RECALL_FILE = 0x00090117 ,FSCTL_FILE_PREFETCH = 0x00090120 ,FSCTL_QUERY_SPARING_INFO = 0x00090138 ,FSCTL_QUERY_ON_DISK_VOLUME_INFO = 0x0009013c ,FSCTL_SET_VOLUME_COMPRESSION_STATE = 0x00090140 ,FSCTL_SET_ZERO_ON_DEALLOCATION = 0x00090194 ,FSCTL_SET_REPAIR = 0x00090198 ,FSCTL_GET_REPAIR = 0x0009019c ,FSCTL_WAIT_FOR_REPAIR = 0x000901a0 ,FSCTL_INITIATE_REPAIR = 0x000901a8 ,FSCTL_CSC_INTERNAL = 0x000901af ,FSCTL_SHRINK_VOLUME = 0x000901b0 ,FSCTL_SET_SHORT_NAME_BEHAVIOR = 0x000901b4 ,FSCTL_DFSR_SET_GHOST_HANDLE_STATE = 0x000901b8 ,FSCTL_QUERY_PAGEFILE_ENCRYPTION = 0x000901e8 ,FSCTL_RESET_VOLUME_ALLOCATION_HINTS = 0x000901ec ,FSCTL_QUERY_DEPENDENT_VOLUME = 0x000901f0 ,FSCTL_SD_GLOBAL_CHANGE = 0x000901f4 ,FSCTL_TXFS_READ_BACKUP_INFORMATION2 = 0x000901f8 ,FSCTL_LOOKUP_STREAM_FROM_CLUSTER = 0x000901fc ,FSCTL_TXFS_WRITE_BACKUP_INFORMATION2 = 0x00090200 ,FSCTL_FILE_TYPE_NOTIFICATION = 0x00090204 ,FSCTL_GET_BOOT_AREA_INFO = 0x00090230 ,FSCTL_GET_RETRIEVAL_POINTER_BASE = 0x00090234 ,FSCTL_SET_PERSISTENT_VOLUME_STATE = 0x00090238 ,FSCTL_QUERY_PERSISTENT_VOLUME_STATE = 0x0009023c ,FSCTL_REQUEST_OPLOCK = 0x00090240 ,FSCTL_CSV_TUNNEL_REQUEST = 0x00090244 ,FSCTL_IS_CSV_FILE = 0x00090248 ,FSCTL_QUERY_FILE_SYSTEM_RECOGNITION = 0x0009024c ,FSCTL_CSV_GET_VOLUME_PATH_NAME = 0x00090250 ,FSCTL_CSV_GET_VOLUME_NAME_FOR_VOLUME_MOUNT_POINT = 0x00090254 ,FSCTL_CSV_GET_VOLUME_PATH_NAMES_FOR_VOLUME_NAME = 0x00090258 ,FSCTL_IS_FILE_ON_CSV_VOLUME = 0x0009025c ,FSCTL_CORRUPTION_HANDLING = 0x00090260 ,FSCTL_CSV_INTERNAL = 0x0009026c ,FSCTL_SET_PURGE_FAILURE_MODE = 0x00090270 ,FSCTL_QUERY_FILE_LAYOUT = 0x00090277 ,FSCTL_IS_VOLUME_OWNED_BYCSVFS = 0x00090278 ,FSCTL_GET_INTEGRITY_INFORMATION = 0x0009027c ,FSCTL_QUERY_FILE_REGIONS = 0x00090284 ,FSCTL_DEDUP_FILE = 0x00090294 ,FSCTL_DEDUP_QUERY_REPARSE_INFO = 0x000902a3 ,FSCTL_RKF_INTERNAL = 0x000902af ,FSCTL_SCRUB_DATA = 0x000902b0 ,FSCTL_DISABLE_LOCAL_BUFFERING = 0x000902b8 ,FSCTL_CSV_MGMT_LOCK = 0x000902bc ,FSCTL_CSV_QUERY_DOWN_LEVEL_FILE_SYSTEM_CHARACTERISTICS = 0x000902c0 ,FSCTL_ADVANCE_FILE_ID = 0x000902c4 ,FSCTL_CSV_SYNC_TUNNEL_REQUEST = 0x000902c8 ,FSCTL_CSV_QUERY_VETO_FILE_DIRECT_IO = 0x000902cc ,FSCTL_WRITE_USN_REASON = 0x000902d0 ,FSCTL_CSV_CONTROL = 0x000902d4 ,FSCTL_GET_REFS_VOLUME_DATA = 0x000902d8 ,FSCTL_CSV_H_BREAKING_SYNC_TUNNEL_REQUEST = 0x000902e4 ,FSCTL_QUERY_STORAGE_CLASSES = 0x000902ec ,FSCTL_QUERY_REGION_INFO = 0x000902f0 ,FSCTL_USN_TRACK_MODIFIED_RANGES = 0x000902f4 ,FSCTL_QUERY_SHARED_VIRTUAL_DISK_SUPPORT = 0x00090300 ,FSCTL_SVHDX_SYNC_TUNNEL_REQUEST = 0x00090304 ,FSCTL_SVHDX_SET_INITIATOR_INFORMATION = 0x00090308 ,FSCTL_SET_EXTERNAL_BACKING = 0x0009030c ,FSCTL_GET_EXTERNAL_BACKING = 0x00090310 ,FSCTL_DELETE_EXTERNAL_BACKING = 0x00090314 ,FSCTL_ENUM_EXTERNAL_BACKING = 0x00090318 ,FSCTL_ENUM_OVERLAY = 0x0009031f ,FSCTL_SPARSE_OVERALLOCATE = 0x0009034c ,FSCTL_STORAGE_QOS_CONTROL = 0x00090350 ,FSCTL_INITIATE_FILE_METADATA_OPTIMIZATION = 0x0009035c ,FSCTL_QUERY_FILE_METADATA_OPTIMIZATION = 0x00090360 ,FSCTL_SVHDX_ASYNC_TUNNEL_REQUEST = 0x00090364 ,FSCTL_GET_WOF_VERSION = 0x00090368 ,FSCTL_HCS_SYNC_TUNNEL_REQUEST = 0x0009036c ,FSCTL_HCS_ASYNC_TUNNEL_REQUEST = 0x00090370 ,FSCTL_QUERY_EXTENT_READ_CACHE_INFO = 0x00090377 ,FSCTL_QUERY_REFS_VOLUME_COUNTER_INFO = 0x0009037b ,FSCTL_CLEAN_VOLUME_METADATA = 0x0009037c ,FSCTL_SET_INTEGRITY_INFORMATION_EX = 0x00090380 ,FSCTL_SUSPEND_OVERLAY = 0x00090384 ,FSCTL_VIRTUAL_STORAGE_QUERY_PROPERTY = 0x00090388 ,FSCTL_FILESYSTEM_GET_STATISTICS_EX = 0x0009038c ,FSCTL_SECURITY_ID_CHECK = 0x000940b7 ,FSCTL_QUERY_ALLOCATED_RANGES = 0x000940cf ,FSCTL_READ_FROM_PLEX = 0x0009411e ,FSCTL_TXFS_QUERY_RM_INFORMATION = 0x00094148 ,FSCTL_TXFS_READ_BACKUP_INFORMATION = 0x00094160 ,FSCTL_TXFS_GET_METADATA_INFO = 0x0009416c ,FSCTL_TXFS_GET_TRANSACTED_VERSION = 0x00094170 ,FSCTL_TXFS_TRANSACTION_ACTIVE = 0x0009418c ,FSCTL_TXFS_LIST_TRANSACTION_LOCKED_FILES = 0x000941e0 ,FSCTL_TXFS_LIST_TRANSACTIONS = 0x000941e4 ,FSCTL_OFFLOAD_READ = 0x00094264 ,FSCTL_DEDUP_QUERY_FILE_HASHES = 0x0009429b ,FSCTL_DEDUP_QUERY_RANGE_STATE = 0x0009429f ,FSCTL_SET_ZERO_DATA = 0x000980c8 ,FSCTL_ENABLE_UPGRADE = 0x000980d0 ,FSCTL_MAKE_MEDIA_COMPATIBLE = 0x00098130 ,FSCTL_SET_DEFECT_MANAGEMENT = 0x00098134 ,FSCTL_TXFS_MODIFY_RM = 0x00098144 ,FSCTL_TXFS_ROLLFORWARD_REDO = 0x00098150 ,FSCTL_TXFS_ROLLFORWARD_UNDO = 0x00098154 ,FSCTL_TXFS_START_RM = 0x00098158 ,FSCTL_TXFS_SHUTDOWN_RM = 0x0009815c ,FSCTL_TXFS_WRITE_BACKUP_INFORMATION = 0x00098164 ,FSCTL_TXFS_CREATE_SECONDARY_RM = 0x00098168 ,FSCTL_TXFS_SAVEPOINT_INFORMATION = 0x00098178 ,FSCTL_TXFS_CREATE_MINIVERSION = 0x0009817c ,FSCTL_FILE_LEVEL_TRIM = 0x00098208 ,FSCTL_OFFLOAD_WRITE = 0x00098268 ,FSCTL_ADD_OVERLAY = 0x00098330 ,FSCTL_REMOVE_OVERLAY = 0x00098334 ,FSCTL_UPDATE_OVERLAY = 0x00098338 ,FSCTL_DUPLICATE_EXTENTS_TO_FILE = 0x00098344 ,FSCTL_SET_COMPRESSION = 0x0009c040 ,FSCTL_SIS_LINK_FILES = 0x0009c104 ,FSCTL_SET_INTEGRITY_INFORMATION = 0x0009c280 ,FSCTL_REPAIR_COPIES = 0x0009c2b4 ,IOCTL_KEYBOARD_QUERY_ATTRIBUTES = 0x000b0000 ,IOCTL_HID_GET_DEVICE_DESCRIPTOR = 0x000b0003 ,IOCTL_KEYBOARD_SET_TYPEMATIC = 0x000b0004 ,IOCTL_HID_GET_REPORT_DESCRIPTOR = 0x000b0007 ,IOCTL_KEYBOARD_SET_INDICATORS = 0x000b0008 ,IOCTL_HID_READ_REPORT = 0x000b000b ,IOCTL_HID_WRITE_REPORT = 0x000b000f ,IOCTL_HID_GET_STRING = 0x000b0013 ,IOCTL_HID_ACTIVATE_DEVICE = 0x000b001f ,IOCTL_KEYBOARD_QUERY_TYPEMATIC = 0x000b0020 ,IOCTL_HID_DEACTIVATE_DEVICE = 0x000b0023 ,IOCTL_HID_GET_DEVICE_ATTRIBUTES = 0x000b0027 ,IOCTL_HID_SEND_IDLE_NOTIFICATION_REQUEST = 0x000b002b ,IOCTL_KEYBOARD_QUERY_INDICATORS = 0x000b0040 ,IOCTL_UMDF_HID_SET_FEATURE = 0x000b0053 ,IOCTL_UMDF_HID_GET_FEATURE = 0x000b0057 ,IOCTL_UMDF_HID_SET_OUTPUT_REPORT = 0x000b005b ,IOCTL_UMDF_HID_GET_INPUT_REPORT = 0x000b005f ,IOCTL_UMDF_GET_PHYSICAL_DESCRIPTOR = 0x000b0063 ,IOCTL_KEYBOARD_QUERY_INDICATOR_TRANSLATION = 0x000b0080 ,IOCTL_KEYBOARD_INSERT_DATA = 0x000b0100 ,IOCTL_HID_GET_DRIVER_CONFIG = 0x000b0190 ,IOCTL_HID_SET_FEATURE = 0x000b0191 ,IOCTL_HID_GET_FEATURE = 0x000b0192 ,IOCTL_HID_GET_COLLECTION_DESCRIPTOR = 0x000b0193 ,IOCTL_HID_SET_DRIVER_CONFIG = 0x000b0194 ,IOCTL_HID_SET_OUTPUT_REPORT = 0x000b0195 ,IOCTL_HID_FLUSH_QUEUE = 0x000b0197 ,IOCTL_HID_GET_POLL_FREQUENCY_MSEC = 0x000b0198 ,IOCTL_GET_PHYSICAL_DESCRIPTOR = 0x000b019a ,IOCTL_HID_SET_POLL_FREQUENCY_MSEC = 0x000b019c ,IOCTL_HID_GET_HARDWARE_ID = 0x000b019e ,IOCTL_GET_NUM_DEVICE_INPUT_BUFFERS = 0x000b01a0 ,IOCTL_HID_GET_INPUT_REPORT = 0x000b01a2 ,IOCTL_SET_NUM_DEVICE_INPUT_BUFFERS = 0x000b01a4 ,IOCTL_HID_GET_COLLECTION_INFORMATION = 0x000b01a8 ,IOCTL_HID_GET_MANUFACTURER_STRING = 0x000b01ba ,IOCTL_HID_GET_PRODUCT_STRING = 0x000b01be ,IOCTL_HID_GET_SERIALNUMBER_STRING = 0x000b01c2 ,IOCTL_HID_GET_INDEXED_STRING = 0x000b01e2 ,IOCTL_HID_GET_MS_GENRE_DESCRIPTOR = 0x000b01e6 ,IOCTL_INTERNAL_KEYBOARD_CONNECT = 0x000b0203 ,IOCTL_HID_ENABLE_SECURE_READ = 0x000b020b ,IOCTL_HID_DISABLE_SECURE_READ = 0x000b020f ,IOCTL_INTERNAL_KEYBOARD_DISCONNECT = 0x000b0403 ,IOCTL_INTERNAL_KEYBOARD_ENABLE = 0x000b0803 ,IOCTL_KEYBOARD_QUERY_IME_STATUS = 0x000b1000 ,IOCTL_INTERNAL_KEYBOARD_DISABLE = 0x000b1003 ,IOCTL_KEYBOARD_SET_IME_STATUS = 0x000b1004 ,IOCTL_INTERNAL_I8042_HOOK_KEYBOARD = 0x000b3fc3 ,IOCTL_INTERNAL_I8042_KEYBOARD_WRITE_BUFFER = 0x000b3fc7 ,IOCTL_INTERNAL_I8042_CONTROLLER_WRITE_BUFFER = 0x000b3fcb ,IOCTL_INTERNAL_I8042_KEYBOARD_START_INFORMATION = 0x000b3fcf ,FSCTL_MAILSLOT_PEEK = 0x000c4003 ,IOCTL_MOUSE_QUERY_ATTRIBUTES = 0x000f0000 ,IOCTL_MOUSE_INSERT_DATA = 0x000f0004 ,IOCTL_INTERNAL_MOUSE_CONNECT = 0x000f0203 ,IOCTL_INTERNAL_MOUSE_DISCONNECT = 0x000f0403 ,IOCTL_INTERNAL_MOUSE_ENABLE = 0x000f0803 ,IOCTL_INTERNAL_MOUSE_DISABLE = 0x000f1003 ,IOCTL_INTERNAL_I8042_HOOK_MOUSE = 0x000f3fc3 ,IOCTL_INTERNAL_I8042_MOUSE_WRITE_BUFFER = 0x000f3fc7 ,IOCTL_INTERNAL_I8042_MOUSE_START_INFORMATION = 0x000f3fcf ,FSCTL_PIPE_ASSIGN_EVENT = 0x00110000 ,FSCTL_PIPE_DISCONNECT = 0x00110004 ,FSCTL_PIPE_LISTEN = 0x00110008 ,FSCTL_PIPE_QUERY_EVENT = 0x00110010 ,FSCTL_PIPE_WAIT = 0x00110018 ,FSCTL_PIPE_IMPERSONATE = 0x0011001c ,FSCTL_PIPE_SET_CLIENT_PROCESS = 0x00110020 ,FSCTL_PIPE_QUERY_CLIENT_PROCESS = 0x00110024 ,FSCTL_PIPE_GET_PIPE_ATTRIBUTE = 0x00110028 ,FSCTL_PIPE_SET_PIPE_ATTRIBUTE = 0x0011002c ,FSCTL_PIPE_GET_CONNECTION_ATTRIBUTE = 0x00110030 ,FSCTL_PIPE_SET_CONNECTION_ATTRIBUTE = 0x00110034 ,FSCTL_PIPE_GET_HANDLE_ATTRIBUTE = 0x00110038 ,FSCTL_PIPE_SET_HANDLE_ATTRIBUTE = 0x0011003c ,FSCTL_PIPE_PEEK = 0x0011400c ,FSCTL_PIPE_INTERNAL_READ = 0x00115ff4 ,FSCTL_PIPE_INTERNAL_READ_OVFLOW = 0x00116000 ,FSCTL_PIPE_FLUSH = 0x00118040 ,FSCTL_PIPE_SET_CONTAINER_AWARE = 0x00118044 ,FSCTL_PIPE_INTERNAL_WRITE = 0x00119ff8 ,FSCTL_PIPE_TRANSCEIVE = 0x0011c017 ,FSCTL_PIPE_INTERNAL_TRANSCEIVE = 0x0011dfff ,IOCTL_IP_SET_FIREWALL_HOOK = 0x00128030 ,IOCTL_PF_SET_EXTENSION_POINTER = 0x00128058 ,FSCTL_SRV_REQUEST_RESUME_KEY = 0x00140078 ,FSCTL_LMR_GET_LINK_TRACKING_INFORMATION = 0x001400e8 ,FSCTL_LMR_SET_LINK_TRACKING_INFORMATION = 0x001400ec ,IOCTL_LMR_ARE_FILE_OBJECTS_ON_SAME_SERVER = 0x001400f0 ,IOCTL_REDIR_QUERY_PATH = 0x0014018f ,IOCTL_REDIR_QUERY_PATH_EX = 0x00140193 ,FSCTL_LMR_REQUEST_RESILIENCY = 0x001401D4 ,FSCTL_QUERY_NETWORK_INTERFACE_INFO = 0x001401FC ,FSCTL_VALIDATE_NEGOTIATE_INFO = 0x00140204 ,FSCTL_SRV_ENUMERATE_SNAPSHOTS = 0x00144064 ,FSCTL_SRV_COPYCHUNK = 0x001440F2 ,FSCTL_SRV_READ_HASH = 0x001441bb ,FSCTL_SRV_COPYCHUNK_WRITE = 0x001480F2 ,IOCTL_PAR_QUERY_INFORMATION = 0x00160004 ,IOCTL_PAR_SET_INFORMATION = 0x00160008 ,IOCTL_PAR_QUERY_DEVICE_ID = 0x0016000c ,IOCTL_PAR_QUERY_DEVICE_ID_SIZE = 0x00160010 ,IOCTL_IEEE1284_GET_MODE = 0x00160014 ,IOCTL_IEEE1284_NEGOTIATE = 0x00160018 ,IOCTL_PAR_SET_WRITE_ADDRESS = 0x0016001c ,IOCTL_PAR_SET_READ_ADDRESS = 0x00160020 ,IOCTL_PAR_GET_DEVICE_CAPS = 0x00160024 ,IOCTL_PAR_GET_DEFAULT_MODES = 0x00160028 ,IOCTL_INTERNAL_PARALLEL_PORT_ALLOCATE = 0x0016002c ,IOCTL_PAR_PING = 0x0016002c ,IOCTL_PAR_QUERY_RAW_DEVICE_ID = 0x00160030 ,IOCTL_INTERNAL_PARALLEL_CONNECT_INTERRUPT = 0x00160034 ,IOCTL_PAR_ECP_HOST_RECOVERY = 0x00160034 ,IOCTL_INTERNAL_PARALLEL_DISCONNECT_INTERRUPT = 0x00160038 ,IOCTL_PAR_GET_READ_ADDRESS = 0x00160038 ,IOCTL_INTERNAL_RELEASE_PARALLEL_PORT_INFO = 0x0016003c ,IOCTL_PAR_GET_WRITE_ADDRESS = 0x0016003c ,IOCTL_INTERNAL_GET_MORE_PARALLEL_PORT_INFO = 0x00160044 ,IOCTL_INTERNAL_PARCHIP_CONNECT = 0x00160048 ,IOCTL_INTERNAL_PARALLEL_SET_CHIP_MODE = 0x0016004c ,IOCTL_INTERNAL_PARALLEL_CLEAR_CHIP_MODE = 0x00160050 ,IOCTL_PAR_TEST = 0x00160050 ,IOCTL_INTERNAL_GET_PARALLEL_PNP_INFO = 0x00160054 ,IOCTL_PAR_IS_PORT_FREE = 0x00160054 ,IOCTL_INTERNAL_INIT_1284_3_BUS = 0x00160058 ,IOCTL_PAR_QUERY_LOCATION = 0x00160058 ,IOCTL_INTERNAL_SELECT_DEVICE = 0x0016005c ,IOCTL_INTERNAL_DESELECT_DEVICE = 0x00160060 ,IOCTL_INTERNAL_GET_PARPORT_FDO = 0x00160074 ,IOCTL_INTERNAL_PARCLASS_CONNECT = 0x00160078 ,IOCTL_INTERNAL_PARCLASS_DISCONNECT = 0x0016007c ,IOCTL_INTERNAL_DISCONNECT_IDLE = 0x00160080 ,IOCTL_INTERNAL_LOCK_PORT = 0x00160094 ,IOCTL_INTERNAL_UNLOCK_PORT = 0x00160098 ,IOCTL_INTERNAL_PARALLEL_PORT_FREE = 0x001600a0 ,IOCTL_INTERNAL_PARDOT3_CONNECT = 0x001600a4 ,IOCTL_INTERNAL_PARDOT3_DISCONNECT = 0x001600a8 ,IOCTL_INTERNAL_PARDOT3_RESET = 0x001600ac ,IOCTL_INTERNAL_PARDOT3_SIGNAL = 0x001600b0 ,IOCTL_INTERNAL_REGISTER_FOR_REMOVAL_RELATIONS = 0x001600c8 ,IOCTL_INTERNAL_UNREGISTER_FOR_REMOVAL_RELATIONS = 0x001600cc ,IOCTL_INTERNAL_LOCK_PORT_NO_SELECT = 0x001600d0 ,IOCTL_INTERNAL_UNLOCK_PORT_NO_DESELECT = 0x001600d4 ,IOCTL_INTERNAL_DISABLE_END_OF_CHAIN_BUS_RESCAN = 0x001600d8 ,IOCTL_INTERNAL_ENABLE_END_OF_CHAIN_BUS_RESCAN = 0x001600dc ,IOCTL_NDIS_QUERY_GLOBAL_STATS = 0x00170002 ,IOCTL_NDIS_QUERY_ALL_STATS = 0x00170006 ,IOCTL_NDIS_DO_PNP_OPERATION = 0x00170008 ,IOCTL_NDIS_QUERY_SELECTED_STATS = 0x0017000e ,IOCTL_NDIS_ENUMERATE_INTERFACES = 0x00170010 ,IOCTL_NDIS_ADD_TDI_DEVICE = 0x00170014 ,IOCTL_NDIS_GET_LOG_DATA = 0x0017001e ,IOCTL_NDIS_GET_VERSION = 0x00170020 ,IOCTL_NDIS_RESERVED1 = 0x00170024 ,IOCTL_NDIS_RESERVED2 = 0x00170028 ,IOCTL_NDIS_RESERVED3 = 0x0017002c ,IOCTL_NDIS_RESERVED4 = 0x00170030 ,IOCTL_NDIS_RESERVED5 = 0x00170034 ,IOCTL_NDIS_RESERVED7 = 0x0017003e ,IOCTL_NDIS_RESERVED8 = 0x00170040 ,IOCTL_NDIS_RESERVED9 = 0x00170044 ,IOCTL_NDIS_RESERVED10 = 0x00170048 ,IOCTL_NDIS_RESERVED11 = 0x0017004c ,IOCTL_NDIS_RESERVED12 = 0x00170050 ,IOCTL_NDIS_RESERVED13 = 0x00170054 ,IOCTL_NDIS_RESERVED14 = 0x00170058 ,IOCTL_NDIS_RESERVED15 = 0x0017005c ,IOCTL_NDIS_RESERVED16 = 0x00170060 ,IOCTL_NDIS_RESERVED17 = 0x00170064 ,IOCTL_NDIS_RESERVED18 = 0x00170068 ,IOCTL_NDIS_RESERVED19 = 0x0017006c ,IOCTL_NDIS_RESERVED20 = 0x00170070 ,IOCTL_NDIS_RESERVED21 = 0x00170074 ,IOCTL_NDIS_RESERVED22 = 0x00170078 ,IOCTL_NDIS_RESERVED23 = 0x0017007c ,IOCTL_NDIS_RESERVED24 = 0x00170080 ,IOCTL_NDIS_RESERVED25 = 0x00170084 ,IOCTL_NDIS_RESERVED26 = 0x00170088 ,IOCTL_NDIS_RESERVED27 = 0x0017008c ,IOCTL_NDIS_RESERVED28 = 0x00170090 ,IOCTL_NDIS_RESERVED29 = 0x00170094 ,IOCTL_NDIS_RESERVED30 = 0x00170098 ,IOCTL_NDIS_RESERVED6 = 0x00178038 ,IOCTL_SCSISCAN_CMD = 0x00190012 ,IOCTL_SCSISCAN_LOCKDEVICE = 0x00190016 ,IOCTL_SCSISCAN_UNLOCKDEVICE = 0x0019001a ,IOCTL_SCSISCAN_SET_TIMEOUT = 0x0019001c ,IOCTL_SCSISCAN_GET_INFO = 0x00190022 ,IOCTL_SERIAL_SET_BAUD_RATE = 0x001b0004 ,IOCTL_SERIAL_INTERNAL_DO_WAIT_WAKE = 0x001b0004 ,IOCTL_SERIAL_SET_QUEUE_SIZE = 0x001b0008 ,IOCTL_SERIAL_INTERNAL_CANCEL_WAIT_WAKE = 0x001b0008 ,IOCTL_SERIAL_SET_LINE_CONTROL = 0x001b000c ,IOCTL_SERIAL_INTERNAL_BASIC_SETTINGS = 0x001b000c ,IOCTL_SERIAL_SET_BREAK_ON = 0x001b0010 ,IOCTL_SERIAL_INTERNAL_RESTORE_SETTINGS = 0x001b0010 ,IOCTL_SCSI_EXECUTE_IN = 0x001b0011 ,IOCTL_SCSI_EXECUTE_OUT = 0x001b0012 ,IOCTL_SCSI_EXECUTE_NONE = 0x001b0013 ,IOCTL_SERIAL_SET_BREAK_OFF = 0x001b0014 ,IOCTL_SERIAL_IMMEDIATE_CHAR = 0x001b0018 ,IOCTL_SERIAL_SET_TIMEOUTS = 0x001b001c ,IOCTL_SERIAL_GET_TIMEOUTS = 0x001b0020 ,IOCTL_SERIAL_SET_DTR = 0x001b0024 ,IOCTL_SERIAL_CLR_DTR = 0x001b0028 ,IOCTL_SERIAL_RESET_DEVICE = 0x001b002c ,IOCTL_SERIAL_SET_RTS = 0x001b0030 ,IOCTL_SERIAL_CLR_RTS = 0x001b0034 ,IOCTL_SERIAL_SET_XOFF = 0x001b0038 ,IOCTL_SERIAL_SET_XON = 0x001b003c ,IOCTL_SERIAL_GET_WAIT_MASK = 0x001b0040 ,IOCTL_SERIAL_SET_WAIT_MASK = 0x001b0044 ,IOCTL_SERIAL_WAIT_ON_MASK = 0x001b0048 ,IOCTL_SERIAL_PURGE = 0x001b004c ,IOCTL_SERIAL_GET_BAUD_RATE = 0x001b0050 ,IOCTL_SERIAL_GET_LINE_CONTROL = 0x001b0054 ,IOCTL_SERIAL_GET_CHARS = 0x001b0058 ,IOCTL_SERIAL_SET_CHARS = 0x001b005c ,IOCTL_SERIAL_GET_HANDFLOW = 0x001b0060 ,IOCTL_SERIAL_SET_HANDFLOW = 0x001b0064 ,IOCTL_SERIAL_GET_MODEMSTATUS = 0x001b0068 ,IOCTL_SERIAL_GET_COMMSTATUS = 0x001b006c ,IOCTL_SERIAL_XOFF_COUNTER = 0x001b0070 ,IOCTL_SERIAL_GET_PROPERTIES = 0x001b0074 ,IOCTL_SERIAL_GET_DTRRTS = 0x001b0078 ,IOCTL_SERIAL_LSRMST_INSERT = 0x001b007c ,IOCTL_SERIAL_CONFIG_SIZE = 0x001b0080 ,IOCTL_SERIAL_GET_COMMCONFIG = 0x001b0084 ,IOCTL_SERIAL_SET_COMMCONFIG = 0x001b0088 ,IOCTL_SERIAL_GET_STATS = 0x001b008c ,IOCTL_SERIAL_CLEAR_STATS = 0x001b0090 ,IOCTL_SERIAL_GET_MODEM_CONTROL = 0x001b0094 ,IOCTL_SERIAL_SET_MODEM_CONTROL = 0x001b0098 ,IOCTL_SERIAL_SET_FIFO_CONTROL = 0x001b009c ,IOCTL_SERIAL_APPLY_DEFAULT_CONFIGURATION = 0x001b00a0 ,IOCTL_SCSI_MINIPORT_SMART_VERSION = 0x001b0500 ,IOCTL_SCSI_MINIPORT_IDENTIFY = 0x001b0501 ,IOCTL_SCSI_MINIPORT_READ_SMART_ATTRIBS = 0x001b0502 ,IOCTL_SCSI_MINIPORT_READ_SMART_THRESHOLDS = 0x001b0503 ,IOCTL_SCSI_MINIPORT_ENABLE_SMART = 0x001b0504 ,IOCTL_SCSI_MINIPORT_DISABLE_SMART = 0x001b0505 ,IOCTL_SCSI_MINIPORT_RETURN_STATUS = 0x001b0506 ,IOCTL_SCSI_MINIPORT_ENABLE_DISABLE_AUTOSAVE = 0x001b0507 ,IOCTL_SCSI_MINIPORT_SAVE_ATTRIBUTE_VALUES = 0x001b0508 ,IOCTL_SCSI_MINIPORT_EXECUTE_OFFLINE_DIAGS = 0x001b0509 ,IOCTL_SCSI_MINIPORT_ENABLE_DISABLE_AUTO_OFFLINE = 0x001b050a ,IOCTL_SCSI_MINIPORT_READ_SMART_LOG = 0x001b050b ,IOCTL_SCSI_MINIPORT_WRITE_SMART_LOG = 0x001b050c ,IOCTL_SCSI_MINIPORT_NOT_QUORUM_CAPABLE = 0x001b0520 ,IOCTL_SCSI_MINIPORT_NOT_CLUSTER_CAPABLE = 0x001b0521 ,IOCTL_SCSI_MINIPORT_DSM = 0x001b0720 ,IOCTL_SCSI_MINIPORT_DSM_GENERAL = 0x001b0721 ,IOCTL_TAPE_PREPARE = 0x001f4004 ,IOCTL_TAPE_GET_POSITION = 0x001f400c ,IOCTL_TAPE_SET_POSITION = 0x001f4010 ,IOCTL_TAPE_GET_DRIVE_PARAMS = 0x001f4014 ,IOCTL_TAPE_GET_MEDIA_PARAMS = 0x001f401c ,IOCTL_TAPE_SET_MEDIA_PARAMS = 0x001f4020 ,IOCTL_TAPE_GET_STATUS = 0x001f4024 ,IOCTL_TAPE_CHECK_VERIFY = 0x001f4800 ,IOCTL_TAPE_MEDIA_REMOVAL = 0x001f4804 ,IOCTL_TAPE_EJECT_MEDIA = 0x001f4808 ,IOCTL_TAPE_LOAD_MEDIA = 0x001f480c ,IOCTL_TAPE_RESERVE = 0x001f4810 ,IOCTL_TAPE_RELEASE = 0x001f4814 ,IOCTL_TAPE_ERASE = 0x001fc000 ,IOCTL_TAPE_WRITE_MARKS = 0x001fc008 ,IOCTL_TAPE_SET_DRIVE_PARAMS = 0x001fc018 ,IOCTL_TAPE_CREATE_PARTITION = 0x001fc028 ,IOCTL_TDI_ACCEPT = 0x00210000 ,IOCTL_TDI_CONNECT = 0x00210004 ,IOCTL_TDI_DISCONNECT = 0x00210008 ,IOCTL_TDI_LISTEN = 0x0021000c ,IOCTL_TDI_QUERY_INFORMATION = 0x00210012 ,IOCTL_TDI_RECEIVE = 0x00210016 ,IOCTL_TDI_RECEIVE_DATAGRAM = 0x0021001a ,IOCTL_TDI_SEND = 0x0021001d ,IOCTL_TDI_SEND_DATAGRAM = 0x00210021 ,IOCTL_TDI_SET_EVENT_HANDLER = 0x00210024 ,IOCTL_TDI_SET_INFORMATION = 0x00210029 ,IOCTL_TDI_ASSOCIATE_ADDRESS = 0x0021002c ,IOCTL_TDI_DISASSOCIATE_ADDRESS = 0x00210030 ,IOCTL_TDI_ACTION = 0x00210036 ,IOCTL_TDI_TL_IO_CONTROL_ENDPOINT = 0x00210038 ,IOCTL_TDI_MAGIC_BULLET = 0x002101ff ,IOCTL_TDI_QUERY_DIRECT_SEND_HANDLER = 0x00210203 ,IOCTL_TDI_QUERY_DIRECT_SENDDG_HANDLER = 0x00210207 ,IOCTL_INTERNAL_USB_SUBMIT_URB = 0x00220003 ,IOCTL_BTHHFP_GET_DEVICEOBJECT = 0x00220003 ,IOCTL_INTERNAL_USB_RESET_PORT = 0x00220007 ,IOCTL_BTHHFP_DEVICE_GET_KSNODETYPES = 0x00220007 ,IOCTL_BTHHFP_DEVICE_GET_CONTAINERID = 0x0022000b ,IOCTL_INTERNAL_USB_GET_ROOTHUB_PDO = 0x0022000f ,IOCTL_BTHHFP_DEVICE_REQUEST_CONNECT = 0x0022000f ,IOCTL_INTERNAL_USB_GET_PORT_STATUS = 0x00220013 ,IOCTL_BTHHFP_DEVICE_REQUEST_DISCONNECT = 0x00220013 ,IOCTL_INTERNAL_USB_ENABLE_PORT = 0x00220017 ,IOCTL_BTHHFP_DEVICE_GET_CONNECTION_STATUS_UPDATE = 0x00220017 ,IOCTL_INTERNAL_USB_GET_HUB_COUNT = 0x0022001b ,IOCTL_BTHHFP_SPEAKER_SET_VOLUME = 0x0022001b ,IOCTL_INTERNAL_USB_CYCLE_PORT = 0x0022001f ,IOCTL_BTHHFP_SPEAKER_GET_VOLUME_STATUS_UPDATE = 0x0022001f ,IOCTL_INTERNAL_USB_GET_HUB_NAME = 0x00220020 ,IOCTL_BTHHFP_MIC_SET_VOLUME = 0x00220023 ,IOCTL_INTERNAL_USB_SUBMIT_IDLE_NOTIFICATION = 0x00220027 ,IOCTL_BTHHFP_MIC_GET_VOLUME_STATUS_UPDATE = 0x00220027 ,IOCTL_INTERNAL_USB_RECORD_FAILURE = 0x0022002b ,IOCTL_BTHHFP_STREAM_OPEN = 0x0022002b ,IOCTL_BTHHFP_STREAM_CLOSE = 0x0022002f ,IOCTL_USBPRINT_GET_LPT_STATUS = 0x00220030 ,IOCTL_BTHHFP_STREAM_GET_STATUS_UPDATE = 0x00220033 ,IOCTL_USBPRINT_GET_1284_ID = 0x00220034 ,IOCTL_BTHHFP_DEVICE_GET_DESCRIPTOR2 = 0x00220037 ,IOCTL_USBPRINT_VENDOR_SET_COMMAND = 0x00220038 ,IOCTL_BTHHFP_DEVICE_GET_NRECDISABLE_STATUS_UPDATE = 0x0022003b ,IOCTL_USBPRINT_VENDOR_GET_COMMAND = 0x0022003c ,IOCTL_BTHHFP_DEVICE_GET_CODEC_ID = 0x0022003f ,IOCTL_USBPRINT_SOFT_RESET = 0x00220040 ,IOCTL_BTHHFP_DEVICE_GET_DESCRIPTOR = 0x00220193 ,IOCTL_BTHHFP_DEVICE_GET_VOLUMEPROPERTYVALUES = 0x00220197 ,IOCTL_1394_CLASS = 0x0022021d ,IOCTL_1394_TOGGLE_ENUM_TEST_ON = 0x00220220 ,IOCTL_1394_TOGGLE_ENUM_TEST_OFF = 0x00220224 ,IOCTL_61883_CLASS = 0x00220245 ,IOCTL_AVC_CLASS = 0x00220248 ,IOCTL_AVCSTRM_CLASS = 0x0022024d ,IOCTL_USB_HCD_GET_STATS_1 = 0x002203fc ,IOCTL_IEEE1394_API_REQUEST = 0x00220400 ,IOCTL_USB_DIAGNOSTIC_MODE_ON = 0x00220400 ,IOCTL_USB_DIAGNOSTIC_MODE_OFF = 0x00220404 ,IOCTL_USB_GET_ROOT_HUB_NAME = 0x00220408 ,IOCTL_USB_GET_NODE_INFORMATION = 0x00220408 ,IOCTL_USB_GET_NODE_CONNECTION_INFORMATION = 0x0022040c ,IOCTL_USB_GET_DESCRIPTOR_FROM_NODE_CONNECTION = 0x00220410 ,IOCTL_USB_GET_NODE_CONNECTION_NAME = 0x00220414 ,IOCTL_USB_DIAG_IGNORE_HUBS_ON = 0x00220418 ,IOCTL_USB_DIAG_IGNORE_HUBS_OFF = 0x0022041c ,IOCTL_INTERNAL_GET_PARALLEL_PORT_INFO = 0x00220420 ,IOCTL_USB_GET_NODE_CONNECTION_DRIVERKEY_NAME = 0x00220420 ,IOCTL_INTERNAL_USB_GET_CONTROLLER_NAME = 0x00220424 ,IOCTL_GET_HCD_DRIVERKEY_NAME = 0x00220424 ,IOCTL_INTERNAL_USB_GET_BUSGUID_INFO = 0x00220428 ,IOCTL_USB_HCD_GET_STATS_2 = 0x00220428 ,IOCTL_INTERNAL_USB_GET_PARENT_HUB_INFO = 0x0022042c ,IOCTL_USB_HCD_DISABLE_PORT = 0x00220430 ,IOCTL_INTERNAL_USB_GET_DEVICE_HANDLE = 0x00220433 ,IOCTL_USB_HCD_ENABLE_PORT = 0x00220434 ,IOCTL_INTERNAL_USB_GET_DEVICE_HANDLE_EX = 0x00220437 ,IOCTL_INTERNAL_USB_GET_TT_DEVICE_HANDLE = 0x0022043b ,IOCTL_USB_GET_HUB_CAPABILITIES = 0x0022043c ,IOCTL_INTERNAL_USB_GET_TOPOLOGY_ADDRESS = 0x0022043f ,IOCTL_USB_GET_NODE_CONNECTION_ATTRIBUTES = 0x00220440 ,IOCTL_INTERNAL_USB_NOTIFY_IDLE_READY = 0x00220443 ,IOCTL_USB_HUB_CYCLE_PORT = 0x00220444 ,IOCTL_INTERNAL_USB_REQ_GLOBAL_SUSPEND = 0x00220447 ,IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX = 0x00220448 ,IOCTL_INTERNAL_USB_REQ_GLOBAL_RESUME = 0x0022044b ,IOCTL_USB_RESET_HUB = 0x0022044c ,IOCTL_INTERNAL_USB_GET_DEVICE_CONFIG_INFO = 0x0022044f ,IOCTL_USB_GET_HUB_CAPABILITIES_EX = 0x00220450 ,IOCTL_USB_GET_HUB_INFORMATION_EX = 0x00220454 ,IOCTL_USB_GET_PORT_CONNECTOR_PROPERTIES = 0x00220458 ,IOCTL_USB_GET_NODE_CONNECTION_INFORMATION_EX_V2 = 0x0022045c ,IOCTL_TSUSBGD_IOCTL_USBDI_QUERY_BUS_TIME = 0x00224000 ,IOCTL_VIDEO_ENABLE_VDM = 0x00230000 ,IOCTL_VIDEO_DISABLE_VDM = 0x00230004 ,IOCTL_VIDEO_REGISTER_VDM = 0x00230008 ,IOCTL_VIDEO_SET_OUTPUT_DEVICE_POWER_STATE = 0x0023000c ,IOCTL_VIDEO_GET_OUTPUT_DEVICE_POWER_STATE = 0x00230010 ,IOCTL_VIDEO_MONITOR_DEVICE = 0x00230014 ,IOCTL_VIDEO_ENUM_MONITOR_PDO = 0x00230018 ,IOCTL_VIDEO_INIT_WIN32K_CALLBACKS = 0x0023001c ,IOCTL_VIDEO_HANDLE_VIDEOPARAMETERS = 0x00230020 ,IOCTL_VIDEO_IS_VGA_DEVICE = 0x00230024 ,IOCTL_VIDEO_USE_DEVICE_IN_SESSION = 0x00230028 ,IOCTL_VIDEO_PREPARE_FOR_EARECOVERY = 0x0023002c ,IOCTL_VIDEO_SAVE_HARDWARE_STATE = 0x00230200 ,IOCTL_VIDEO_RESTORE_HARDWARE_STATE = 0x00230204 ,IOCTL_VIDEO_QUERY_AVAIL_MODES = 0x00230400 ,IOCTL_VIDEO_QUERY_NUM_AVAIL_MODES = 0x00230404 ,IOCTL_VIDEO_QUERY_CURRENT_MODE = 0x00230408 ,IOCTL_VIDEO_SET_CURRENT_MODE = 0x0023040c ,IOCTL_VIDEO_RESET_DEVICE = 0x00230410 ,IOCTL_VIDEO_LOAD_AND_SET_FONT = 0x00230414 ,IOCTL_VIDEO_SET_PALETTE_REGISTERS = 0x00230418 ,IOCTL_VIDEO_SET_COLOR_REGISTERS = 0x0023041c ,IOCTL_VIDEO_ENABLE_CURSOR = 0x00230420 ,IOCTL_VIDEO_DISABLE_CURSOR = 0x00230424 ,IOCTL_VIDEO_SET_CURSOR_ATTR = 0x00230428 ,IOCTL_VIDEO_QUERY_CURSOR_ATTR = 0x0023042c ,IOCTL_VIDEO_SET_CURSOR_POSITION = 0x00230430 ,IOCTL_VIDEO_QUERY_CURSOR_POSITION = 0x00230434 ,IOCTL_VIDEO_ENABLE_POINTER = 0x00230438 ,IOCTL_VIDEO_DISABLE_POINTER = 0x0023043c ,IOCTL_VIDEO_SET_POINTER_ATTR = 0x00230440 ,IOCTL_VIDEO_QUERY_POINTER_ATTR = 0x00230444 ,IOCTL_VIDEO_SET_POINTER_POSITION = 0x00230448 ,IOCTL_VIDEO_QUERY_POINTER_POSITION = 0x0023044c ,IOCTL_VIDEO_QUERY_POINTER_CAPABILITIES = 0x00230450 ,IOCTL_VIDEO_GET_BANK_SELECT_CODE = 0x00230454 ,IOCTL_VIDEO_MAP_VIDEO_MEMORY = 0x00230458 ,IOCTL_VIDEO_UNMAP_VIDEO_MEMORY = 0x0023045c ,IOCTL_VIDEO_QUERY_PUBLIC_ACCESS_RANGES = 0x00230460 ,IOCTL_VIDEO_FREE_PUBLIC_ACCESS_RANGES = 0x00230464 ,IOCTL_VIDEO_QUERY_COLOR_CAPABILITIES = 0x00230468 ,IOCTL_VIDEO_SET_POWER_MANAGEMENT = 0x0023046c ,IOCTL_VIDEO_GET_POWER_MANAGEMENT = 0x00230470 ,IOCTL_VIDEO_SHARE_VIDEO_MEMORY = 0x00230474 ,IOCTL_VIDEO_UNSHARE_VIDEO_MEMORY = 0x00230478 ,IOCTL_VIDEO_SET_COLOR_LUT_DATA = 0x0023047c ,IOCTL_VIDEO_GET_CHILD_STATE = 0x00230480 ,IOCTL_VIDEO_VALIDATE_CHILD_STATE_CONFIGURATION = 0x00230484 ,IOCTL_VIDEO_SET_CHILD_STATE_CONFIGURATION = 0x00230488 ,IOCTL_VIDEO_SWITCH_DUALVIEW = 0x0023048c ,IOCTL_VIDEO_SET_BANK_POSITION = 0x00230490 ,IOCTL_VIDEO_QUERY_SUPPORTED_BRIGHTNESS = 0x00230494 ,IOCTL_VIDEO_QUERY_DISPLAY_BRIGHTNESS = 0x00230498 ,IOCTL_VIDEO_SET_DISPLAY_BRIGHTNESS = 0x0023049c ,IOCTL_QUERY_DEVICE_POWER_STATE = 0x00294000 ,IOCTL_BATTERY_QUERY_TAG = 0x00294040 ,IOCTL_BATTERY_QUERY_INFORMATION = 0x00294044 ,IOCTL_BATTERY_QUERY_STATUS = 0x0029404c ,IOCTL_BATTERY_CHARGING_SOURCE_CHANGE = 0x00294050 ,IOCTL_THERMAL_QUERY_INFORMATION = 0x00294080 ,IOCTL_THERMAL_READ_TEMPERATURE = 0x00294090 ,IOCTL_THERMAL_READ_POLICY = 0x00294094 ,IOCTL_QUERY_LID = 0x002940c0 ,IOCTL_NOTIFY_SWITCH_EVENT = 0x00294100 ,IOCTL_GET_SYS_BUTTON_CAPS = 0x00294140 ,IOCTL_GET_SYS_BUTTON_EVENT = 0x00294144 ,IOCTL_GET_PROCESSOR_OBJ_INFO = 0x00294180 ,IOCTL_ACPI_GET_REAL_TIME = 0x00294210 ,IOCTL_SET_DEVICE_WAKE = 0x00298004 ,IOCTL_CANCEL_DEVICE_WAKE = 0x00298008 ,IOCTL_BATTERY_SET_INFORMATION = 0x00298048 ,IOCTL_THERMAL_SET_COOLING_POLICY = 0x00298084 ,IOCTL_RUN_ACTIVE_COOLING_METHOD = 0x00298088 ,IOCTL_THERMAL_SET_PASSIVE_LIMIT = 0x0029808c ,IOCTL_SET_SYS_MESSAGE_INDICATOR = 0x002981c0 ,IOCTL_SET_WAKE_ALARM_VALUE = 0x00298200 ,IOCTL_SET_WAKE_ALARM_POLICY = 0x00298204 ,IOCTL_ACPI_SET_REAL_TIME = 0x00298214 ,IOCTL_GET_WAKE_ALARM_VALUE = 0x0029c208 ,IOCTL_GET_WAKE_ALARM_POLICY = 0x0029c20c ,IOCTL_CAD_DISABLE_CHARGING = 0x0029c480 ,IOCTL_CAD_GET_CHARGING_STATUS_COMPLETE = 0x0029c488 ,IOCTL_INTERNAL_CAD_POWER_SOURCE_UPDATE = 0x0029c4c0 ,IOCTL_CAD_GET_BATTERY_PROVISIONING_STATUS = 0x0029c4c4 ,IOCTL_CAD_POWER_SOURCE_UPDATE_EX = 0x0029c4c8 ,IOCTL_INTERNAL_CONFIGURE_CHARGER_PROPERTY = 0x0029c500 ,IOCTL_AVC_UPDATE_VIRTUAL_SUBUNIT_INFO = 0x002a0000 ,IOCTL_SWENUM_INSTALL_INTERFACE = 0x002a0000 ,IOCTL_AVC_REMOVE_VIRTUAL_SUBUNIT_INFO = 0x002a0004 ,IOCTL_SWENUM_REMOVE_INTERFACE = 0x002a0004 ,IOCTL_AVC_BUS_RESET = 0x002a0008 ,IOCTL_SWENUM_GET_BUS_ID = 0x002a400b ,IOCTL_RH_QUERY_CONNECTION_PROPERTIES = 0x002ac000 ,IOCTL_VPCI_INVALIDATE_BLOCK = 0x002ac007 ,IOCTL_VPCI_READ_BLOCK = 0x002ac00b ,IOCTL_INTERNAL_USBFN_TRANSFER_IN = 0x002ac00d ,IOCTL_VPCI_WRITE_BLOCK = 0x002ac00f ,IOCTL_INTERNAL_USBFN_TRANSFER_IN_APPEND_ZERO_PKT = 0x002ac011 ,IOCTL_INTERNAL_USBFN_TRANSFER_OUT = 0x002ac016 ,IOCTL_INTERNAL_USBFN_CONTROL_STATUS_HANDSHAKE_IN = 0x002ac018 ,IOCTL_INTERNAL_USBFN_CONTROL_STATUS_HANDSHAKE_OUT = 0x002ac01c ,IOCTL_INTERNAL_USBFN_GET_CLASS_INFO = 0x002ac022 ,IOCTL_INTERNAL_USBFN_GET_PIPE_STATE = 0x002ac026 ,IOCTL_INTERNAL_USBFN_SET_PIPE_STATE = 0x002ac029 ,IOCTL_INTERNAL_USBFN_ACTIVATE_USB_BUS = 0x002ac02c ,IOCTL_INTERNAL_USBFN_DEACTIVATE_USB_BUS = 0x002ac030 ,IOCTL_INTERNAL_USBFN_BUS_EVENT_NOTIFICATION = 0x002ac036 ,IOCTL_INTERNAL_USBFN_SET_POWER_FILTER_STATE = 0x002ac03a ,IOCTL_INTERNAL_USBFN_SET_POWER_FILTER_EXIT_LPM = 0x002ac03e ,IOCTL_INTERNAL_USBFN_GET_CLASS_INFO_EX = 0x002ac042 ,IOCTL_INTERNAL_USBFN_GET_INTERFACE_DESCRIPTOR_SET = 0x002ac046 ,IOCTL_INTERNAL_USBFN_REGISTER_USB_STRING = 0x002ac049 ,IOCTL_INTERNAL_USBFN_RESERVED = 0x002ac108 ,IOCTL_INTERNAL_USBFN_SIGNAL_REMOTE_WAKEUP = 0x002ac10c ,IOCTL_INTERNAL_USBFN_DESCRIPTOR_UPDATE = 0x002ac401 ,IOCTL_MODEM_GET_PASSTHROUGH = 0x002b0004 ,IOCTL_MODEM_SET_PASSTHROUGH = 0x002b0008 ,IOCTL_MODEM_SET_DLE_MONITORING = 0x002b000c ,IOCTL_MODEM_GET_DLE = 0x002b0010 ,IOCTL_MODEM_SET_DLE_SHIELDING = 0x002b0014 ,IOCTL_MODEM_STOP_WAVE_RECEIVE = 0x002b0018 ,IOCTL_MODEM_SEND_MESSAGE = 0x002b001c ,IOCTL_MODEM_GET_MESSAGE = 0x002b0020 ,IOCTL_MODEM_SEND_GET_MESSAGE = 0x002b0024 ,IOCTL_MODEM_SEND_LOOPBACK_MESSAGE = 0x002b0028 ,IOCTL_MODEM_CHECK_FOR_MODEM = 0x002b002c ,IOCTL_MODEM_SET_MIN_POWER = 0x002b0030 ,IOCTL_MODEM_WATCH_FOR_RESUME = 0x002b0034 ,IOCTL_CANCEL_GET_SEND_MESSAGE = 0x002b0038 ,IOCTL_SET_SERVER_STATE = 0x002b003c ,IOCTL_STORAGE_CHECK_VERIFY2 = 0x002d0800 ,IOCTL_STORAGE_LOAD_MEDIA2 = 0x002d080c ,IOCTL_STORAGE_EJECTION_CONTROL = 0x002d0940 ,IOCTL_STORAGE_MCN_CONTROL = 0x002d0944 ,IOCTL_STORAGE_GET_MEDIA_TYPES = 0x002d0c00 ,IOCTL_STORAGE_GET_MEDIA_TYPES_EX = 0x002d0c04 ,IOCTL_STORAGE_GET_MEDIA_SERIAL_NUMBER = 0x002d0c10 ,IOCTL_STORAGE_GET_HOTPLUG_INFO = 0x002d0c14 ,IOCTL_STORAGE_GET_DEVICE_NUMBER = 0x002d1080 ,IOCTL_STORAGE_PREDICT_FAILURE = 0x002d1100 ,IOCTL_STORAGE_FAILURE_PREDICTION_CONFIG = 0x002d1104 ,IOCTL_STORAGE_QUERY_PROPERTY = 0x002d1400 ,IOCTL_EHSTOR_DEVICE_SILO_COMMAND = 0x002d140c ,IOCTL_EHSTOR_DEVICE_ENUMERATE_PDOS = 0x002d1410 ,IOCTL_EHSTOR_DEVICE_SET_AUTHZ_STATE = 0x002d1414 ,IOCTL_EHSTOR_DEVICE_QUERY_PROPERTIES = 0x002d1418 ,IOCTL_EHSTOR_DEVICE_GET_QUEUE_STATE = 0x002d141c ,IOCTL_EHSTOR_DEVICE_GET_AUTHZ_STATE = 0x002d1424 ,IOCTL_EHSTOR_BANDMGMT_QUERY_CAPABILITIES = 0x002d1480 ,IOCTL_EHSTOR_BANDMGMT_ENUMERATE_BANDS = 0x002d148c ,IOCTL_EHSTOR_BANDMGMT_GET_BAND_METADATA = 0x002d149c ,IOCTL_STORAGE_CHECK_PRIORITY_HINT_SUPPORT = 0x002d1880 ,IOCTL_STORAGE_ENABLE_IDLE_POWER = 0x002d1c80 ,IOCTL_STORAGE_GET_IDLE_POWERUP_REASON = 0x002d1c84 ,IOCTL_STORAGE_POWER_ACTIVE = 0x002d1c88 ,IOCTL_STORAGE_POWER_IDLE = 0x002d1c8c ,IOCTL_STORAGE_EVENT_NOTIFICATION = 0x002d1c90 ,IOCTL_STORAGE_SET_READ_AHEAD = 0x002d4400 ,IOCTL_STORAGE_CHECK_VERIFY = 0x002d4800 ,IOCTL_STORAGE_MEDIA_REMOVAL = 0x002d4804 ,IOCTL_STORAGE_EJECT_MEDIA = 0x002d4808 ,IOCTL_STORAGE_LOAD_MEDIA = 0x002d480c ,IOCTL_STORAGE_RESERVE = 0x002d4810 ,IOCTL_STORAGE_RELEASE = 0x002d4814 ,IOCTL_STORAGE_FIND_NEW_DEVICES = 0x002d4818 ,IOCTL_STORAGE_RESET_BUS = 0x002d5000 ,IOCTL_STORAGE_RESET_DEVICE = 0x002d5004 ,IOCTL_STORAGE_BREAK_RESERVATION = 0x002d5014 ,IOCTL_STORAGE_PERSISTENT_RESERVE_IN = 0x002d5018 ,IOCTL_STORAGE_READ_CAPACITY = 0x002d5140 ,IOCTL_STORAGE_GET_LB_PROVISIONING_MAP_RESOURCES = 0x002d5408 ,IOCTL_STORAGE_GET_BC_PROPERTIES = 0x002d5800 ,IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES = 0x002d9404 ,IOCTL_STORAGE_SET_HOTPLUG_INFO = 0x002dcc18 ,OBSOLETE_IOCTL_STORAGE_RESET_BUS = 0x002dd000 ,OBSOLETE_IOCTL_STORAGE_RESET_DEVICE = 0x002dd004 ,IOCTL_STORAGE_PERSISTENT_RESERVE_OUT = 0x002dd01c ,IOCTL_STORAGE_GET_DEVICE_TELEMETRY = 0x002dd1c0 ,IOCTL_STORAGE_DEVICE_TELEMETRY_NOTIFY = 0x002dd1c4 ,IOCTL_STORAGE_DEVICE_TELEMETRY_QUERY_CAPS = 0x002dd1c8 ,IOCTL_STORAGE_GET_DEVICE_TELEMETRY_RAW = 0x002dd1cc ,IOCTL_EHSTOR_DEVICE_SET_QUEUE_STATE = 0x002dd420 ,IOCTL_EHSTOR_DRIVER_REPORT_CAPABILITIES = 0x002dd440 ,IOCTL_EHSTOR_DRIVER_UPDATE_LBA_FILTER_TABLE = 0x002dd444 ,IOCTL_EHSTOR_DRIVER_PERFORM_AUTHZ = 0x002dd448 ,IOCTL_EHSTOR_BANDMGMT_ACTIVATE = 0x002dd484 ,IOCTL_EHSTOR_BANDMGMT_REVERT = 0x002dd488 ,IOCTL_EHSTOR_BANDMGMT_CREATE_BAND = 0x002dd490 ,IOCTL_EHSTOR_BANDMGMT_SET_BAND_LOCATION = 0x002dd494 ,IOCTL_EHSTOR_BANDMGMT_SET_BAND_SECURITY = 0x002dd498 ,IOCTL_EHSTOR_BANDMGMT_SET_BAND_METADATA = 0x002dd4a0 ,IOCTL_EHSTOR_BANDMGMT_DELETE_BAND = 0x002dd4a4 ,IOCTL_EHSTOR_BANDMGMT_ERASE_BAND = 0x002dd4a8 ,IOCTL_STORAGE_ALLOCATE_BC_STREAM = 0x002dd804 ,IOCTL_STORAGE_FREE_BC_STREAM = 0x002dd808 ,IOCTL_STORAGE_START_DATA_INTEGRITY_CHECK = 0x002dd884 ,IOCTL_STORAGE_STOP_DATA_INTEGRITY_CHECK = 0x002dd888 ,IOCTL_CHANGER_GET_PARAMETERS = 0x00304000 ,IOCTL_CHANGER_GET_STATUS = 0x00304004 ,IOCTL_CHANGER_GET_PRODUCT_DATA = 0x00304008 ,IOCTL_CHANGER_INITIALIZE_ELEMENT_STATUS = 0x00304018 ,IOCTL_CHANGER_SET_POSITION = 0x0030401c ,IOCTL_CHANGER_EXCHANGE_MEDIUM = 0x00304020 ,IOCTL_CHANGER_MOVE_MEDIUM = 0x00304024 ,IOCTL_CHANGER_REINITIALIZE_TRANSPORT = 0x00304028 ,IOCTL_CHANGER_SET_ACCESS = 0x0030c010 ,IOCTL_CHANGER_GET_ELEMENT_STATUS = 0x0030c014 ,IOCTL_CHANGER_QUERY_VOLUME_TAGS = 0x0030c02c ,IOCTL_SMCLIB_SEND_DEBUG_REQUEST = 0x00310190 ,IOCTL_SMCLIB_PROCESS_T1_REQUEST = 0x00310194 ,IOCTL_SMCLIB_GET_T1_REQUEST = 0x00310198 ,IOCTL_SMCLIB_GET_T1_REPLY = 0x0031019c ,IOCTL_SMCLIB_PROCESS_T1_REPLY = 0x003101a0 ,IOCTL_SMCLIB_IGNORE_T1_REPLY = 0x003101a4 ,IOCTL_SMCLIB_NOTIFY_DEVICE_REMOVAL = 0x003101a8 ,IOCTL_ACPI_ASYNC_EVAL_METHOD = 0x0032c000 ,IOCTL_ACPI_EVAL_METHOD = 0x0032c004 ,IOCTL_VMGENCOUNTER_READ = 0x0032c004 ,IOCTL_ACPI_ACQUIRE_GLOBAL_LOCK = 0x0032c010 ,IOCTL_ACPI_RELEASE_GLOBAL_LOCK = 0x0032c014 ,IOCTL_ACPI_EVAL_METHOD_EX = 0x0032c018 ,IOCTL_ACPI_ASYNC_EVAL_METHOD_EX = 0x0032c01c ,IOCTL_ACPI_ENUM_CHILDREN = 0x0032c020 ,IOCTL_ACPI_GET_DEVICE_INFORMATION = 0x0032c028 ,IOCTL_DVD_START_SESSION = 0x00335000 ,IOCTL_DVD_READ_KEY = 0x00335004 ,IOCTL_DVD_SEND_KEY = 0x00335008 ,IOCTL_DVD_END_SESSION = 0x0033500c ,IOCTL_DVD_SET_READ_AHEAD = 0x00335010 ,IOCTL_DVD_GET_REGION = 0x00335014 ,IOCTL_AACS_READ_MEDIA_KEY_BLOCK_SIZE = 0x003350c0 ,IOCTL_AACS_READ_MEDIA_KEY_BLOCK = 0x003350c4 ,IOCTL_AACS_START_SESSION = 0x003350c8 ,IOCTL_AACS_END_SESSION = 0x003350cc ,IOCTL_AACS_SEND_CERTIFICATE = 0x003350d0 ,IOCTL_AACS_GET_CERTIFICATE = 0x003350d4 ,IOCTL_AACS_GET_CHALLENGE_KEY = 0x003350d8 ,IOCTL_AACS_SEND_CHALLENGE_KEY = 0x003350dc ,IOCTL_AACS_READ_VOLUME_ID = 0x003350e0 ,IOCTL_AACS_READ_SERIAL_NUMBER = 0x003350e4 ,IOCTL_AACS_READ_MEDIA_ID = 0x003350e8 ,IOCTL_AACS_READ_BINDING_NONCE = 0x003350ec ,IOCTL_DVD_READ_STRUCTURE = 0x00335140 ,IOCTL_DVD_SEND_KEY2 = 0x0033d018 ,IOCTL_AACS_GENERATE_BINDING_NONCE = 0x0033d0f0 ,IOCTL_FSVIDEO_COPY_FRAME_BUFFER = 0x00340800 ,IOCTL_FSVIDEO_WRITE_TO_FRAME_BUFFER = 0x00340804 ,IOCTL_FSVIDEO_REVERSE_MOUSE_POINTER = 0x00340808 ,IOCTL_FSVIDEO_SET_CURRENT_MODE = 0x0034080c ,IOCTL_FSVIDEO_SET_SCREEN_INFORMATION = 0x00340810 ,IOCTL_FSVIDEO_SET_CURSOR_POSITION = 0x00340814 ,IOCTL_SERENUM_EXPOSE_HARDWARE = 0x00370200 ,IOCTL_SERENUM_REMOVE_HARDWARE = 0x00370204 ,IOCTL_INTERNAL_SERENUM_REMOVE_SELF = 0x00370207 ,IOCTL_SERENUM_PORT_DESC = 0x00370208 ,IOCTL_SERENUM_GET_PORT_NAME = 0x0037020c ,IOCTL_DOT4_OPEN_CHANNEL = 0x003a2006 ,IOCTL_DOT4_CLOSE_CHANNEL = 0x003a2008 ,IOCTL_DOT4_READ = 0x003a200e ,IOCTL_DOT4_WRITE = 0x003a2011 ,IOCTL_DOT4_ADD_ACTIVITY_BROADCAST = 0x003a2014 ,IOCTL_DOT4_REMOVE_ACTIVITY_BROADCAST = 0x003a2018 ,IOCTL_DOT4_WAIT_ACTIVITY_BROADCAST = 0x003a201e ,IOCTL_DOT4_CREATE_SOCKET = 0x003a2022 ,IOCTL_DOT4_WAIT_FOR_CHANNEL = 0x003a2026 ,IOCTL_DOT4_DESTROY_SOCKET = 0x003a202a ,IOCTL_AVIO_ALLOCATE_STREAM = 0x003c0004 ,IOCTL_AVIO_FREE_STREAM = 0x003c0008 ,IOCTL_AVIO_MODIFY_STREAM = 0x003c000c ,IOCTL_BTH_GET_LOCAL_INFO = 0x00410000 ,IOCTL_BTH_GET_RADIO_INFO = 0x00410004 ,IOCTL_BTH_GET_DEVICE_INFO = 0x00410008 ,IOCTL_BTH_DISCONNECT_DEVICE = 0x0041000c ,IOCTL_BTH_HCI_VENDOR_COMMAND = 0x00410050 ,IOCTL_BTH_SDP_CONNECT = 0x00410200 ,IOCTL_BTH_SDP_DISCONNECT = 0x00410204 ,IOCTL_BTH_SDP_SERVICE_SEARCH = 0x00410208 ,IOCTL_BTH_SDP_ATTRIBUTE_SEARCH = 0x0041020c ,IOCTL_BTH_SDP_SERVICE_ATTRIBUTE_SEARCH = 0x00410210 ,IOCTL_BTH_SDP_SUBMIT_RECORD = 0x00410214 ,IOCTL_BTH_SDP_REMOVE_RECORD = 0x00410218 ,IOCTL_BTH_SDP_SUBMIT_RECORD_WITH_INFO = 0x0041021c ,IOCTL_BTH_GET_HOST_SUPPORTED_FEATURES = 0x00410220 ,IOCTL_BTHX_GET_VERSION = 0x00410403 ,IOCTL_BTHX_SET_VERSION = 0x00410407 ,IOCTL_BTHX_QUERY_CAPABILITIES = 0x0041040b ,IOCTL_BTHX_WRITE_HCI = 0x0041040f ,IOCTL_BIOMETRIC_GET_ATTRIBUTES = 0x00440004 ,IOCTL_BIOMETRIC_RESET = 0x00440008 ,IOCTL_BIOMETRIC_CALIBRATE = 0x0044000c ,IOCTL_BIOMETRIC_GET_SENSOR_STATUS = 0x00440010 ,IOCTL_BIOMETRIC_CAPTURE_DATA = 0x00440014 ,IOCTL_BIOMETRIC_UPDATE_FIRMWARE = 0x00440018 ,IOCTL_BIOMETRIC_GET_SUPPORTED_ALGORITHMS = 0x0044001c ,IOCTL_BIOMETRIC_GET_INDICATOR = 0x00440020 ,IOCTL_BIOMETRIC_SET_INDICATOR = 0x00440024 ,IOCTL_BIOMETRIC_VENDOR = 0x00442000 ,IOCTL_PMI_GET_CAPABILITIES = 0x00454000 ,IOCTL_PMI_GET_CONFIGURATION = 0x00454004 ,IOCTL_PMI_GET_MEASUREMENT = 0x0045400c ,IOCTL_PMI_SET_CONFIGURATION = 0x00458008 ,IOCTL_PMI_REGISTER_EVENT_NOTIFY = 0x0045c010 ,IOCTL_EHSTOR_TCGDRV_RELINQUISH_SILO = 0x0046c800 ,IOCTL_GPIO_READ_PINS = 0x00480000 ,IOCTL_GPIO_WRITE_PINS = 0x00480004 ,IOCTL_GPIO_CONTROLLER_SPECIFIC_FUNCTION = 0x00480008 ,IOCTL_INTERNAL_USB_REGISTER_COMPOSITE_DEVICE = 0x00490003 ,IOCTL_INTERNAL_USB_UNREGISTER_COMPOSITE_DEVICE = 0x00490007 ,IOCTL_INTERNAL_USB_REQUEST_REMOTE_WAKE_NOTIFICATION = 0x0049000b ,IOCTL_MOUNTDEV_QUERY_UNIQUE_ID = 0x004d0000 ,IOCTL_MOUNTDEV_QUERY_DEVICE_NAME = 0x004d0008 ,IOCTL_MOUNTDEV_QUERY_SUGGESTED_LINK_NAME = 0x004d000c ,IOCTL_MOUNTDEV_QUERY_STABLE_GUID = 0x004d0018 ,IOCTL_MOUNTDEV_LINK_CREATED = 0x004dc010 ,IOCTL_MOUNTDEV_LINK_DELETED = 0x004dc014 ,IOCTL_NFP_GET_NEXT_SUBSCRIBED_MESSAGE = 0x00510040 ,IOCTL_NFP_SET_PAYLOAD = 0x00510044 ,IOCTL_NFP_GET_NEXT_TRANSMITTED_MESSAGE = 0x00510048 ,IOCTL_NFP_DISABLE = 0x0051004c ,IOCTL_NFP_ENABLE = 0x00510050 ,IOCTL_NFP_GET_MAX_MESSAGE_BYTES = 0x00510080 ,IOCTL_NFP_GET_KILO_BYTES_PER_SECOND = 0x00510084 ,IOCTL_NFCCX_WRITE_PACKET = 0x00514000 ,IOCTL_SYSENV_GET_VARIABLE = 0x00520004 ,IOCTL_SYSENV_SET_VARIABLE = 0x00520008 }IO_CTRL_CODE ;
typedef enum _MANDATORY_LEVEL { MandatoryLevelUntrusted = 0, MandatoryLevelLow, MandatoryLevelMedium, MandatoryLevelHigh, MandatoryLevelSystem, MandatoryLevelSecureProcess, MandatoryLevelCount } MANDATORY_LEVEL, *PMANDATORY_LEVEL;
typedef enum WELL_KNOWN_SID_TYPE{ WinNullSid = 0, WinWorldSid = 1, WinLocalSid = 2, WinCreatorOwnerSid = 3, WinCreatorGroupSid = 4, WinCreatorOwnerServerSid = 5, WinCreatorGroupServerSid = 6, WinNtAuthoritySid = 7, WinDialupSid = 8, WinNetworkSid = 9, WinBatchSid = 10, WinInteractiveSid = 11, WinServiceSid = 12, WinAnonymousSid = 13, WinProxySid = 14, WinEnterpriseControllersSid = 15, WinSelfSid = 16, WinAuthenticatedUserSid = 17, WinRestrictedCodeSid = 18, WinTerminalServerSid = 19, WinRemoteLogonIdSid = 20, WinLogonIdsSid = 21, WinLocalSystemSid = 22, WinLocalServiceSid = 23, WinNetworkServiceSid = 24, WinBuiltinDomainSid = 25, WinBuiltinAdministratorsSid = 26, WinBuiltinUsersSid = 27, WinBuiltinGuestsSid = 28, WinBuiltinPowerUsersSid = 29, WinBuiltinAccountOperatorsSid = 30, WinBuiltinSystemOperatorsSid = 31, WinBuiltinPrintOperatorsSid = 32, WinBuiltinBackupOperatorsSid = 33, WinBuiltinReplicatorSid = 34, WinBuiltinPreWindows2000CompatibleAccessSid = 35, WinBuiltinRemoteDesktopUsersSid = 36, WinBuiltinNetworkConfigurationOperatorsSid = 37, WinAccountAdministratorSid = 38, WinAccountGuestSid = 39, WinAccountKrbtgtSid = 40, WinAccountDomainAdminsSid = 41, WinAccountDomainUsersSid = 42, WinAccountDomainGuestsSid = 43, WinAccountComputersSid = 44, WinAccountControllersSid = 45, WinAccountCertAdminsSid = 46, WinAccountSchemaAdminsSid = 47, WinAccountEnterpriseAdminsSid = 48, WinAccountPolicyAdminsSid = 49, WinAccountRasAndIasServersSid = 50, WinNTLMAuthenticationSid = 51, WinDigestAuthenticationSid = 52, WinSChannelAuthenticationSid = 53, WinThisOrganizationSid = 54, WinOtherOrganizationSid = 55, WinBuiltinIncomingForestTrustBuildersSid = 56, WinBuiltinPerfMonitoringUsersSid = 57, WinBuiltinPerfLoggingUsersSid = 58, WinBuiltinAuthorizationAccessSid = 59, WinBuiltinTerminalServerLicenseServersSid = 60, WinBuiltinDCOMUsersSid = 61, WinBuiltinIUsersSid = 62, WinIUserSid = 63, WinBuiltinCryptoOperatorsSid = 64, WinUntrustedLabelSid = 65, WinLowLabelSid = 66, WinMediumLabelSid = 67, WinHighLabelSid = 68, WinSystemLabelSid = 69, WinWriteRestrictedCodeSid = 70, WinCreatorOwnerRightsSid = 71, WinCacheablePrincipalsGroupSid = 72, WinNonCacheablePrincipalsGroupSid = 73, WinEnterpriseReadonlyControllersSid = 74, WinAccountReadonlyControllersSid = 75, WinBuiltinEventLogReadersGroup = 76, WinNewEnterpriseReadonlyControllersSid = 77, WinBuiltinCertSvcDComAccessGroup = 78, WinMediumPlusLabelSid = 79, WinLocalLogonSid = 80, WinConsoleLogonSid = 81, WinThisOrganizationCertificateSid = 82, WinApplicationPackageAuthoritySid = 83, WinBuiltinAnyPackageSid = 84, WinCapabilityInternetClientSid = 85, WinCapabilityInternetClientServerSid = 86, WinCapabilityPrivateNetworkClientServerSid = 87, WinCapabilityPicturesLibrarySid = 88, WinCapabilityVideosLibrarySid = 89, WinCapabilityMusicLibrarySid = 90, WinCapabilityDocumentsLibrarySid = 91, WinCapabilitySharedUserCertificatesSid = 92, WinCapabilityEnterpriseAuthenticationSid = 93, WinCapabilityRemovableStorageSid = 94, WinBuiltinRDSRemoteAccessServersSid = 95, WinBuiltinRDSEndpointServersSid = 96, WinBuiltinRDSManagementServersSid = 97, WinUserModeDriversSid = 98, WinBuiltinHyperVAdminsSid = 99, WinAccountCloneableControllersSid = 100, WinBuiltinAccessControlAssistanceOperatorsSid = 101, WinBuiltinRemoteManagementUsersSid = 102, WinAuthenticationAuthorityAssertedSid = 103, WinAuthenticationServiceAssertedSid = 104, WinLocalAccountSid = 105, WinLocalAccountAndAdministratorSid = 106, WinAccountProtectedUsersSid = 107, WinCapabilityAppointmentsSid = 108, WinCapabilityContactsSid = 109, WinAccountDefaultSystemManagedSid = 110, WinBuiltinDefaultSystemManagedGroupSid = 111, WinBuiltinStorageReplicaAdminsSid = 112, WinAccountKeyAdminsSid = 113, WinAccountEnterpriseKeyAdminsSid = 114, WinAuthenticationKeyTrustSid = 115, WinAuthenticationKeyPropertyMFASid = 116, WinAuthenticationKeyPropertyAttestationSid = 117, WinAuthenticationFreshKeyAuthSid = 118, WinBuiltinDeviceOwnersSid = 119} WELL_KNOWN_SID_TYPE;

typedef struct ALLOCATION_TYPE{ BIT1 MEM_UNMAP_WITH_TRANSIENT_BOOST ; BIT2 MEM_PRESERVE_PLACEHOLDER ; BIT3 BIT3 ; BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6; BIT7 BIT7 ; BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 MEM_COMMIT;BIT14 MEM_RESERVE;BIT15 MEM_DECOMMIT;BIT16 MEM_RELEASE;BIT17 MEM_FREE;BIT18 BIT18;BIT19 MEM_RESERVE_PLACEHOLDER;BIT20 MEM_RESET;BIT21 MEM_TOP_DOWN;BIT22 MEM_WRITE_WATCH;BIT23 MEM_PHYSICAL;BIT24 MEM_DIFFERENT_IMAGE_BASE_OK;BIT25 MEM_RESET_UNDO;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 MEM_LARGE_PAGES;BIT31 BIT31; BIT32 MEM_4MB_PAGES ;}ALLOCATION_TYPE;
  inline ALLOCATION_TYPE GET_ALLOCATION_TYPE [uint64_t v] = * (struct ALLOCATION_TYPE* ) maskToStruct[ (uint64_t)v ];
typedef struct PAGE_PROTECT{ BIT1 PAGE_NOACCESS ; BIT2 PAGE_READONLY ; BIT3 PAGE_READWRITE ; BIT4 PAGE_WRITECOPY ;BIT5 PAGE_EXECUTE ;BIT6 PAGE_EXECUTE_READ; BIT7 PAGE_EXECUTE_READWRITE ; BIT8 PAGE_EXECUTE_WRITECOPY ;BIT9 PAGE_GUARD ;BIT10 PAGE_NOCACHE;BIT11 PAGE_WRITECOMBINE;BIT12 PAGE_GRAPHICS_NOACCESS ;BIT13 PAGE_GRAPHICS_READONLY ; BIT14 PAGE_GRAPHICS_READWRITE ; BIT15 PAGE_GRAPHICS_EXECUTE ; BIT16 PAGE_GRAPHICS_EXECUTE_READ ;BIT17 PAGE_GRAPHICS_EXECUTE_READWRITE ;BIT18 PAGE_GRAPHICS_COHERENT ;BIT19 PAGE_GRAPHICS_NOCACHE ;BIT20 BIT20;BIT21 BIT21;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 BIT26;BIT27 BIT27;BIT28 BIT28;BIT29 PAGE_ENCLAVE_MASK;BIT30 PAGE_ENCLAVE_UNVALIDATED;BIT31 PAGE_TARGETS_NO_UPDATE; BIT32 PAGE_ENCLAVE_THREAD_CONTROL ;}PAGE_PROTECT;
  inline PAGE_PROTECT GET_PAGE_PROTECT [uint64_t v] = * (struct PAGE_PROTECT* ) maskToStruct[ (uint64_t)v ];
typedef struct EXECUTION_STATE{ BIT1 ES_SYSTEM_REQUIRED ; BIT2 ES_DISPLAY_REQUIRED ; BIT3 ES_USER_PRESENT ; BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6; BIT7 ES_AWAYMODE_REQUIRED ; BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 BIT30;BIT31 BIT31; BIT32 ES_CONTINUOUS ;}EXECUTION_STATE;
    inline EXECUTION_STATE GET_EXECUTION_STATE [uint64_t v] = * (struct EXECUTION_STATE* ) maskToStruct[ (uint64_t)v ];
    inline EXECUTION_STATE GET_PEXECUTION_STATE[uint64_t v] = GET_EXECUTION_STATE[*(uint64_t*)GET[ (void*)v, sizeof(uint32_t) ]];
typedef struct SECURITY_INFORMATION{ BIT1 OWNER_SECURITY_INFORMATION ; BIT2 GROUP_SECURITY_INFORMATION ; BIT3 DACL_SECURITY_INFORMATION ;BIT4 SACL_SECURITY_INFORMATION ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 UNPROTECTED_SACL_SECURITY_INFORMATION;BIT30 UNPROTECTED_DACL_SECURITY_INFORMATION;BIT32 PROTECTED_SACL_SECURITY_INFORMATION;BIT31 PROTECTED_DACL_SECURITY_INFORMATION;}SECURITY_INFORMATION;
    inline SECURITY_INFORMATION GET_SECURITY_INFORMATION[uint64_t v] = * ( SECURITY_INFORMATION* ) maskToStruct[(uint64_t)v];
typedef struct ACCESS_MASK{ BIT1 BIT1; BIT2 BIT2; BIT3 BIT3 ;BIT4 BIT4;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}ACCESS_MASK;
    inline ACCESS_MASK GET_ACCESS_MASK [ uint64_t v ] = * ( ACCESS_MASK* ) maskToStruct[(uint64_t)v];
    inline ACCESS_MASK GET_PACCESS_MASK[ uint64_t v ] = GET_ACCESS_MASK[ *(uint64_t*)GET[ (void*)v, sizeof(uint32_t) ] ];
inline struct ACCESS_MASK_PARTITION{ BIT1 QUERY_ACCESS ; BIT2 MODIFY_ACCESS ; BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_PARTITION[uint64_t v] = * (struct ACCESS_MASK_PARTITION* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_PARTITION ACCESS_MASK_PARTITION;
inline struct ACCESS_MASK_KEY{ BIT1 QUERY_VALUE ; BIT2 SET_VALUE ; BIT3 CREATE_SUB_KEY ; BIT4 ENUMERATE_SUB_KEYS ; BIT5 NOTIFY ; BIT6 CREATE_LINK ; BIT9 WOW64_64KEY ; BIT10 WOW64_32KEY ;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_KEY[uint64_t v] = * (struct ACCESS_MASK_KEY* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_KEY ACCESS_MASK_KEY;
inline struct ACCESS_MASK_DIRECTORY{ BIT1 QUERY ; BIT2 TRAVERSE ; BIT3 CREATE_OBJECT ; BIT4 CREATE_SUBDIRECTORY ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_DIRECTORY[uint64_t v] = * (struct ACCESS_MASK_DIRECTORY* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_DIRECTORY ACCESS_MASK_DIRECTORY;
inline struct ACCESS_MASK_LINK{ BIT1 QUERY ;BIT2 BIT2 ;BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_LINK[uint64_t v] = * (struct ACCESS_MASK_LINK* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_LINK ACCESS_MASK_LINK;
inline struct ACCESS_MASK_THREAD{ BIT1 TERMINATE ; BIT2 SUSPEND_RESUME ; BIT3 ALERT ; BIT4 GET_CONTEXT ; BIT5 SET_CONTEXT ; BIT6 SET_INFORMATION ; BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10; BIT11 SET_LIMITED_INFORMATION ; BIT12 QUERY_LIMITED_INFORMATION ; BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_THREAD[uint64_t v] = * (struct ACCESS_MASK_THREAD* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_THREAD ACCESS_MASK_THREAD;
inline struct ACCESS_MASK_PROCESS{ BIT1 TERMINATE ; BIT2 CREATE_THREAD ; BIT3 SET_SESSIONID ; BIT4 VM_OPERATION ; BIT5 VM_READ ; BIT6 VM_WRITE ; BIT7 DUP_HANDLE ; BIT8 CREATE_PROCESS ; BIT9 SET_QUOTA ; BIT10 SET_INFORMATION ; BIT11 QUERY_INFORMATION ; BIT12 SUSPEND_RESUME ; BIT13 QUERY_LIMITED_INFORMATION ; BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_PROCESS[uint64_t v] = * ( struct ACCESS_MASK_PROCESS* ) maskToStruct[(uint64_t)v]; typedef struct ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS;
inline struct ACCESS_MASK_EVENT{ BIT1 QUERY_STATE ; BIT2 MODIFY_STATE ; BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_EVENT[uint64_t v] = * (struct ACCESS_MASK_EVENT* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_EVENT ACCESS_MASK_EVENT;
inline struct ACCESS_MASK_SEMAPHORE{ BIT1 QUERY_STATE ; BIT2 MODIFY_STATE ; BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_SEMAPHORE[uint64_t v] = * (struct ACCESS_MASK_SEMAPHORE* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_SEMAPHORE ACCESS_MASK_SEMAPHORE;
inline struct ACCESS_MASK_TOKEN{ BIT1 ASSIGN_PRIMARY ; BIT2 DUPLICATE ; BIT3 IMPERSONATE ; BIT4 QUERY ; BIT5 QUERY_SOURCE ; BIT6 ADJUST_PRIVILEGES ; BIT7 ADJUST_GROUPS ; BIT8 ADJUST_DEFAULT ; BIT9 ADJUST_SESSIONID ; BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_TOKEN[uint64_t v] = * (struct ACCESS_MASK_TOKEN * ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_TOKEN ACCESS_MASK_TOKEN;
inline struct ACCESS_MASK_SECTION{ BIT1 QUERY ; BIT2 MAP_WRITE ; BIT3 MAP_READ ; BIT4 MAP_EXECUTE ; BIT5 EXTEND_SIZE ; BIT6 MAP_EXECUTE_EXPLICIT ; BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_SECTION[uint64_t v] = * (struct ACCESS_MASK_SECTION* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_SECTION ACCESS_MASK_SECTION;
inline struct ACCESS_MASK_PORT{ BIT1 ALL_ACCESS ; BIT2 CONNECT ; BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_PORT[uint64_t v] = * (struct ACCESS_MASK_PORT* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_PORT ACCESS_MASK_PORT;
inline struct ACCESS_MASK_DEBUG_OBJ{ BIT1 READ_EVENT ; BIT2 PROCESS_ASSIGN ; BIT3 SET_INFORMATION ; BIT4 QUERY_INFORMATION ; BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_DEBUG_OBJ[uint64_t v] = * (struct ACCESS_MASK_DEBUG_OBJ* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_DEBUG_OBJ ACCESS_MASK_DEBUG_OBJ;
inline struct ACCESS_MASK_DESKTOP{ BIT1 READOBJECTS ; BIT2 CREATEWINDOW ; BIT3 CREATEMENU ; BIT4 HOOKCONTROL ; BIT5 JOURNALRECORD ; BIT6 JOURNALPLAYBACK ; BIT7 ENUMERATE ; BIT8 WRITEOBJECTS ; BIT9 SWITCHDESKTOP ; BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_DESKTOP[uint64_t v] = * (struct ACCESS_MASK_DESKTOP* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_DESKTOP ACCESS_MASK_DESKTOP;
inline struct ACCESS_MASK_EVENTPAIR{ BIT1 ALL_ACCESS ; BIT2 BIT2 ;BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 BIT17;BIT18 BIT18;BIT19 BIT19;BIT20 BIT20;BIT21 BIT21;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 BIT26;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 BIT30;BIT31 BIT31;BIT32 BIT32;BIT33 BIT33;BIT34 BIT34;BIT35 BIT35;BIT36 BIT36;BIT37 BIT37;BIT38 BIT38;BIT39 BIT39;BIT40 BIT40;BIT41 BIT41;BIT42 BIT42;BIT43 BIT43;BIT44 BIT44;BIT45 BIT45;BIT46 BIT46;BIT47 BIT47;BIT48 BIT48;BIT49 BIT49;BIT50 BIT50;BIT51 BIT51;BIT52 BIT52;BIT53 BIT53;BIT54 BIT54;BIT55 BIT55;BIT56 BIT56;BIT57 BIT57;BIT58 BIT58;BIT59 BIT59;BIT60 BIT60;BIT61 BIT61;BIT62 BIT62;BIT63 BIT63;BIT64 BIT64;}
    GET_ACCESS_MASK_EVENTPAIR[uint64_t v] = * (struct ACCESS_MASK_EVENTPAIR* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_EVENTPAIR ACCESS_MASK_EVENTPAIR;
inline struct ACCESS_MASK_IOCOMPLETION{ BIT1 QUERY_STATE ; BIT2 MODIFY_STATE ; BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_IOCOMPLETION[uint64_t v] = * (struct ACCESS_MASK_IOCOMPLETION* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_IOCOMPLETION ACCESS_MASK_IOCOMPLETION;
inline struct ACCESS_MASK_JOB{ BIT1 ASSIGN_PROCESS ; BIT2 SET_ATTRIBUTES ; BIT3 QUERY ; BIT4 TERMINATE ; BIT5 SET_SECURITY_ATTRIBUTES ; BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 BIT17;BIT18 BIT18;BIT19 BIT19;BIT20 BIT20;BIT21 BIT21;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 BIT26;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 BIT30;BIT31 BIT31;BIT32 BIT32;BIT33 BIT33;BIT34 BIT34;BIT35 BIT35;BIT36 BIT36;BIT37 BIT37;BIT38 BIT38;BIT39 BIT39;BIT40 BIT40;BIT41 BIT41;BIT42 BIT42;BIT43 BIT43;BIT44 BIT44;BIT45 BIT45;BIT46 BIT46;BIT47 BIT47;BIT48 BIT48;BIT49 BIT49;BIT50 BIT50;BIT51 BIT51;BIT52 BIT52;BIT53 BIT53;BIT54 BIT54;BIT55 BIT55;BIT56 BIT56;BIT57 BIT57;BIT58 BIT58;BIT59 BIT59;BIT60 BIT60;BIT61 BIT61;BIT62 BIT62;BIT63 BIT63;BIT64 BIT64;}
    GET_ACCESS_MASK_JOB[uint64_t v] = * (struct ACCESS_MASK_JOB* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_JOB ACCESS_MASK_JOB;
inline struct ACCESS_MASK_KEYEDEVENT{ BIT1 WAIT ; BIT2 WAKE ; BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_KEYEDEVENT[uint64_t v] = * (struct ACCESS_MASK_KEYEDEVENT * ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_KEYEDEVENT ACCESS_MASK_KEYEDEVENT;
inline struct ACCESS_MASK_SESSION{ BIT1 QUERY_ACCESS ; BIT2 MODIFY_ACCESS ; BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_SESSION[uint64_t v] = * (struct ACCESS_MASK_SESSION * ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_SESSION ACCESS_MASK_SESSION;
inline struct ACCESS_MASK_TIMER{ BIT1 QUERY_STATE ; BIT2 MODIFY_STATE ; BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_TIMER[uint64_t v] = * (struct ACCESS_MASK_TIMER* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_TIMER ACCESS_MASK_TIMER;
inline struct ACCESS_MASK_ENLISTMENT{ BIT1 QUERY_INFORMATION ; BIT2 SET_INFORMATION ; BIT3 RECOVER ; BIT4 SUBORDINATE_RIGHTS ; BIT5 SUPERIOR_RIGHTS ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_ENLISTMENT[uint64_t v] = * (struct ACCESS_MASK_ENLISTMENT* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_ENLISTMENT ACCESS_MASK_ENLISTMENT;
inline struct ACCESS_MASK_MUTANT{ BIT1 MUTANT_QUERY_STATE ;BIT2 BIT2 ;BIT3 BIT3 ;BIT4 BIT4 ;BIT5 BIT5 ;BIT6 BIT6 ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_MUTANT[uint64_t v] = * (struct ACCESS_MASK_MUTANT* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_MUTANT ACCESS_MASK_MUTANT;
inline struct ACCESS_MASK_RESOURCEMANAGER{ BIT1 QUERY_INFORMATION ; BIT2 SET_INFORMATION ; BIT3 RECOVER ; BIT4 ENLIST ; BIT5 GET_NOTIFICATION ; BIT6 REGISTER_PROTOCOL ; BIT7 COMPLETE_PROPAGATION ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_RESOURCEMANAGER[uint64_t v] = * (struct ACCESS_MASK_RESOURCEMANAGER* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_RESOURCEMANAGER ACCESS_MASK_RESOURCEMANAGER;
inline struct ACCESS_MASK_TM{ BIT1 QUERY_INFORMATION ; BIT2 SET_INFORMATION ; BIT3 RECOVER ; BIT4 RENAME ; BIT5 CREATE_RM ; BIT6 BIND_TRANSACTION ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_TM[uint64_t v] = * (struct ACCESS_MASK_TM* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_TM ACCESS_MASK_TM;
inline struct ACCESS_MASK_TRANSACTION { BIT1 QUERY_INFORMATION ; BIT2 SET_INFORMATION ; BIT3 ENLIST ; BIT4 COMMIT ; BIT5 ROLLBACK ; BIT6 PROPAGATE ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_TRANSACTION[uint64_t v] = * (struct ACCESS_MASK_TRANSACTION* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_TRANSACTION ACCESS_MASK_TRANSACTION;
inline struct ACCESS_MASK_WINDOW_STATION{ BIT1 ENUMDESKTOPS ; BIT2 READATTRIBUTES ; BIT3 ACCESSCLIPBOARD ; BIT4 CREATEDESKTOP ; BIT5 WRITEATTRIBUTES ; BIT6 ACCESSGLOBALATOMS ; BIT7 EXITWINDOWS ; BIT8 BIT8 ; BIT9 ENUMERATE ; BIT10 READSCREEN ;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_WINDOW_STATION[uint64_t v] = * (struct ACCESS_MASK_WINDOW_STATION* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_WINDOW_STATION ACCESS_MASK_WINDOW_STATION;
inline struct ACCESS_MASK_WORKER_FACTORY{ BIT1 RELEASE_WORKER ; BIT2 WAIT ; BIT3 SET_INFORMATION ; BIT4 QUERY_INFORMATION ; BIT5 READY_WORKER ; BIT6 SHUTDOWN ;BIT7 BIT7 ;BIT8 BIT8 ;BIT9 BIT9 ;BIT10 BIT10;BIT11 BIT11;BIT12 BIT12;BIT13 BIT13;BIT14 BIT14;BIT15 BIT15;BIT16 BIT16;BIT17 DELETE;BIT18 READ_CONTROL;BIT19 WRITE_DAC;BIT20 WRITE_OWNER;BIT21 SYNCHRONIZE;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25;BIT26 MAXIMUM;BIT27 BIT27;BIT28 BIT28;BIT29 BIT29;BIT30 GENERIC_EXECUTE;BIT32 GENERIC_READ;BIT31 GENERIC_WRITE;}
    GET_ACCESS_MASK_WORKER_FACTORY[uint64_t v] = * (struct ACCESS_MASK_WORKER_FACTORY* ) maskToStruct[(uint64_t)v];typedef struct ACCESS_MASK_WORKER_FACTORY ACCESS_MASK_WORKER_FACTORY;
inline struct ACCESS_MASK_FILE{ BIT1 READ_DATA :1; BIT2 ADD_FILE :1; BIT3 APPEND_DATA :1; BIT4 READ_EA :1; BIT5 WRITE_EA :1; BIT6 EXECUTE :1; BIT7 DELETE_CHILD :1; BIT8 READ_ATTRIBUTES :1; BIT9 WRITE_ATTRIBUTES :1; BIT10 unused1 :1; BIT11 unused2:1; BIT12 unused3 :1; BIT13 unused4 :1; BIT14 unused5:1; BIT15 unused6 :1; BIT16 unused9 :1; BIT17 DELETE :1; BIT18 READ_CONTROL :1; BIT19 WRITE_DAC :1; BIT20 WRITE_OWNER :1; BIT21 SYNCHRONIZE :1; BIT22 unused10:1; BIT23 unused11:1; BIT24 unused12:1; BIT25 ACCESS_SYSTEM_SECURITY :1; BIT26 MAXIUM :1; BIT27 unused13 :1; BIT28 unused14 :1; BIT29 GENERIC_ALL :1; BIT30 GENERIC_EXECUTE :1; BIT31 GENERIC_WRITE :1; BIT32 GENERIC_READ :1; }
    GET_ACCESS_MASK_FILE[uintptr_t v] = * (struct ACCESS_MASK_FILE* ) maskToStruct[v]; typedef struct ACCESS_MASK_FILE ACCESS_MASK_FILE;
inline struct _FILE_OPTIONS{ BIT1 DIRECTORY_FILE ; BIT2 WRITE_THROUGH ; BIT3 SEQUENTIAL_ONLY ; BIT4 NO_INTERMEDIATE_BUFFERING ; BIT5 SYNCHRONOUS_IO_ALERT ; BIT6 SYNCHRONOUS_IO_NONALERT ; BIT7 NON_DIRECTORY_FILE ; BIT8 CREATE_TREE_CONNECTION ; BIT9 COMPLETE_IF_OPLOCKED ; BIT10 NO_EA_KNOWLEDGE ; BIT11 OPEN_REMOTE_INSTANCE ; BIT12 RANDOM_ACCESS ; BIT13 DELETE_ON_CLOSE ; BIT14 OPEN_BY_FILE_ID ; BIT15 OPEN_FOR_BACKUP_INTENT ; BIT16 NO_COMPRESSION ; BIT17 OPEN_REQUIRING_OPLOCK ; BIT18 DISALLOW_EXCLUSIVE ; BIT19 SESSION_AWARE ; BIT20 RESERVE_OPFILTER ; BIT21 OPEN_REPARSE_POINT ; BIT22 OPEN_NO_RECALL ; BIT23 OPEN_FOR_FREE_SPACE_QUERY ; }
    GET_FILE_OPTIONS[uintptr_t v] = * (struct _FILE_OPTIONS* ) maskToStruct[v]; typedef struct _FILE_OPTIONS FILE_OPTIONS; typedef struct _FILE_OPTIONS _FILE_OPTIONS;
inline struct _FILE_SHARE_ACCESS{ BIT1 FILE_SHARE_READ : 1; BIT2 FILE_SHARE_WRITE : 1; BIT3 FILE_SHARE_DELETE : 1; }
    GET_FILE_SHARE_ACCESS[uintptr_t v] = * (struct _FILE_SHARE_ACCESS* ) maskToStruct[v]; typedef struct _FILE_SHARE_ACCESS FILE_SHARE_ACCESS;typedef struct _FILE_SHARE_ACCESS _FILE_SHARE_ACCESS;
inline struct _FILE_ATTRIBUTES{ BIT1 READONLY :1; BIT2 HIDDEN :1; BIT3 SYSTEM :1; BIT4 UNUSED :1; BIT5 DIRECTORY :1; BIT6 ARCHIVE :1; BIT7 DEVICE :1; BIT8 NORMAL :1; BIT9 TEMPORARY :1; BIT10 SPARSE_FILE :1; BIT11 REPARSE_POINT :1; BIT12 COMPRESSED :1; BIT13 OFFLINE :1; BIT14 NOT_CONTENT_INDEXED :1; BIT15 ENCRYPTED :1; BIT16 INTEGRITY_STREAM :1; BIT17 VIRTUAL :1; BIT18 NO_SCRUB_DATA :1; BIT19 EA :1; BIT20 PINNED :1; }
    GET_FILE_ATTRIBUTES[uintptr_t v] = * (struct _FILE_ATTRIBUTES* ) maskToStruct[v]; typedef struct _FILE_ATTRIBUTES FILE_ATTRIBUTES; typedef struct _FILE_ATTRIBUTES _FILE_ATTRIBUTES;
typedef struct NOTIFICATION_MASK{ BIT1 NOTIFY_PREPREPARE ; BIT2 NOTIFY_PREPARE ; BIT3 NOTIFY_COMMIT ; BIT4 NOTIFY_ROLLBACK ; BIT5 NOTIFY_PREPREPARE_COMPLETE ; BIT6 NOTIFY_PREPARE_COMPLETE ; BIT7 NOTIFY_COMMIT_COMPLETE ; BIT8 NOTIFY_ROLLBACK_COMPLETE ; BIT9 NOTIFY_RECOVER ; BIT10 NOTIFY_SINGLE_PHASE_COMMIT ; BIT11 NOTIFY_DELEGATE_COMMIT ; BIT12 NOTIFY_RECOVER_QUERY ; BIT13 NOTIFY_ENLIST_PREPREPARE ; BIT14 NOTIFY_LAST_RECOVER ; BIT15 NOTIFY_INDOUBT ;BIT16 BIT16;BIT17 BIT17;BIT18 BIT18;BIT19 BIT19;BIT20 BIT20;BIT21 BIT21;BIT22 BIT22;BIT23 BIT23;BIT24 BIT24;BIT25 BIT25; BIT26 NOTIFY_TM_ONLINE ; BIT30 NOTIFY_REQUEST_OUTCOME ; BIT31 NOTIFY_COMMIT_FINALIZE ;}NOTIFICATION_MASK ;
    inline NOTIFICATION_MASK GET_NOTIFICATION_MASK[uint64_t v] = * ( NOTIFICATION_MASK* ) maskToStruct[(uint64_t)v];
typedef struct SID_AND_ATTRIBUTES_FLAGS { BIT1 SE_GROUP_MANDATORY;BIT2 SE_GROUP_ENABLED_BY_DEFAULT;BIT3 SE_GROUP_ENABLED ;BIT4 SE_GROUP_OWNER;BIT5 SE_GROUP_USE_FOR_DENY_ONLY;BIT6 SE_GROUP_INTEGRITY;BIT7 SE_GROUP_INTEGRITY_ENABLED ;BIT8 SE_GROUP_RESOURCE; }SID_AND_ATTRIBUTES_FLAGS;
   inline SID_AND_ATTRIBUTES_FLAGS GET_SID_AND_ATTRIBUTES_FLAGS[uint64_t v] = * ( SID_AND_ATTRIBUTES_FLAGS* ) maskToStruct[(uint64_t)v];
typedef ULONG RETLEN;
typedef struct _EX_PUSH_LOCK{ union { struct { ULONGLONG Locked:1; ULONGLONG Waiting:1; ULONGLONG Waking:1; ULONGLONG MultipleShared:1; ULONGLONG Shared:60; }s; ULONGLONG Value; void* Ptr; }u;}EX_PUSH_LOCK;
typedef struct _OBJECT_DIRECTORY { struct _OBJECT_DIRECTORY_ENTRY* HashBuckets[37]; struct _EX_PUSH_LOCK Lock; struct _DEVICE_MAP { struct _OBJECT_DIRECTORY* DosDevicesDirectory; struct _OBJECT_DIRECTORY* GlobalDosDevicesDirectory; PVOID DosDevicesDirectoryHandle; LONG ReferenceCount; ULONG DriveMap; UCHAR DriveType[32]; void* ServerSilo; }* DeviceMap; struct _OBJECT_DIRECTORY* ShadowDirectory; PVOID NamespaceEntry; PVOID SessionObject; ULONG Flags; ULONG SessionId; }OBJECT_DIRECTORY;
typedef struct _NEON128 { ULONGLONG Low; LONGLONG High;} NEON128, *PNEON128;
typedef struct _PS_ATTRIBUTE { ULONG64 Attribute; ULONG64 Size; ULONG64 Value; PVOID ValuePtr; PULONG64 ReturnLength; };
typedef struct _PS_ATTRIBUTE_LIST { ULONG64 TotalLength; struct _PS_ATTRIBUTE Attributes[1]; }PS_ATTRIBUTE_LIST,*PPS_ATTRIBUTE_LIST;
typedef struct _FILE_FULL_EA_INFORMATION{ULONG NextEntryOffset ; UCHAR Flags ; UCHAR EaNameLength ; USHORT EaValueLength ; CHAR EaName[1] ; }FILE_FULL_EA_INFORMATION, *PFILE_FULL_EA_INFORMATION;
typedef struct _GENERIC_MAPPING { ULONG GenericRead; ULONG GenericWrite; ULONG GenericExecute; ULONG GenericAll; }GENERIC_MAPPING,*PGENERIC_MAPPING;
typedef struct _HANDLE_TRACE_DB_ENTRY { struct _CLIENT_ID ClientId; PVOID Handle; ULONG Type; PVOID StackTrace[16]; };
typedef struct _HANDLE_TRACE_DEBUG_INFO { LONG RefCount; ULONG TableSize; ULONG BitMaskFlags; struct _FAST_MUTEX CloseCompactionLock; ULONG CurrentStackIndex; struct _HANDLE_TRACE_DB_ENTRY TraceDb[1]; };
typedef struct _HANDLE_TABLE_FREE_LIST { struct _EX_PUSH_LOCK FreeListLock; union _HANDLE_TABLE_ENTRY* FirstFreeHandleEntry; union _HANDLE_TABLE_ENTRY* LastFreeHandleEntry; LONG HandleCount; ULONG HighWaterMark; };
typedef struct _HANDLE_TABLE { ULONG NextHandleNeedingPool; LONG ExtraInfoPages; ULONG64 TableCode; void* QuotaProcess; struct _LIST_ENTRY HandleTableList; ULONG UniqueProcessId; ULONG Flags; UCHAR StrictFIFO : 1; UCHAR EnableHandleExceptions : 1; UCHAR Rundown : 1; UCHAR Duplicated : 1; UCHAR RaiseUMExceptionOnInvalidHandleClose : 1; struct _EX_PUSH_LOCK HandleContentionEvent; struct _EX_PUSH_LOCK HandleTableLock; struct _HANDLE_TABLE_FREE_LIST FreeLists[1]; UCHAR ActualEntry[32]; struct _HANDLE_TRACE_DEBUG_INFO* DebugInfo; };
typedef struct _KEY_VALUE_ENTRY { struct UNICODE_STRING ValueName; ULONG DataLength; ULONG DataOffset; ULONG Type; } KEY_VALUE_ENTRY, *PKEY_VALUE_ENTRY;
typedef struct _ALPC_SECURITY_ATTR { ULONG Flags; SECURITY_QUALITY_OF_SERVICE* QoS; PVOID ContextHandle; }ALPC_SECURITY_ATTR,*PALPC_SECURITY_ATTR;
typedef struct _FILE_IO_COMPLETION_INFORMATION { PVOID KeyContext; PVOID ApcContext; struct _IO_STATUS_BLOCK IoStatusBlock; }FILE_IO_COMPLETION_INFORMATION,*PFILE_IO_COMPLETION_INFORMATION;
typedef struct _RTL_ATOM_TABLE { ULONG Signature; LONG ReferenceCount; struct _EX_PUSH_LOCK PushLock; struct _HANDLE_TABLE* ExHandleTable; ULONG Flags; ULONG NumberOfBuckets; struct _RTL_ATOM_TABLE_ENTRY* Buckets[1]; }RTL_ATOM_TABLE;
typedef struct _TOKEN_SECURITY_ATTRIBUTES_INFORMATION { USHORT Version; USHORT Reserved; ULONG AttributeCount; union { struct _TOKEN_SECURITY_ATTRIBUTE_V1* pAttributeV1; } Attribute; }TOKEN_SECURITY_ATTRIBUTES_INFORMATION,*PTOKEN_SECURITY_ATTRIBUTES_INFORMATION;
typedef struct _INITIAL_TEB { struct { PVOID OldStackBase; PVOID OldStackLimit; } OldInitialTeb; PVOID StackBase; PVOID StackLimit; PVOID StackAllocationBase; } INITIAL_TEB, *PINITIAL_TEB;
typedef struct _PORT_MESSAGE { union { struct { CSHORT DataLength; CSHORT TotalLength; } s1; ULONG Length; } u1; union { struct { CSHORT Type; CSHORT DataInfoOffset; } s2; ULONG ZeroInit; } u2; union { CLIENT_ID ClientId; CLIENT_ID DoNotUseThisField; }u3; ULONG MessageId; union { SIZE_T ClientViewSize; ULONG CallbackId; }u4; } PORT_MESSAGE, *PPORT_MESSAGE;
typedef struct _WNF_TYPE_ID { struct { DWORD Data1; WORD Data2; WORD Data3; BYTE Data4[8]; } TypeId; }WNF_TYPE_ID;typedef WNF_TYPE_ID* PCWNF_TYPE_ID;typedef WNF_TYPE_ID CWNF_TYPE_ID;
typedef struct _WNF_DELIVERY_DESCRIPTOR { ULONG64 SubscriptionId; struct _WNF_STATE_NAME StateName; ULONG ChangeStamp; ULONG StateDataSize; ULONG EventMask; struct _WNF_TYPE_ID TypeId; ULONG StateDataOffset; }WNF_DELIVERY_DESCRIPTOR, *PWNF_DELIVERY_DESCRIPTOR;
typedef struct _WORKER_FACTORY_DEFERRED_WORK { struct _PORT_MESSAGE* AlpcSendMessage; PVOID AlpcSendMessagePort; ULONG AlpcSendMessageFlags; ULONG Flags; }WORKER_FACTORY_DEFERRED_WORK,*PWORKER_FACTORY_DEFERRED_WORK;
typedef struct _SE_SET_FILE_CACHE_INFORMATION { ULONG Size; struct _UNICODE_STRING CatalogDirectoryPath; struct _SE_SET_FILE_CACHE_ORIGIN_CLAIM_INFORMATION { ULONG64 OriginClaimSize; PVOID OriginClaim; } OriginClaimInfo; }SE_SET_FILE_CACHE_INFORMATION,*PCSE_SET_FILE_CACHE_INFORMATION;typedef SE_SET_FILE_CACHE_INFORMATION CSE_SET_FILE_CACHE_INFORMATION;
typedef struct _BOOT_ENTRY { ULONG Version; ULONG Length; ULONG Id; ULONG Attributes; ULONG FriendlyNameOffset; ULONG BootFilePathOffset; ULONG OsOptionsLength; UCHAR OsOptions[1]; }BOOT_ENTRY,*PBOOT_ENTRY;
typedef struct _EFI_DRIVER_ENTRY { ULONG Version; ULONG Length; ULONG Id; ULONG FriendlyNameOffset; ULONG DriverFilePathOffset; }EFI_DRIVER_ENTRY,*PEFI_DRIVER_ENTRY;
typedef struct _ALPC_CONTEXT_ATTR { PVOID PortContext; PVOID MessageContext; ULONG Sequence; ULONG MessageId; ULONG CallbackId; }ALPC_CONTEXT_ATTR,*PALPC_CONTEXT_ATTR ;
typedef struct _ALPC_DATA_VIEW_ATTR { ULONG Flags; PVOID SectionHandle; PVOID ViewBase; ULONG64 ViewSize; }ALPC_DATA_VIEW_ATTR,*PALPC_DATA_VIEW_ATTR;
typedef struct _ALPC_MESSAGE_ATTRIBUTES { ULONG AllocatedAttributes; ULONG ValidAttributes; }ALPC_MESSAGE_ATTRIBUTES,*PALPC_MESSAGE_ATTRIBUTES ;
typedef struct _BOOT_OPTIONS { ULONG Version; ULONG Length; ULONG Timeout; ULONG CurrentBootEntryId; ULONG NextBootEntryId; WCHAR HeadlessRedirection[1]; }BOOT_OPTIONS,*PBOOT_OPTIONS;
typedef struct _FILE_PATH { ULONG Version; ULONG Length; ULONG Type; UCHAR FilePath[1]; }FILE_PATH,*PFILE_PATH;
typedef struct _IR_TIMER_EXTRA_CREATE_PARAMETER { USHORT ComponentId; USHORT RelativeId; }IR_TIMER_EXTRA_CREATE_PARAMETER,*PIR_TIMER_EXTRA_CREATE_PARAMETER;
typedef struct _KCONTINUE_ARGUMENT { enum { KCONTINUE_UNWIND = 0, KCONTINUE_RESUME = 1, KCONTINUE_LONGJUMP = 2, KCONTINUE_SET = 3, KCONTINUE_LAST = 4, KCONTINUE_INVALID = 4 } ContinueType; ULONG ContinueFlags; ULONG64 Reserved[2]; }KCONTINUE_ARGUMENT,*PKCONTINUE_ARGUMENT;
typedef struct MEM_EXTENDED_PARAMETER { struct { DWORD64 Type : 8; uint64_t Reserved : 56; } DUMMYSTRUCTNAME; union { DWORD64 ULong64; PVOID Pointer; SIZE_T Size; HANDLE Handle; DWORD ULong; } DUMMYUNIONNAME;} MEM_EXTENDED_PARAMETER, *PMEM_EXTENDED_PARAMETER;
typedef struct _PORT_VIEW { ULONG Length; PVOID SectionHandle; ULONG SectionOffset; ULONG64 ViewSize; PVOID ViewBase; PVOID ViewRemoteBase; }PORT_VIEW,*PPORT_VIEW;
typedef struct _PS_CREATE_INFO { ULONG64 Size; enum _PS_CREATE_STATE { PsCreateInitialState = 0, PsCreateFailOnFileOpen = 1, PsCreateFailOnSectionCreate = 2, PsCreateFailExeFormat = 3, PsCreateFailMachineMismatch = 4, PsCreateFailExeName = 5, PsCreateSuccess = 6, PsCreateMaximumStates = 7 } State; struct { ULONG InitFlags; UCHAR WriteOutputOnExit : 1; UCHAR DetectManifest : 1; UCHAR IFEOSkipDebugger : 1; UCHAR IFEODoNotPropagateKeyState : 1; UCHAR SpareBits1 : 4; UCHAR SpareBits2 : 8; USHORT ProhibitedImageCharacteristics : 16; ULONG AdditionalFileAccess; } InitState; struct { PVOID FileHandle; } FailSection; struct { USHORT DllCharacteristics; } ExeFormat; struct { PVOID IFEOKey; } ExeName; struct { ULONG OutputFlags; UCHAR ProtectedProcess : 1; UCHAR AddressSpaceOverride : 1; UCHAR DevOverrideEnabled : 1; UCHAR ManifestDetected : 1; UCHAR ProtectedProcessLight : 1; UCHAR SpareBits1 : 3; UCHAR SpareBits2 : 8; USHORT SpareBits3 : 16; PVOID FileHandle; PVOID SectionHandle; ULONG64 UserProcessParametersNative; ULONG UserProcessParametersWow64; ULONG CurrentParameterFlags; ULONG64 PebAddressNative; ULONG PebAddressWow64; ULONG64 ManifestAddress; ULONG ManifestSize; } SuccessState; }PS_CREATE_INFO,*PPS_CREATE_INFO;
typedef struct _REMOTE_PORT_VIEW { ULONG Length; ULONG64 ViewSize; PVOID ViewBase; }REMOTE_PORT_VIEW,*PREMOTE_PORT_VIEW;
typedef struct _T2_SET_PARAMETERS { ULONG Version; ULONG Reserved; LONG64 NoWakeTolerance; }T2_SET_PARAMETERS ,*PT2_SET_PARAMETERS;
typedef struct _GROUP_AFFINITY { ULONG64 Mask; USHORT Group; USHORT Reserved[3]; }GROUP_AFFINITY;
typedef struct _EXCEPTION_RECORD { LONG ExceptionCode; ULONG ExceptionFlags; struct _EXCEPTION_RECORD* ExceptionRecord; PVOID ExceptionAddress; ULONG NumberParameters; ULONG64 ExceptionInformation[15]; }EXCEPTION_RECORD;
typedef struct _KTMOBJECT_CURSOR { struct _GUID LastQuery; ULONG ObjectIdCount; struct _GUID ObjectIds[1]; }KTMOBJECT_CURSOR ;
typedef union _FILE_SEGMENT_ELEMENT{ PVOID Buffer; UINT64 Alignment;} FILE_SEGMENT_ELEMENT, * PFILE_SEGMENT_ELEMENT;
typedef struct _TRANSACTION_NOTIFICATION { void* TransactionKey; unsigned long TransactionNotification; union _LARGE_INTEGER TmVirtualClock; unsigned long ArgumentLength; long __PADDING__[ 1 ];} TRANSACTION_NOTIFICATION, *PTRANSACTION_NOTIFICATION;
typedef struct _FILE_NETWORK_OPEN_INFORMATION { union _LARGE_INTEGER CreationTime; union _LARGE_INTEGER LastAccessTime; union _LARGE_INTEGER LastWriteTime; union _LARGE_INTEGER ChangeTime; union _LARGE_INTEGER AllocationSize; union _LARGE_INTEGER EndOfFile; unsigned long FileAttributes; long __PADDING__[1]; } FILE_NETWORK_OPEN_INFORMATION, *PFILE_NETWORK_OPEN_INFORMATION;
typedef struct _PROCESSOR_NUMBER { unsigned short Group; unsigned char Number; unsigned char Reserved;} PROCESSOR_NUMBER, *PPROCESSOR_NUMBER;
typedef struct _FILE_ACCESS_INFORMATION { ULONG AccessFlags; } FILE_ACCESS_INFORMATION ;
typedef struct _FILE_ALIGNMENT_INFO { ULONG AlignmentRequirement; } FILE_ALIGNMENT_INFO ;
typedef struct _FILE_ALIGNMENT_INFORMATION { ULONG AlignmentRequirement; } FILE_ALIGNMENT_INFORMATION ;
typedef struct _FILE_ALLOCATED_RANGE_BUFFER { union _LARGE_INTEGER FileOffset; union _LARGE_INTEGER Length; } FILE_ALLOCATED_RANGE_BUFFER ;
typedef struct _FILE_ALLOCATION_INFO { union _LARGE_INTEGER AllocationSize; } FILE_ALLOCATION_INFO ;
typedef struct _FILE_ALLOCATION_INFORMATION { union _LARGE_INTEGER AllocationSize; } FILE_ALLOCATION_INFORMATION ;
typedef struct _FILE_ATTRIBUTE_TAG_INFO { ULONG FileAttributes; ULONG ReparseTag; } FILE_ATTRIBUTE_TAG_INFO ;
typedef struct _FILE_ATTRIBUTE_TAG_INFORMATION { ULONG FileAttributes; ULONG ReparseTag; } FILE_ATTRIBUTE_TAG_INFORMATION ;
typedef struct _FILE_BASIC_INFORMATION { union _LARGE_INTEGER CreationTime; union _LARGE_INTEGER LastAccessTime; union _LARGE_INTEGER LastWriteTime; union _LARGE_INTEGER ChangeTime; ULONG FileAttributes; } FILE_BASIC_INFORMATION ;
typedef struct _FILE_BOTH_DIR_INFORMATION { ULONG NextEntryOffset; ULONG FileIndex; union _LARGE_INTEGER CreationTime; union _LARGE_INTEGER LastAccessTime; union _LARGE_INTEGER LastWriteTime; union _LARGE_INTEGER ChangeTime; union _LARGE_INTEGER EndOfFile; union _LARGE_INTEGER AllocationSize; ULONG FileAttributes; ULONG FileNameLength; ULONG EaSize; CHAR ShortNameLength; WCHAR ShortName[12]; WCHAR FileName[1]; } FILE_BOTH_DIR_INFORMATION ;
typedef struct _FILE_CASE_SENSITIVE_INFO { ULONG Flags; } FILE_CASE_SENSITIVE_INFO ;
typedef struct _FILE_CASE_SENSITIVE_INFORMATION { ULONG Flags; } FILE_CASE_SENSITIVE_INFORMATION ;
typedef struct _FILE_COMPLETION_INFORMATION { PVOID Port; PVOID Key; } FILE_COMPLETION_INFORMATION ;
typedef struct _FILE_COMPRESSION_INFO { union _LARGE_INTEGER CompressedFileSize; USHORT CompressionFormat; UCHAR CompressionUnitShift; UCHAR ChunkShift; UCHAR ClusterShift; UCHAR Reserved[3]; } FILE_COMPRESSION_INFO ;
typedef struct _FILE_COMPRESSION_INFORMATION { union _LARGE_INTEGER CompressedFileSize; USHORT CompressionFormat; UCHAR CompressionUnitShift; UCHAR ChunkShift; UCHAR ClusterShift; UCHAR Reserved[3]; } FILE_COMPRESSION_INFORMATION ;
typedef struct _FILE_DESIRED_STORAGE_CLASS_INFORMATION { enum _FILE_STORAGE_TIER_CLASS Class; ULONG Flags; } FILE_DESIRED_STORAGE_CLASS_INFORMATION ;
typedef struct _FILE_DIRECTORY_INFORMATION { ULONG NextEntryOffset; ULONG FileIndex; union _LARGE_INTEGER CreationTime; union _LARGE_INTEGER LastAccessTime; union _LARGE_INTEGER LastWriteTime; union _LARGE_INTEGER ChangeTime; union _LARGE_INTEGER EndOfFile; union _LARGE_INTEGER AllocationSize; ULONG FileAttributes; ULONG FileNameLength; WCHAR FileName[1]; } FILE_DIRECTORY_INFORMATION ;
typedef struct _FILE_DISPOSITION_INFO { UCHAR DeleteFileA; } FILE_DISPOSITION_INFO ;
typedef struct _FILE_DISPOSITION_INFORMATION { UCHAR DeleteFile; } FILE_DISPOSITION_INFORMATION ;
typedef struct _FILE_DISPOSITION_INFORMATION_EX { ULONG Flags; } FILE_DISPOSITION_INFORMATION_EX ;
typedef struct _FILE_DISPOSITION_INFO_EX { ULONG Flags; } FILE_DISPOSITION_INFO_EX ;
typedef struct _FILE_END_OF_FILE_INFO { union _LARGE_INTEGER EndOfFile; } FILE_END_OF_FILE_INFO ;
typedef struct _FILE_END_OF_FILE_INFORMATION { union _LARGE_INTEGER EndOfFile; } FILE_END_OF_FILE_INFORMATION ;
typedef struct _FILE_END_OF_FILE_INFORMATION_EX { union _LARGE_INTEGER EndOfFile; union _LARGE_INTEGER PagingFileSizeInMM; union _LARGE_INTEGER PagingFileMaxSize; ULONG Flags; } FILE_END_OF_FILE_INFORMATION_EX ;
typedef struct _FILE_ALL_INFORMATION { struct _FILE_BASIC_INFORMATION BasicInformation; struct _FILE_STANDARD_INFORMATION StandardInformation; struct _FILE_INTERNAL_INFORMATION InternalInformation; struct _FILE_EA_INFORMATION EaInformation; struct _FILE_ACCESS_INFORMATION AccessInformation; struct _FILE_POSITION_INFORMATION PositionInformation; struct _FILE_MODE_INFORMATION ModeInformation; struct _FILE_ALIGNMENT_INFORMATION AlignmentInformation; struct _FILE_NAME_INFORMATION NameInformation; } FILE_ALL_INFORMATION ;
typedef struct _JOB_SET_ARRAY { void* JobHandle; unsigned long MemberLevel; unsigned long Flags;} JOB_SET_ARRAY, *PJOB_SET_ARRAY;
typedef struct _MEMORY_RANGE_ENTRY { PVOID VirtualAddress; ULONG64 NumberOfBytes; }MEMORY_RANGE_ENTRY ;
typedef struct _TOKEN_SOURCE { char SourceName[ 8 ]; struct _LUID SourceIdentifier;} TOKEN_SOURCE, *PTOKEN_SOURCE;
typedef struct _AUTHZBASEP_SECURITY_ATTRIBUTES_INFORMATION { ULONG SecurityAttributeCount; struct _LIST_ENTRY SecurityAttributesList; ULONG WorkingSecurityAttributeCount; struct _LIST_ENTRY WorkingSecurityAttributesList; }AUTHZBASEP_SECURITY_ATTRIBUTES_INFORMATION;
typedef struct _SID_AND_ATTRIBUTES { void* Sid; unsigned long Attributes; long __PADDING__[ 1 ];} SID_AND_ATTRIBUTES, *PSID_AND_ATTRIBUTES;
typedef struct _SEP_TOKEN_DIAG_TRACK_ENTRY{ void *ProcessCid; void *ThreadCid; char ImageFileName[16]; unsigned int CreateMethod; uint64_t CreateTrace[30]; int Count; int CaptureCount;}SEP_TOKEN_DIAG_TRACK_ENTRY;
typedef struct _SEP_AUDIT_POLICY{ TOKEN_AUDIT_POLICY AdtTokenPolicy; char PolicySetStatus;}SEP_AUDIT_POLICY;
typedef struct _AUTHZBASEP_CLAIM_ATTRIBUTES_COLLECTION { ULONG DeviceGroupsCount; struct _SID_AND_ATTRIBUTES* pDeviceGroups; ULONG RestrictedDeviceGroupsCount; struct _SID_AND_ATTRIBUTES* pRestrictedDeviceGroups; struct _SID_AND_ATTRIBUTES_HASH DeviceGroupsHash; struct _SID_AND_ATTRIBUTES_HASH RestrictedDeviceGroupsHash; struct _AUTHZBASEP_SECURITY_ATTRIBUTES_INFORMATION* pUserSecurityAttributes; struct _AUTHZBASEP_SECURITY_ATTRIBUTES_INFORMATION* pDeviceSecurityAttributes; struct _AUTHZBASEP_SECURITY_ATTRIBUTES_INFORMATION* pRestrictedUserSecurityAttributes; struct _AUTHZBASEP_SECURITY_ATTRIBUTES_INFORMATION* pRestrictedDeviceSecurityAttributes; }AUTHZBASEP_CLAIM_ATTRIBUTES_COLLECTION;
typedef struct _RTL_DYNAMIC_HASH_TABLE{ unsigned int Flags; unsigned int Shift; unsigned int TableSize; unsigned int Pivot; unsigned int DivisorMask; unsigned int NumEntries; unsigned int NonEmptyBuckets; unsigned int NumEnumerators; void *Directory;}RTL_DYNAMIC_HASH_TABLE;
typedef struct _SEP_LOWBOX_HANDLES_TABLE{ EX_PUSH_LOCK Lock; RTL_DYNAMIC_HASH_TABLE *HashTable;}SEP_LOWBOX_HANDLES_TABLE;
typedef struct _SEP_SID_VALUES_BLOCK { ULONG BlockLength; LONG64 ReferenceCount; ULONG SidCount; ULONG64 SidValuesStart; }SEP_SID_VALUES_BLOCK;
typedef struct _OB_HANDLE_REVOCATION_BLOCK { struct _LIST_ENTRY RevocationInfos; struct _EX_PUSH_LOCK Lock; struct _EX_RUNDOWN_REF Rundown; }OB_HANDLE_REVOCATION_BLOCK;
typedef struct _RTL_DYNAMIC_HASH_TABLE_ENTRY { struct _LIST_ENTRY Linkage; ULONG64 Signature; }RTL_DYNAMIC_HASH_TABLE_ENTRY;
typedef struct _SEP_LOWBOX_NUMBER_ENTRY { struct _RTL_DYNAMIC_HASH_TABLE_ENTRY HashEntry; LONG64 ReferenceCount; PVOID PackageSid; ULONG LowboxNumber; PVOID AtomTable; }SEP_LOWBOX_NUMBER_ENTRY ;
typedef struct _SEP_LOWBOX_HANDLES_ENTRY{ RTL_DYNAMIC_HASH_TABLE_ENTRY HashEntry; uint64_t ReferenceCount; void *PackageSid; unsigned int HandleCount; void **Handles;}SEP_LOWBOX_HANDLES_ENTRY;
typedef struct _SEP_LUID_TO_INDEX_MAP_ENTRY { struct _RTL_DYNAMIC_HASH_TABLE_ENTRY HashEntry; LONG64 ReferenceCount; ULONG64 Luid; ULONG64 IndexIntoGlobalSingletonTable; UCHAR MarkedForDeletion; }SEP_LUID_TO_INDEX_MAP_ENTRY ;
typedef struct SEP_LOGON_SESSION_REFERENCES { struct SEP_LOGON_SESSION_REFERENCES *Next; LUID LogonId; LUID BuddyLogonId; uint64_t ReferenceCount; uint64_t Flags; struct _DEVICE_MAP *pDeviceMap; void *Token; UNICODE_STRING AccountName; UNICODE_STRING AuthorityName; SEP_LOWBOX_HANDLES_TABLE LowBoxHandlesTable; EX_PUSH_LOCK SharedDataLock; AUTHZBASEP_CLAIM_ATTRIBUTES_COLLECTION *SharedClaimAttributes; SEP_SID_VALUES_BLOCK *SharedSidValues; OB_HANDLE_REVOCATION_BLOCK RevocationBlock; void *ServerSilo; LUID SiblingAuthId; LIST_ENTRY TokenList; }SEP_LOGON_SESSION_REFERENCES;
typedef struct _ALPC_PORT_ATTRIBUTES { ULONG Flags; struct { ULONG Length; SECURITY_IMPERSONATION_LEVEL ImpersonationLevel; UCHAR ContextTrackingMode; UCHAR EffectiveOnly; } SecurityQos; ULONG64 MaxMessageLength; ULONG64 MemoryBandwidth; ULONG64 MaxPoolUsage; ULONG64 MaxSectionSize; ULONG64 MaxViewSize; ULONG64 MaxTotalSectionSize; ULONG DupObjectTypes; ULONG Reserved; }ALPC_PORT_ATTRIBUTES,*PALPC_PORT_ATTRIBUTES;
typedef struct _TOKEN_GROUPS { unsigned long GroupCount; struct _SID_AND_ATTRIBUTES Groups[ 1 ];} TOKEN_GROUPS, *PTOKEN_GROUPS;
typedef struct _TOKEN_USER { struct _SID_AND_ATTRIBUTES User;}TOKEN_USER,*PTOKEN_USER;
typedef struct _TOKEN_PRIVILEGES { unsigned long PrivilegeCount; struct _LUID_AND_ATTRIBUTES Privileges[ 1 ]; }TOKEN_PRIVILEGES,*PTOKEN_PRIVILEGES;
typedef struct _TOKEN_OWNER { void* Owner; } TOKEN_OWNER, *PTOKEN_OWNER;
typedef struct _TOKEN_PRIMARY_GROUP { void* PrimaryGroup; } TOKEN_PRIMARY_GROUP, *PTOKEN_PRIMARY_GROUP;
typedef struct _TOKEN_DEFAULT_DACL { struct _ACL* DefaultDacl;}TOKEN_DEFAULT_DACL ,*PTOKEN_DEFAULT_DACL ;
typedef struct _SEP_TOKEN_PRIVILEGES{ uint64_t Present; uint64_t Enabled; uint64_t EnabledByDefault;}SEP_TOKEN_PRIVILEGES;

inline uint64_t CROSS_THREAD_FLAGS_IMPERSONATING = 0x00000008;
typedef struct _EX_FAST_REF { PVOID Object; ULONG64 RefCnt : 4; ULONG64 Value; }EX_FAST_REF;inline void* DEREF[ struct nt`_EX_FAST_REF refptr ]= (void* )(((uintptr_t)refptr.Object) & 0xfffffffffffffff0);
typedef enum _SID_AUTHORITY{ SECURITY_NULL_SID_AUTHORITY = 0x0000000, SECURITY_WORLD_SID_AUTHORITY = 0x1000000, SECURITY_LOCAL_SID_AUTHORITY = 0x2000000, SECURITY_CREATOR_SID_AUTHORITY = 0x3000000, SECURITY_NON_UNIQUE_AUTHORITY = 0x4000000, SECURITY_RESOURCE_MANAGER_AUTHORITY = 0x9000000, SECURITY_NT_AUTHORITY = 0x5000000, SECURITY_APP_PACKAGE_AUTHORITY = 0x1500000, SECURITY_MANDATORY_LABEL_AUTHORITY = 0x10000000, SECURITY_SCOPED_POLICY_ID_AUTHORITY = 0x1700000, SECURITY_AUTHENTICATION_AUTHORITY = 0x1800000, SECURITY_PROCESS_TRUST_AUTHORITY = 0x1900000 } SID_AUTHORITY;
typedef enum _TOKEN_TYPE { TokenPrimary = 1, TokenImpersonation = 2 }TOKEN_TYPE;
typedef enum _INTEGRITY_LEVEL{ UNTRUSTED = 0x0000, LOW = 0x1000, MEDIUM = 0x2000, HIGH = 0x3000, SYSTEM = 0x4000, PROTECTED_PROCESS = 0x5000 , UNKNOWN_INTEGRITY}INTEGRITY_LEVEL;
typedef struct _MANDATORY_LABEL_SID{ unsigned char Revision; unsigned char SubAuthorityCount;SID_AUTHORITY authority;INTEGRITY_LEVEL integrity; SID_AND_ATTRIBUTES_FLAGS Attributes;} MANDATORY_LABEL_SID;
typedef struct _SID { unsigned char Revision; unsigned char SubAuthorityCount;struct _SID_IDENTIFIER_AUTHORITY IdentifierAuthority; unsigned long SubAuthority[ 1 ];} SID, *PSID;
typedef struct _TOKEN { TOKEN_SOURCE TokenSource; LUID TokenId; LUID AuthenticationId; LUID ParentTokenId; LARGE_INTEGER ExpirationTime; ERESOURCE *TokenLock; LUID ModifiedId; SEP_TOKEN_PRIVILEGES Privileges; SEP_AUDIT_POLICY AuditPolicy; unsigned int SessionId; unsigned int UserAndGroupCount; unsigned int RestrictedSidCount; unsigned int VariableLength; unsigned int DynamicCharged; unsigned int DynamicAvailable; unsigned int DefaultOwnerIndex; SID_AND_ATTRIBUTES *UserAndGroups; SID_AND_ATTRIBUTES *RestrictedSids; void *PrimaryGroup; unsigned int *DynamicPart; ACL *DefaultDacl; TOKEN_TYPE type; enum _SECURITY_IMPERSONATION_LEVEL ImpersonationLevel; unsigned int TokenFlags; unsigned char TokenInUse; unsigned int IntegrityLevelIndex; unsigned int MandatoryPolicy; SEP_LOGON_SESSION_REFERENCES *LogonSession; LUID OriginatingLogonSession; SID_AND_ATTRIBUTES_HASH SidHash; SID_AND_ATTRIBUTES_HASH RestrictedSidHash; AUTHZBASEP_SECURITY_ATTRIBUTES_INFORMATION *pSecurityAttributes; void *Package; SID_AND_ATTRIBUTES *Capabilities; unsigned int CapabilityCount; SID_AND_ATTRIBUTES_HASH CapabilitiesHash; SEP_LOWBOX_NUMBER_ENTRY *LowboxNumberEntry; SEP_LOWBOX_HANDLES_ENTRY *LowboxHandlesEntry; AUTHZBASEP_CLAIM_ATTRIBUTES_COLLECTION *pClaimAttributes; void *TrustLevelSid; struct _TOKEN *TrustLinkedToken; void *IntegrityLevelSidValue; SEP_SID_VALUES_BLOCK *TokenSidValues; SEP_LUID_TO_INDEX_MAP_ENTRY *IndexEntry; SEP_TOKEN_DIAG_TRACK_ENTRY *DiagnosticInfo; uint64_t VariablePart; }TOKEN;
typedef struct _SID_PROLOG{ unsigned char Revision; unsigned char SubAuthorityCount;SID_AUTHORITY authority;}SID_PROLOG;
typedef struct USER_OR_GROUP{ SID_PROLOG Sid;SID_AND_ATTRIBUTES_FLAGS Attributes;}USER_OR_GROUP;
typedef struct USER_AND_GROUPS{ USER_OR_GROUP groups[10]; }USER_AND_GROUPS; this USER_OR_GROUP NEW_USER_OR_GROUP ;this USER_AND_GROUPS NEW_USER_AND_GROUPS ;
inline USER_AND_GROUPS ACTIVETOKEN_GROUPS[ SID_AND_ATTRIBUTES UserAndGroups[10], unsigned int UserAndGroupCount ] = (
self->RETURN_ACTIVETOKEN_GROUPS = this->NEW_USER_AND_GROUPS ,
    UserAndGroupCount > 0 ? ( self->RETURN_ACTIVETOKEN_GROUPS.groups[0].Sid = *(SID_PROLOG*)UserAndGroups[0].Sid,
                             self->RETURN_ACTIVETOKEN_GROUPS.groups[0].Attributes = GET_SID_AND_ATTRIBUTES_FLAGS[ UserAndGroups[0].Attributes ],
                             1
                          )
                          :
                          1,
self->RETURN_ACTIVETOKEN_GROUPS
);
inline struct nt`_ETHREAD* ACTIVE_THREAD = (struct nt`_ETHREAD*)curthread;
inline PEPROCESS ACTIVE_PROCESS = ((PEPROCESS) ((struct nt`_ETHREAD*)ACTIVE_THREAD)->Tcb.ApcState.Process);
inline struct execimage{char filename[15];} execimage = *(struct execimage*) &((struct nt`_EPROCESS*)ACTIVE_PROCESS)->ImageFileName[0] ;
inline TOKEN* ACTIVEPROCESS_TOKEN = ( TOKEN*) DEREF[ ((struct nt`_EPROCESS*)ACTIVE_PROCESS)->Token ] ;
inline TOKEN* ACTIVETHREAD_TOKEN = ( TOKEN*) ACTIVE_THREAD->AdjustedClientToken ;
inline BOOL ACTIVETHREAD_IMPERSONATING = ( ACTIVE_THREAD->CrossThreadFlags & CROSS_THREAD_FLAGS_IMPERSONATING != 0 ) ;
inline TOKEN* ACTIVETOKEN = ACTIVETHREAD_IMPERSONATING ? ACTIVETHREAD_TOKEN : ACTIVEPROCESS_TOKEN;
inline INTEGRITY_LEVEL TOKEN_INTEGRIY = ( !ACTIVETOKEN || ACTIVETOKEN->IntegrityLevelIndex == -1 ) ?
                                                          UNKNOWN_INTEGRITY
                                                          :
                                                          ( *( (MANDATORY_LABEL_SID**) &ACTIVETOKEN->UserAndGroups[ ACTIVETOKEN->IntegrityLevelIndex ] ) )->integrity ;
typedef uint64_t ARGNR;
void* toResolve[ nt`_ETHREAD*, ARGNR ];
inline void* R[ ARGNR argnr ] = toResolve[ (nt`_ETHREAD*)curthread, argnr ];
inline uint16_t BUFSIZE = 128;
typedef struct INBUF{ byte buf[ BUFSIZE ]; }INBUF; typedef ULONG INLEN;
typedef struct INBUF OUTBUF;typedef ULONG OUTLEN;

typedef struct{
  BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ;
  union all{
    union NtAcceptConnectPortMembers{
      struct NtAcceptConnectPort_AS_NUMERIC{HANDLE C0; PVOID C1; PORT_MESSAGE C2; BOOLEAN C3; PORT_VIEW C4; REMOTE_PORT_VIEW C5; NTSTATUS C6; }NUMERIC;
      struct NtAcceptConnectPort_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PORT_MESSAGE PORT_MESSAGE ; BOOLEAN BOOLEAN ; PORT_VIEW PORT_VIEW ; REMOTE_PORT_VIEW REMOTE_PORT_VIEW ; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAcceptConnectPort{HANDLE PortHandle; PVOID PortContext; PORT_MESSAGE ConnectionRequest; BOOLEAN AcceptConnection; PORT_VIEW ServerView; REMOTE_PORT_VIEW arg1; NTSTATUS result; }NAMES;
    } NtAcceptConnectPort;
    union NtAccessCheckMembers{
      struct NtAccessCheck_AS_NUMERIC{SECURITY_DESCRIPTOR C0; HANDLE C1; ACCESS_MASK C2; GENERIC_MAPPING C3; PRIVILEGE_SET C4; ULONG C5; ACCESS_MASK C6; NTSTATUS C7; NTSTATUS C8; }NUMERIC;
      struct NtAccessCheck_AS_TYPES{SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR ; HANDLE HANDLE ; ACCESS_MASK ACCESS_MASK ; GENERIC_MAPPING GENERIC_MAPPING ; PRIVILEGE_SET PRIVILEGE_SET ; ULONG ULONG ; ACCESS_MASK ACCESS_MASK1; NTSTATUS NTSTATUS ; NTSTATUS NTSTATUS1; }TYPES;
      struct NtAccessCheck{SECURITY_DESCRIPTOR SecurityDescriptor; HANDLE ClientToken; ACCESS_MASK DesiredAccess; GENERIC_MAPPING GenericMapping; PRIVILEGE_SET PrivilegeSet; ULONG PrivilegeSetLength; ACCESS_MASK GrantedAccess; NTSTATUS AccessStatus; NTSTATUS result; }NAMES;
    } NtAccessCheck;
    union NtAccessCheckAndAuditAlarmMembers{
      struct NtAccessCheckAndAuditAlarm_AS_NUMERIC{UNICODE_STRING C0; PVOID C1; UNICODE_STRING C2; UNICODE_STRING C3; SECURITY_DESCRIPTOR C4; ACCESS_MASK C5; GENERIC_MAPPING C6; BOOLEAN C7; ACCESS_MASK C8; NTSTATUS C9; BOOLEAN C10; NTSTATUS C11; }NUMERIC;
      struct NtAccessCheckAndAuditAlarm_AS_TYPES{UNICODE_STRING UNICODE_STRING ; PVOID PVOID ; UNICODE_STRING UNICODE_STRING1; UNICODE_STRING UNICODE_STRING2; SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR ; ACCESS_MASK ACCESS_MASK ; GENERIC_MAPPING GENERIC_MAPPING ; BOOLEAN BOOLEAN ; ACCESS_MASK ACCESS_MASK1; NTSTATUS NTSTATUS ; BOOLEAN BOOLEAN1; NTSTATUS NTSTATUS1; }TYPES;
      struct NtAccessCheckAndAuditAlarm{UNICODE_STRING arg1; PVOID arg2; UNICODE_STRING arg3; UNICODE_STRING arg4; SECURITY_DESCRIPTOR arg5; ACCESS_MASK arg6; GENERIC_MAPPING arg7; BOOLEAN arg8; ACCESS_MASK arg9; NTSTATUS arg10; BOOLEAN arg11; NTSTATUS result; }NAMES;
    } NtAccessCheckAndAuditAlarm;
    union NtAccessCheckByTypeMembers{
      struct NtAccessCheckByType_AS_NUMERIC{SECURITY_DESCRIPTOR C0; SID C1; HANDLE C2; ACCESS_MASK C3; OBJECT_TYPE_LIST C4; ULONG C5; GENERIC_MAPPING C6; PRIVILEGE_SET C7; ULONG C8; ACCESS_MASK C9; NTSTATUS C10; NTSTATUS C11; }NUMERIC;
      struct NtAccessCheckByType_AS_TYPES{SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR ; SID SID ; HANDLE HANDLE ; ACCESS_MASK ACCESS_MASK ; OBJECT_TYPE_LIST OBJECT_TYPE_LIST ; ULONG ULONG ; GENERIC_MAPPING GENERIC_MAPPING ; PRIVILEGE_SET PRIVILEGE_SET ; ULONG ULONG1; ACCESS_MASK ACCESS_MASK1; NTSTATUS NTSTATUS ; NTSTATUS NTSTATUS1; }TYPES;
      struct NtAccessCheckByType{SECURITY_DESCRIPTOR SecurityDescriptor; SID PrincipalSelfSid; HANDLE ClientToken; ACCESS_MASK DesiredAccess; OBJECT_TYPE_LIST ObjectTypeList; ULONG ObjectTypeListLength; GENERIC_MAPPING GenericMapping; PRIVILEGE_SET PrivilegeSet; ULONG PrivilegeSetLength; ACCESS_MASK GrantedAccess; NTSTATUS AccessStatus; NTSTATUS result; }NAMES;
    } NtAccessCheckByType;
    union NtAcquireCrossVmMutantMembers{
      struct NtAcquireCrossVmMutant_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
      struct NtAcquireCrossVmMutant_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAcquireCrossVmMutant{HANDLE arg1; LARGE_INTEGER arg2; NTSTATUS result; }NAMES;
    } NtAcquireCrossVmMutant;
    union NtAcquireProcessActivityReferenceMembers{
      struct NtAcquireProcessActivityReference_AS_NUMERIC{PHANDLE C0; HANDLE C1; PROCESS_ACTIVITY_TYPE C2; NTSTATUS C3; }NUMERIC;
      struct NtAcquireProcessActivityReference_AS_TYPES{PHANDLE PHANDLE ; HANDLE HANDLE ; PROCESS_ACTIVITY_TYPE PROCESS_ACTIVITY_TYPE ; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAcquireProcessActivityReference{PHANDLE arg1; HANDLE arg2; PROCESS_ACTIVITY_TYPE arg3; NTSTATUS result; }NAMES;
    } NtAcquireProcessActivityReference;
    union NtAddAtomMembers{
      struct NtAddAtom_AS_NUMERIC{WSTR C0; ULONG C1; RTL_ATOM C2; NTSTATUS C3; }NUMERIC;
      struct NtAddAtom_AS_TYPES{WSTR WSTR ; ULONG ULONG ; RTL_ATOM RTL_ATOM ; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAddAtom{WSTR AtomName; ULONG AtomNameLength; RTL_ATOM arg1; NTSTATUS result; }NAMES;
    } NtAddAtom;
    union NtAddAtomExMembers{
      struct NtAddAtomEx_AS_NUMERIC{WSTR C0; ULONG C1; RTL_ATOM C2; ULONG C3; NTSTATUS C4; }NUMERIC;
      struct NtAddAtomEx_AS_TYPES{WSTR WSTR ; ULONG ULONG ; RTL_ATOM RTL_ATOM ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAddAtomEx{WSTR AtomName; ULONG Length; RTL_ATOM Atom; ULONG Flags; NTSTATUS result; }NAMES;
    } NtAddAtomEx;
    union NtAddBootEntryMembers{
      struct NtAddBootEntry_AS_NUMERIC{BOOT_ENTRY C0; ULONG C1; NTSTATUS C2; }NUMERIC;
      struct NtAddBootEntry_AS_TYPES{BOOT_ENTRY BOOT_ENTRY ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAddBootEntry{BOOT_ENTRY BootEntry; ULONG arg1; NTSTATUS result; }NAMES;
    } NtAddBootEntry;
    union NtAddDriverEntryMembers{
      struct NtAddDriverEntry_AS_NUMERIC{EFI_DRIVER_ENTRY C0; ULONG C1; NTSTATUS C2; }NUMERIC;
      struct NtAddDriverEntry_AS_TYPES{EFI_DRIVER_ENTRY EFI_DRIVER_ENTRY ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAddDriverEntry{EFI_DRIVER_ENTRY DriverEntry; ULONG arg1; NTSTATUS result; }NAMES;
    } NtAddDriverEntry;
    union NtAdjustGroupsTokenMembers{
      struct NtAdjustGroupsToken_AS_NUMERIC{HANDLE C0; BOOLEAN C1; TOKEN_GROUPS C2; ULONG C3; TOKEN_GROUPS C4; ULONG C5; NTSTATUS C6; }NUMERIC;
      struct NtAdjustGroupsToken_AS_TYPES{HANDLE HANDLE ; BOOLEAN BOOLEAN ; TOKEN_GROUPS TOKEN_GROUPS ; ULONG ULONG ; TOKEN_GROUPS TOKEN_GROUPS1; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAdjustGroupsToken{HANDLE TokenHandle; BOOLEAN ResetToDefault; TOKEN_GROUPS TokenGroups; ULONG PreviousGroupsLength; TOKEN_GROUPS PreviousGroups; ULONG RequiredLength; NTSTATUS result; }NAMES;
    } NtAdjustGroupsToken;
    union NtAdjustPrivilegesTokenMembers{
      struct NtAdjustPrivilegesToken_AS_NUMERIC{HANDLE C0; BOOLEAN C1; TOKEN_PRIVILEGES C2; ULONG C3; TOKEN_PRIVILEGES C4; ULONG C5; NTSTATUS C6; }NUMERIC;
      struct NtAdjustPrivilegesToken_AS_TYPES{HANDLE HANDLE ; BOOLEAN BOOLEAN ; TOKEN_PRIVILEGES TOKEN_PRIVILEGES ; ULONG ULONG ; TOKEN_PRIVILEGES TOKEN_PRIVILEGES1; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
      struct NtAdjustPrivilegesToken{HANDLE TokenHandle; BOOLEAN DisableAllPrivileges; TOKEN_PRIVILEGES TokenPrivileges; ULONG PreviousPrivilegesLength; TOKEN_PRIVILEGES PreviousPrivileges; ULONG RequiredLength; NTSTATUS result; }NAMES;
    } NtAdjustPrivilegesToken;
  union NtAlertResumeThreadMembers{
    struct NtAlertResumeThread_AS_NUMERIC{HANDLE C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtAlertResumeThread_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlertResumeThread{HANDLE ThreadHandle; ULONG PreviousSuspendCount; NTSTATUS result; }NAMES;
  } NtAlertResumeThread;
  union NtAlertThreadMembers{
    struct NtAlertThread_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtAlertThread_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlertThread{HANDLE ThreadHandle; NTSTATUS result; }NAMES;
  } NtAlertThread;
  union NtAlertThreadByThreadIdMembers{
    struct NtAlertThreadByThreadId_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtAlertThreadByThreadId_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlertThreadByThreadId{HANDLE UniqueThread; NTSTATUS result; }NAMES;
  } NtAlertThreadByThreadId;
  union NtAllocateLocallyUniqueIdMembers{
    struct NtAllocateLocallyUniqueId_AS_NUMERIC{LUID C0; NTSTATUS C1; }NUMERIC;
    struct NtAllocateLocallyUniqueId_AS_TYPES{LUID LUID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAllocateLocallyUniqueId{LUID Luid; NTSTATUS result; }NAMES;
  } NtAllocateLocallyUniqueId;
  union NtAllocateReserveObjectMembers{
    struct NtAllocateReserveObject_AS_NUMERIC{PHANDLE C0; OBJECT_ATTRIBUTES C1; MEMORY_RESERVE_TYPE C2; NTSTATUS C3; }NUMERIC;
    struct NtAllocateReserveObject_AS_TYPES{PHANDLE PHANDLE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; MEMORY_RESERVE_TYPE MEMORY_RESERVE_TYPE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAllocateReserveObject{PHANDLE MemoryReserveHandle; OBJECT_ATTRIBUTES ObjectAttributes; MEMORY_RESERVE_TYPE Type; NTSTATUS result; }NAMES;
  } NtAllocateReserveObject;
  union NtAllocateUserPhysicalPagesMembers{
    struct NtAllocateUserPhysicalPages_AS_NUMERIC{HANDLE C0; ULONG C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtAllocateUserPhysicalPages_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAllocateUserPhysicalPages{HANDLE arg1; ULONG arg2; ULONG arg3; NTSTATUS result; }NAMES;
  } NtAllocateUserPhysicalPages;
  union NtAllocateUserPhysicalPagesExMembers{
    struct NtAllocateUserPhysicalPagesEx_AS_NUMERIC{HANDLE C0; ULONG C1; ULONG C2; MEM_EXTENDED_PARAMETER C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtAllocateUserPhysicalPagesEx_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; ULONG ULONG1; MEM_EXTENDED_PARAMETER MEM_EXTENDED_PARAMETER ; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAllocateUserPhysicalPagesEx{HANDLE arg1; ULONG arg2; ULONG arg3; MEM_EXTENDED_PARAMETER arg4; ULONG arg5; NTSTATUS result; }NAMES;
  } NtAllocateUserPhysicalPagesEx;
  union NtAllocateUuidsMembers{
    struct NtAllocateUuids_AS_NUMERIC{LARGE_INTEGER C0; ULONG C1; ULONG C2; CHAR C3; NTSTATUS C4; }NUMERIC;
    struct NtAllocateUuids_AS_TYPES{LARGE_INTEGER LARGE_INTEGER ; ULONG ULONG ; ULONG ULONG1; CHAR CHAR ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAllocateUuids{LARGE_INTEGER Time; ULONG Range; ULONG Sequence; CHAR Seed; NTSTATUS result; }NAMES;
  } NtAllocateUuids;
  union NtAllocateVirtualMemoryMembers{
    struct NtAllocateVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; ULONG C2; SIZE_T C3; ALLOCATION_TYPE C4; PAGE_PROTECT C5; NTSTATUS C6; }NUMERIC;
    struct NtAllocateVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; ULONG ULONG ; SIZE_T SIZE_T ; ALLOCATION_TYPE ALLOCATION_TYPE ; PAGE_PROTECT PAGE_PROTECT ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAllocateVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; ULONG ZeroBits; SIZE_T RegionSize; ALLOCATION_TYPE AllocationType; PAGE_PROTECT Protect; NTSTATUS result; }NAMES;
  } NtAllocateVirtualMemory;
  union NtAllocateVirtualMemoryExMembers{
    struct NtAllocateVirtualMemoryEx_AS_NUMERIC{HANDLE C0; PVOID C1; SIZE_T C2; ALLOCATION_TYPE C3; PAGE_PROTECT C4; MEM_EXTENDED_PARAMETER C5; ULONG C6; NTSTATUS C7; }NUMERIC;
    struct NtAllocateVirtualMemoryEx_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; ALLOCATION_TYPE ALLOCATION_TYPE ; PAGE_PROTECT PAGE_PROTECT ; MEM_EXTENDED_PARAMETER MEM_EXTENDED_PARAMETER ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAllocateVirtualMemoryEx{HANDLE ProcessHandle; PVOID BaseAddress; SIZE_T RegionSize; ALLOCATION_TYPE AllocationType; PAGE_PROTECT PageProtection; MEM_EXTENDED_PARAMETER ExtendedParameters; ULONG ExtendedParameterCount; NTSTATUS result; }NAMES;
  } NtAllocateVirtualMemoryEx;
  union NtAlpcAcceptConnectPortMembers{
    struct NtAlpcAcceptConnectPort_AS_NUMERIC{PHANDLE C0; HANDLE C1; ULONG C2; OBJECT_ATTRIBUTES C3; ALPC_PORT_ATTRIBUTES C4; PVOID C5; PORT_MESSAGE C6; ALPC_MESSAGE_ATTRIBUTES C7; BOOLEAN C8; NTSTATUS C9; }NUMERIC;
    struct NtAlpcAcceptConnectPort_AS_TYPES{PHANDLE PHANDLE ; HANDLE HANDLE ; ULONG ULONG ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ALPC_PORT_ATTRIBUTES ALPC_PORT_ATTRIBUTES ; PVOID PVOID ; PORT_MESSAGE PORT_MESSAGE ; ALPC_MESSAGE_ATTRIBUTES ALPC_MESSAGE_ATTRIBUTES ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcAcceptConnectPort{PHANDLE PortHandle; HANDLE ConnectionPortHandle; ULONG Flags; OBJECT_ATTRIBUTES ObjectAttributes; ALPC_PORT_ATTRIBUTES PortAttributes; PVOID PortContext; PORT_MESSAGE ConnectionRequest; ALPC_MESSAGE_ATTRIBUTES ConnectionMessageAttributes; BOOLEAN AcceptConnection; NTSTATUS result; }NAMES;
  } NtAlpcAcceptConnectPort;
  union NtAlpcCancelMessageMembers{
    struct NtAlpcCancelMessage_AS_NUMERIC{HANDLE C0; ULONG C1; ALPC_CONTEXT_ATTR C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcCancelMessage_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; ALPC_CONTEXT_ATTR ALPC_CONTEXT_ATTR ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcCancelMessage{HANDLE PortHandle; ULONG Flags; ALPC_CONTEXT_ATTR MessageContext; NTSTATUS result; }NAMES;
  } NtAlpcCancelMessage;
  union NtAlpcConnectPortMembers{
    struct NtAlpcConnectPort_AS_NUMERIC{PHANDLE C0; UNICODE_STRING C1; OBJECT_ATTRIBUTES C2; ALPC_PORT_ATTRIBUTES C3; ULONG C4; SID C5; PORT_MESSAGE C6; SIZE_T C7; ALPC_MESSAGE_ATTRIBUTES C8; ALPC_MESSAGE_ATTRIBUTES C9; LARGE_INTEGER C10; NTSTATUS C11; }NUMERIC;
    struct NtAlpcConnectPort_AS_TYPES{PHANDLE PHANDLE ; UNICODE_STRING UNICODE_STRING ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ALPC_PORT_ATTRIBUTES ALPC_PORT_ATTRIBUTES ; ULONG ULONG ; SID SID ; PORT_MESSAGE PORT_MESSAGE ; SIZE_T SIZE_T ; ALPC_MESSAGE_ATTRIBUTES ALPC_MESSAGE_ATTRIBUTES ; ALPC_MESSAGE_ATTRIBUTES ALPC_MESSAGE_ATTRIBUTES1; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcConnectPort{PHANDLE PortHandle; UNICODE_STRING PortName; OBJECT_ATTRIBUTES ObjectAttributes; ALPC_PORT_ATTRIBUTES PortAttributes; ULONG Flags; SID RequiredServerSid; PORT_MESSAGE ConnectionMessage; SIZE_T BufferLength; ALPC_MESSAGE_ATTRIBUTES OutMessageAttributes; ALPC_MESSAGE_ATTRIBUTES InMessageAttributes; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtAlpcConnectPort;
  union NtAlpcConnectPortExMembers{
    struct NtAlpcConnectPortEx_AS_NUMERIC{PHANDLE C0; OBJECT_ATTRIBUTES C1; OBJECT_ATTRIBUTES C2; ALPC_PORT_ATTRIBUTES C3; ULONG C4; SECURITY_DESCRIPTOR C5; PORT_MESSAGE C6; SIZE_T C7; ALPC_MESSAGE_ATTRIBUTES C8; ALPC_MESSAGE_ATTRIBUTES C9; LARGE_INTEGER C10; NTSTATUS C11; }NUMERIC;
    struct NtAlpcConnectPortEx_AS_TYPES{PHANDLE PHANDLE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES1; ALPC_PORT_ATTRIBUTES ALPC_PORT_ATTRIBUTES ; ULONG ULONG ; SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR ; PORT_MESSAGE PORT_MESSAGE ; SIZE_T SIZE_T ; ALPC_MESSAGE_ATTRIBUTES ALPC_MESSAGE_ATTRIBUTES ; ALPC_MESSAGE_ATTRIBUTES ALPC_MESSAGE_ATTRIBUTES1; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcConnectPortEx{PHANDLE PortHandle; OBJECT_ATTRIBUTES ConnectionPortObjectAttributes; OBJECT_ATTRIBUTES ClientPortObjectAttributes; ALPC_PORT_ATTRIBUTES PortAttributes; ULONG Flags; SECURITY_DESCRIPTOR ServerSecurityRequirements; PORT_MESSAGE ConnectionMessage; SIZE_T BufferLength; ALPC_MESSAGE_ATTRIBUTES OutMessageAttributes; ALPC_MESSAGE_ATTRIBUTES InMessageAttributes; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtAlpcConnectPortEx;
  union NtAlpcCreatePortMembers{
    struct NtAlpcCreatePort_AS_NUMERIC{PHANDLE C0; OBJECT_ATTRIBUTES C1; ALPC_PORT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcCreatePort_AS_TYPES{PHANDLE PHANDLE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ALPC_PORT_ATTRIBUTES ALPC_PORT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcCreatePort{PHANDLE PortHandle; OBJECT_ATTRIBUTES ObjectAttributes; ALPC_PORT_ATTRIBUTES PortAttributes; NTSTATUS result; }NAMES;
  } NtAlpcCreatePort;
  union NtAlpcCreatePortSectionMembers{
    struct NtAlpcCreatePortSection_AS_NUMERIC{HANDLE C0; ULONG C1; HANDLE C2; SIZE_T C3; PHANDLE C4; SIZE_T C5; NTSTATUS C6; }NUMERIC;
    struct NtAlpcCreatePortSection_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; HANDLE HANDLE1; SIZE_T SIZE_T ; PHANDLE PHANDLE ; SIZE_T SIZE_T1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcCreatePortSection{HANDLE PortHandle; ULONG Flags; HANDLE SectionHandle; SIZE_T SectionSize; PHANDLE AlpcSectionHandle; SIZE_T ActualSectionSize; NTSTATUS result; }NAMES;
  } NtAlpcCreatePortSection;
  union NtAlpcCreateResourceReserveMembers{
    struct NtAlpcCreateResourceReserve_AS_NUMERIC{HANDLE C0; ULONG C1; SIZE_T C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtAlpcCreateResourceReserve_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; SIZE_T SIZE_T ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcCreateResourceReserve{HANDLE PortHandle; ULONG Flags; SIZE_T MessageSize; ULONG ResourceId; NTSTATUS result; }NAMES;
  } NtAlpcCreateResourceReserve;
  union NtAlpcCreateSectionViewMembers{
    struct NtAlpcCreateSectionView_AS_NUMERIC{HANDLE C0; ULONG C1; ALPC_DATA_VIEW_ATTR C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcCreateSectionView_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; ALPC_DATA_VIEW_ATTR ALPC_DATA_VIEW_ATTR ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcCreateSectionView{HANDLE PortHandle; ULONG Flags; ALPC_DATA_VIEW_ATTR ViewAttributes; NTSTATUS result; }NAMES;
  } NtAlpcCreateSectionView;
  union NtAlpcCreateSecurityContextMembers{
    struct NtAlpcCreateSecurityContext_AS_NUMERIC{HANDLE C0; ULONG C1; ALPC_SECURITY_ATTR C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcCreateSecurityContext_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; ALPC_SECURITY_ATTR ALPC_SECURITY_ATTR ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcCreateSecurityContext{HANDLE PortHandle; ULONG Flags; ALPC_SECURITY_ATTR SecurityAttribute; NTSTATUS result; }NAMES;
  } NtAlpcCreateSecurityContext;
  union NtAlpcDeletePortSectionMembers{
    struct NtAlpcDeletePortSection_AS_NUMERIC{HANDLE C0; ULONG C1; HANDLE C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcDeletePortSection_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; HANDLE HANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcDeletePortSection{HANDLE PortHandle; ULONG Flags; HANDLE SectionHandle; NTSTATUS result; }NAMES;
  } NtAlpcDeletePortSection;
  union NtAlpcDeleteResourceReserveMembers{
    struct NtAlpcDeleteResourceReserve_AS_NUMERIC{HANDLE C0; ULONG C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcDeleteResourceReserve_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcDeleteResourceReserve{HANDLE PortHandle; ULONG Flags; ULONG ResourceId; NTSTATUS result; }NAMES;
  } NtAlpcDeleteResourceReserve;
  union NtAlpcDeleteSectionViewMembers{
    struct NtAlpcDeleteSectionView_AS_NUMERIC{HANDLE C0; ULONG C1; PVOID C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcDeleteSectionView_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcDeleteSectionView{HANDLE PortHandle; ULONG Flags; PVOID ViewBase; NTSTATUS result; }NAMES;
  } NtAlpcDeleteSectionView;
  union NtAlpcDeleteSecurityContextMembers{
    struct NtAlpcDeleteSecurityContext_AS_NUMERIC{HANDLE C0; ULONG C1; HANDLE C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcDeleteSecurityContext_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; HANDLE HANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcDeleteSecurityContext{HANDLE PortHandle; ULONG Flags; HANDLE ContextHandle; NTSTATUS result; }NAMES;
  } NtAlpcDeleteSecurityContext;
  union NtAlpcDisconnectPortMembers{
    struct NtAlpcDisconnectPort_AS_NUMERIC{HANDLE C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtAlpcDisconnectPort_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcDisconnectPort{HANDLE PortHandle; ULONG Flags; NTSTATUS result; }NAMES;
  } NtAlpcDisconnectPort;
  union NtAlpcImpersonateClientContainerOfPortMembers{
    struct NtAlpcImpersonateClientContainerOfPort_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcImpersonateClientContainerOfPort_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcImpersonateClientContainerOfPort{HANDLE PortHandle; PORT_MESSAGE PortMessage; ULONG Flags; NTSTATUS result; }NAMES;
  } NtAlpcImpersonateClientContainerOfPort;
  union NtAlpcImpersonateClientOfPortMembers{
    struct NtAlpcImpersonateClientOfPort_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; PVOID C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcImpersonateClientOfPort_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcImpersonateClientOfPort{HANDLE PortHandle; PORT_MESSAGE PortMessage; PVOID Flags; NTSTATUS result; }NAMES;
  } NtAlpcImpersonateClientOfPort;
  union NtAlpcOpenSenderProcessMembers{
    struct NtAlpcOpenSenderProcess_AS_NUMERIC{PHANDLE C0; HANDLE C1; PORT_MESSAGE C2; ULONG C3; ACCESS_MASK_PROCESS C4; OBJECT_ATTRIBUTES C5; NTSTATUS C6; }NUMERIC;
    struct NtAlpcOpenSenderProcess_AS_TYPES{PHANDLE PHANDLE ; HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; ULONG ULONG ; ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcOpenSenderProcess{PHANDLE ProcessHandle; HANDLE PortHandle; PORT_MESSAGE PortMessage; ULONG Flags; ACCESS_MASK_PROCESS DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtAlpcOpenSenderProcess;
  union NtAlpcOpenSenderThreadMembers{
    struct NtAlpcOpenSenderThread_AS_NUMERIC{PHANDLE C0; HANDLE C1; PORT_MESSAGE C2; ULONG C3; ACCESS_MASK_THREAD C4; OBJECT_ATTRIBUTES C5; NTSTATUS C6; }NUMERIC;
    struct NtAlpcOpenSenderThread_AS_TYPES{PHANDLE PHANDLE ; HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; ULONG ULONG ; ACCESS_MASK_THREAD ACCESS_MASK_THREAD ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcOpenSenderThread{PHANDLE ThreadHandle; HANDLE PortHandle; PORT_MESSAGE PortMessage; ULONG Flags; ACCESS_MASK_THREAD DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtAlpcOpenSenderThread;
  union NtAlpcQueryInformationMembers{
    struct NtAlpcQueryInformation_AS_NUMERIC{HANDLE C0; ALPC_PORT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtAlpcQueryInformation_AS_TYPES{HANDLE HANDLE ; ALPC_PORT_INFORMATION_CLASS ALPC_PORT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcQueryInformation{HANDLE PortHandle; ALPC_PORT_INFORMATION_CLASS PortInformationClass; PVOID PortInformation; ULONG Length; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtAlpcQueryInformation;
  union NtAlpcQueryInformationMessageMembers{
    struct NtAlpcQueryInformationMessage_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; ALPC_MESSAGE_INFORMATION_CLASS C2; PVOID C3; ULONG C4; RETLEN C5; NTSTATUS C6; }NUMERIC;
    struct NtAlpcQueryInformationMessage_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; ALPC_MESSAGE_INFORMATION_CLASS ALPC_MESSAGE_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; RETLEN RETLEN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcQueryInformationMessage{HANDLE PortHandle; PORT_MESSAGE PortMessage; ALPC_MESSAGE_INFORMATION_CLASS MessageInformationClass; PVOID MessageInformation; ULONG Length; RETLEN ReturnLength; NTSTATUS result; }NAMES;
  } NtAlpcQueryInformationMessage;
  union NtAlpcRevokeSecurityContextMembers{
    struct NtAlpcRevokeSecurityContext_AS_NUMERIC{HANDLE C0; ULONG C1; HANDLE C2; NTSTATUS C3; }NUMERIC;
    struct NtAlpcRevokeSecurityContext_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; HANDLE HANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcRevokeSecurityContext{HANDLE PortHandle; ULONG Flags; HANDLE ContextHandle; NTSTATUS result; }NAMES;
  } NtAlpcRevokeSecurityContext;
  union NtAlpcSetInformationMembers{
    struct NtAlpcSetInformation_AS_NUMERIC{HANDLE C0; ALPC_PORT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtAlpcSetInformation_AS_TYPES{HANDLE HANDLE ; ALPC_PORT_INFORMATION_CLASS ALPC_PORT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAlpcSetInformation{HANDLE PortHandle; ALPC_PORT_INFORMATION_CLASS PortInformationClass; PVOID PortInformation; ULONG Length; NTSTATUS result; }NAMES;
  } NtAlpcSetInformation;
  union NtAreMappedFilesTheSameMembers{
    struct NtAreMappedFilesTheSame_AS_NUMERIC{PVOID C0; PVOID C1; NTSTATUS C2; }NUMERIC;
    struct NtAreMappedFilesTheSame_AS_TYPES{PVOID PVOID ; PVOID PVOID1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAreMappedFilesTheSame{PVOID FileMappedAsAnImage; PVOID FileMappedAsFile; NTSTATUS result; }NAMES;
  } NtAreMappedFilesTheSame;
  union NtAssignProcessToJobObjectMembers{
    struct NtAssignProcessToJobObject_AS_NUMERIC{HANDLE C0; HANDLE C1; NTSTATUS C2; }NUMERIC;
    struct NtAssignProcessToJobObject_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtAssignProcessToJobObject{HANDLE JobHandle; HANDLE ProcessHandle; NTSTATUS result; }NAMES;
  } NtAssignProcessToJobObject;
  union NtAssociateWaitCompletionPacketMembers{
    struct NtAssociateWaitCompletionPacket_AS_NUMERIC{HANDLE C0; HANDLE C1; HANDLE C2; PVOID C3; PVOID C4; NTSTATUS C5; ULONG C6; BOOLEAN C7; NTSTATUS C8; }NUMERIC;
    struct NtAssociateWaitCompletionPacket_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; HANDLE HANDLE2; PVOID PVOID ; PVOID PVOID1; NTSTATUS NTSTATUS ; ULONG ULONG ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS1; }TYPES;
    struct NtAssociateWaitCompletionPacket{HANDLE WaitCompletionPacketHandle; HANDLE IoCompletionHandle; HANDLE TargetObjectHandle; PVOID KeyContext; PVOID ApcContext; NTSTATUS IoStatus; ULONG IoStatusInformation; BOOLEAN AlreadySignaled; NTSTATUS result; }NAMES;
  } NtAssociateWaitCompletionPacket;
  union NtCallEnclaveMembers{
    struct NtCallEnclave_AS_NUMERIC{ULONG C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtCallEnclave_AS_TYPES{ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCallEnclave{ULONG arg1; ULONG arg2; NTSTATUS result; }NAMES;
  } NtCallEnclave;
  union NtCallbackReturnMembers{
    struct NtCallbackReturn_AS_NUMERIC{PVOID C0; ULONG C1; NTSTATUS C2; NTSTATUS C3; }NUMERIC;
    struct NtCallbackReturn_AS_TYPES{PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; NTSTATUS NTSTATUS1; }TYPES;
    struct NtCallbackReturn{PVOID OutputBuffer; ULONG OutputLength; NTSTATUS Status; NTSTATUS result; }NAMES;
  } NtCallbackReturn;
  union NtCancelIoFileMembers{
    struct NtCancelIoFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; NTSTATUS C2; }NUMERIC;
    struct NtCancelIoFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCancelIoFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; NTSTATUS result; }NAMES;
  } NtCancelIoFile;
  union NtCancelIoFileExMembers{
    struct NtCancelIoFileEx_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; IO_STATUS_BLOCK C2; NTSTATUS C3; }NUMERIC;
    struct NtCancelIoFileEx_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; IO_STATUS_BLOCK IO_STATUS_BLOCK1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCancelIoFileEx{HANDLE FileHandle; IO_STATUS_BLOCK IoRequestToCancel; IO_STATUS_BLOCK IoStatusBlock; NTSTATUS result; }NAMES;
  } NtCancelIoFileEx;
  union NtCancelSynchronousIoFileMembers{
    struct NtCancelSynchronousIoFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; IO_STATUS_BLOCK C2; NTSTATUS C3; }NUMERIC;
    struct NtCancelSynchronousIoFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; IO_STATUS_BLOCK IO_STATUS_BLOCK1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCancelSynchronousIoFile{HANDLE ThreadHandle; IO_STATUS_BLOCK IoRequestToCancel; IO_STATUS_BLOCK IoStatusBlock; NTSTATUS result; }NAMES;
  } NtCancelSynchronousIoFile;
  union NtCancelTimerMembers{
    struct NtCancelTimer_AS_NUMERIC{HANDLE C0; BOOLEAN C1; NTSTATUS C2; }NUMERIC;
    struct NtCancelTimer_AS_TYPES{HANDLE HANDLE ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCancelTimer{HANDLE TimerHandle; BOOLEAN CurrentState; NTSTATUS result; }NAMES;
  } NtCancelTimer;
  union NtCancelTimer2Members{
    struct NtCancelTimer2_AS_NUMERIC{HANDLE C0; T2_CANCEL_PARAMETERS C1; NTSTATUS C2; }NUMERIC;
    struct NtCancelTimer2_AS_TYPES{HANDLE HANDLE ; T2_CANCEL_PARAMETERS T2_CANCEL_PARAMETERS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCancelTimer2{HANDLE arg1; T2_CANCEL_PARAMETERS arg2; NTSTATUS result; }NAMES;
  } NtCancelTimer2;
  union NtCancelWaitCompletionPacketMembers{
    struct NtCancelWaitCompletionPacket_AS_NUMERIC{HANDLE C0; BOOLEAN C1; NTSTATUS C2; }NUMERIC;
    struct NtCancelWaitCompletionPacket_AS_TYPES{HANDLE HANDLE ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCancelWaitCompletionPacket{HANDLE WaitCompletionPacketHandle; BOOLEAN RemoveSignaledPacket; NTSTATUS result; }NAMES;
  } NtCancelWaitCompletionPacket;
  union NtClearEventMembers{
    struct NtClearEvent_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtClearEvent_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtClearEvent{HANDLE EventHandle; NTSTATUS result; }NAMES;
  } NtClearEvent;
  union NtCloseMembers{
    struct NtClose_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtClose_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtClose{HANDLE Handle; NTSTATUS result; }NAMES;
  } NtClose;
  union NtCloseObjectAuditAlarmMembers{
    struct NtCloseObjectAuditAlarm_AS_NUMERIC{UNICODE_STRING C0; PVOID C1; BOOLEAN C2; NTSTATUS C3; }NUMERIC;
    struct NtCloseObjectAuditAlarm_AS_TYPES{UNICODE_STRING UNICODE_STRING ; PVOID PVOID ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCloseObjectAuditAlarm{UNICODE_STRING SubsystemName; PVOID HandleId; BOOLEAN GenerateOnClose; NTSTATUS result; }NAMES;
  } NtCloseObjectAuditAlarm;
  union NtCommitCompleteMembers{
    struct NtCommitComplete_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtCommitComplete_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCommitComplete{HANDLE EnlistmentHandle; LARGE_INTEGER TmVirtualClock; NTSTATUS result; }NAMES;
  } NtCommitComplete;
  union NtCommitEnlistmentMembers{
    struct NtCommitEnlistment_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtCommitEnlistment_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCommitEnlistment{HANDLE EnlistmentHandle; LARGE_INTEGER TmVirtualClock; NTSTATUS result; }NAMES;
  } NtCommitEnlistment;
  union NtCommitRegistryTransactionMembers{
    struct NtCommitRegistryTransaction_AS_NUMERIC{HANDLE C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtCommitRegistryTransaction_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCommitRegistryTransaction{HANDLE TransactionHandle; ULONG Flags; NTSTATUS result; }NAMES;
  } NtCommitRegistryTransaction;
  union NtCommitTransactionMembers{
    struct NtCommitTransaction_AS_NUMERIC{HANDLE C0; BOOLEAN C1; NTSTATUS C2; }NUMERIC;
    struct NtCommitTransaction_AS_TYPES{HANDLE HANDLE ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCommitTransaction{HANDLE TransactionHandle; BOOLEAN Wait; NTSTATUS result; }NAMES;
  } NtCommitTransaction;
  union NtCompactKeysMembers{
    struct NtCompactKeys_AS_NUMERIC{ULONG C0; PHANDLE C1; NTSTATUS C2; }NUMERIC;
    struct NtCompactKeys_AS_TYPES{ULONG ULONG ; PHANDLE PHANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCompactKeys{ULONG Count; PHANDLE KeyArray; NTSTATUS result; }NAMES;
  } NtCompactKeys;
  union NtCompareObjectsMembers{
    struct NtCompareObjects_AS_NUMERIC{HANDLE C0; HANDLE C1; NTSTATUS C2; }NUMERIC;
    struct NtCompareObjects_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCompareObjects{HANDLE FirstObjectHandle; HANDLE SecondObjectHandle; NTSTATUS result; }NAMES;
  } NtCompareObjects;
  union NtCompareSigningLevelsMembers{
    struct NtCompareSigningLevels_AS_NUMERIC{SE_SIGNING_LEVEL C0; SE_SIGNING_LEVEL C1; NTSTATUS C2; }NUMERIC;
    struct NtCompareSigningLevels_AS_TYPES{SE_SIGNING_LEVEL SE_SIGNING_LEVEL ; SE_SIGNING_LEVEL SE_SIGNING_LEVEL1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCompareSigningLevels{SE_SIGNING_LEVEL arg1; SE_SIGNING_LEVEL arg2; NTSTATUS result; }NAMES;
  } NtCompareSigningLevels;
  union NtCompareTokensMembers{
    struct NtCompareTokens_AS_NUMERIC{HANDLE C0; HANDLE C1; BOOLEAN C2; NTSTATUS C3; }NUMERIC;
    struct NtCompareTokens_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCompareTokens{HANDLE FirstTokenHandle; HANDLE SecondTokenHandle; BOOLEAN Equal; NTSTATUS result; }NAMES;
  } NtCompareTokens;
  union NtCompleteConnectPortMembers{
    struct NtCompleteConnectPort_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtCompleteConnectPort_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCompleteConnectPort{HANDLE PortHandle; NTSTATUS result; }NAMES;
  } NtCompleteConnectPort;
  union NtCompressKeyMembers{
    struct NtCompressKey_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtCompressKey_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCompressKey{HANDLE Key; NTSTATUS result; }NAMES;
  } NtCompressKey;
  union NtConnectPortMembers{
    struct NtConnectPort_AS_NUMERIC{PHANDLE C0; UNICODE_STRING C1; SECURITY_QUALITY_OF_SERVICE C2; PORT_VIEW C3; REMOTE_PORT_VIEW C4; ULONG C5; PVOID C6; ULONG C7; NTSTATUS C8; }NUMERIC;
    struct NtConnectPort_AS_TYPES{PHANDLE PHANDLE ; UNICODE_STRING UNICODE_STRING ; SECURITY_QUALITY_OF_SERVICE SECURITY_QUALITY_OF_SERVICE ; PORT_VIEW PORT_VIEW ; REMOTE_PORT_VIEW REMOTE_PORT_VIEW ; ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtConnectPort{PHANDLE PortHandle; UNICODE_STRING PortName; SECURITY_QUALITY_OF_SERVICE SecurityQos; PORT_VIEW ClientView; REMOTE_PORT_VIEW ServerView; ULONG MaxMessageLength; PVOID ConnectionInformation; ULONG ConnectionInformationLength; NTSTATUS result; }NAMES;
  } NtConnectPort;
  union NtContinueMembers{
    struct NtContinue_AS_NUMERIC{CONTEXT C0; BOOLEAN C1; NTSTATUS C2; }NUMERIC;
    struct NtContinue_AS_TYPES{CONTEXT CONTEXT ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtContinue{CONTEXT ContextRecord; BOOLEAN TestAlert; NTSTATUS result; }NAMES;
  } NtContinue;
  union NtContinueExMembers{
    struct NtContinueEx_AS_NUMERIC{CONTEXT C0; KCONTINUE_ARGUMENT C1; NTSTATUS C2; }NUMERIC;
    struct NtContinueEx_AS_TYPES{CONTEXT CONTEXT ; KCONTINUE_ARGUMENT KCONTINUE_ARGUMENT ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtContinueEx{CONTEXT arg1; KCONTINUE_ARGUMENT arg2; NTSTATUS result; }NAMES;
  } NtContinueEx;
  union NtConvertBetweenAuxiliaryCounterAndPerformanceCounterMembers{
    struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter_AS_NUMERIC{BOOLEAN C0; ULONG C1; ULONG C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter_AS_TYPES{BOOLEAN BOOLEAN ; ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter{BOOLEAN arg1; ULONG arg2; ULONG arg3; ULONG arg4; NTSTATUS result; }NAMES;
  } NtConvertBetweenAuxiliaryCounterAndPerformanceCounter;
  union NtCreateCrossVmEventMembers{
    struct NtCreateCrossVmEvent_AS_NUMERIC{PHANDLE C0; ACCESS_MASK C1; OBJECT_ATTRIBUTES C2; ULONG C3; GUID C4; GUID C5; NTSTATUS C6; }NUMERIC;
    struct NtCreateCrossVmEvent_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK ACCESS_MASK ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; GUID GUID ; GUID GUID1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateCrossVmEvent{PHANDLE EventHandle; ACCESS_MASK DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG arg1; GUID arg2; GUID arg3; NTSTATUS result; }NAMES;
  } NtCreateCrossVmEvent;
  union NtCreateCrossVmMutantMembers{
    struct NtCreateCrossVmMutant_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_MUTANT C1; OBJECT_ATTRIBUTES C2; ULONG C3; GUID C4; GUID C5; NTSTATUS C6; }NUMERIC;
    struct NtCreateCrossVmMutant_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_MUTANT ACCESS_MASK_MUTANT ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; GUID GUID ; GUID GUID1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateCrossVmMutant{PHANDLE MutantHandle; ACCESS_MASK_MUTANT DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG arg1; GUID arg2; GUID arg3; NTSTATUS result; }NAMES;
  } NtCreateCrossVmMutant;
  union NtCreateDirectoryObjectMembers{
    struct NtCreateDirectoryObject_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_DIRECTORY C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtCreateDirectoryObject_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_DIRECTORY ACCESS_MASK_DIRECTORY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateDirectoryObject{PHANDLE DirectoryHandle; ACCESS_MASK_DIRECTORY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtCreateDirectoryObject;
  union NtCreateDirectoryObjectExMembers{
    struct NtCreateDirectoryObjectEx_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_DIRECTORY C1; OBJECT_ATTRIBUTES C2; HANDLE C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtCreateDirectoryObjectEx_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_DIRECTORY ACCESS_MASK_DIRECTORY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateDirectoryObjectEx{PHANDLE DirectoryHandle; ACCESS_MASK_DIRECTORY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; HANDLE ShadowDirectoryHandle; ULONG Flags; NTSTATUS result; }NAMES;
  } NtCreateDirectoryObjectEx;
  union NtCreateEnclaveMembers{
    struct NtCreateEnclave_AS_NUMERIC{PHANDLE C0; PVOID C1; ULONG C2; SIZE_T C3; SIZE_T C4; ULONG C5; PVOID C6; ULONG C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtCreateEnclave_AS_TYPES{PHANDLE PHANDLE ; PVOID PVOID ; ULONG ULONG ; SIZE_T SIZE_T ; SIZE_T SIZE_T1; ULONG ULONG1; PVOID PVOID1; ULONG ULONG2; ULONG ULONG3; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateEnclave{PHANDLE arg1; PVOID arg2; ULONG arg3; SIZE_T arg4; SIZE_T arg5; ULONG arg6; PVOID arg7; ULONG arg8; ULONG arg9; NTSTATUS result; }NAMES;
  } NtCreateEnclave;
  union NtCreateEnlistmentMembers{
    struct NtCreateEnlistment_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_ENLISTMENT C1; HANDLE C2; HANDLE C3; OBJECT_ATTRIBUTES C4; ULONG C5; NOTIFICATION_MASK C6; PVOID C7; NTSTATUS C8; }NUMERIC;
    struct NtCreateEnlistment_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_ENLISTMENT ACCESS_MASK_ENLISTMENT ; HANDLE HANDLE ; HANDLE HANDLE1; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; NOTIFICATION_MASK NOTIFICATION_MASK ; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateEnlistment{PHANDLE EnlistmentHandle; ACCESS_MASK_ENLISTMENT DesiredAccess; HANDLE ResourceManagerHandle; HANDLE TransactionHandle; OBJECT_ATTRIBUTES ObjectAttributes; ULONG CreateOptions; NOTIFICATION_MASK NotificationMask; PVOID EnlistmentKey; NTSTATUS result; }NAMES;
  } NtCreateEnlistment;
  union NtCreateEventMembers{
    struct NtCreateEvent_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_EVENT C1; OBJECT_ATTRIBUTES C2; EVENT_TYPE C3; BOOLEAN C4; NTSTATUS C5; }NUMERIC;
    struct NtCreateEvent_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_EVENT ACCESS_MASK_EVENT ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; EVENT_TYPE EVENT_TYPE ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateEvent{PHANDLE EventHandle; ACCESS_MASK_EVENT DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; EVENT_TYPE EventType; BOOLEAN InitialState; NTSTATUS result; }NAMES;
  } NtCreateEvent;
  union NtCreateEventPairMembers{
    struct NtCreateEventPair_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_EVENTPAIR C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtCreateEventPair_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_EVENTPAIR ACCESS_MASK_EVENTPAIR ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateEventPair{PHANDLE EventPairHandle; ACCESS_MASK_EVENTPAIR DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtCreateEventPair;
  union NtCreateFileMembers{
    struct NtCreateFile_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_FILE C1; OBJECT_ATTRIBUTES C2; IO_STATUS_BLOCK C3; LARGE_INTEGER C4; FILE_ATTRIBUTES C5; FILE_SHARE_ACCESS C6; FILE_DISPOSITION C7; FILE_OPTIONS C8; PVOID C9; ULONG C10; NTSTATUS C11; }NUMERIC;
    struct NtCreateFile_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_FILE ACCESS_MASK_FILE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; LARGE_INTEGER LARGE_INTEGER ; FILE_ATTRIBUTES FILE_ATTRIBUTES ; FILE_SHARE_ACCESS FILE_SHARE_ACCESS ; FILE_DISPOSITION FILE_DISPOSITION ; FILE_OPTIONS FILE_OPTIONS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateFile{PHANDLE FileHandle; ACCESS_MASK_FILE DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; IO_STATUS_BLOCK IoStatusBlock; LARGE_INTEGER AllocationSize; FILE_ATTRIBUTES FileAttributes; FILE_SHARE_ACCESS ShareAccess; FILE_DISPOSITION CreateDisposition; FILE_OPTIONS CreateOptions; PVOID EaBuffer; ULONG EaLength; NTSTATUS result; }NAMES;
  } NtCreateFile;
  union NtCreateIRTimerMembers{
    struct NtCreateIRTimer_AS_NUMERIC{PHANDLE C0; IR_TIMER_EXTRA_CREATE_PARAMETER C1; ACCESS_MASK_TIMER C2; NTSTATUS C3; }NUMERIC;
    struct NtCreateIRTimer_AS_TYPES{PHANDLE PHANDLE ; IR_TIMER_EXTRA_CREATE_PARAMETER IR_TIMER_EXTRA_CREATE_PARAMETER ; ACCESS_MASK_TIMER ACCESS_MASK_TIMER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateIRTimer{PHANDLE TimerHandle; IR_TIMER_EXTRA_CREATE_PARAMETER ExtraParameters; ACCESS_MASK_TIMER DesiredAccess; NTSTATUS result; }NAMES;
  } NtCreateIRTimer;
  union NtCreateIoCompletionMembers{
    struct NtCreateIoCompletion_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_IOCOMPLETION C1; OBJECT_ATTRIBUTES C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtCreateIoCompletion_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_IOCOMPLETION ACCESS_MASK_IOCOMPLETION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateIoCompletion{PHANDLE IoCompletionHandle; ACCESS_MASK_IOCOMPLETION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG Count; NTSTATUS result; }NAMES;
  } NtCreateIoCompletion;
  union NtCreateJobObjectMembers{
    struct NtCreateJobObject_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_JOB C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtCreateJobObject_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_JOB ACCESS_MASK_JOB ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateJobObject{PHANDLE JobHandle; ACCESS_MASK_JOB DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtCreateJobObject;
  union NtCreateJobSetMembers{
    struct NtCreateJobSet_AS_NUMERIC{ULONG C0; JOB_SET_ARRAY C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtCreateJobSet_AS_TYPES{ULONG ULONG ; JOB_SET_ARRAY JOB_SET_ARRAY ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateJobSet{ULONG arg1; JOB_SET_ARRAY arg2; ULONG arg3; NTSTATUS result; }NAMES;
  } NtCreateJobSet;
  union NtCreateKeyMembers{
    struct NtCreateKey_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_KEY C1; OBJECT_ATTRIBUTES C2; ULONG C3; UNICODE_STRING C4; ULONG C5; ULONG C6; NTSTATUS C7; }NUMERIC;
    struct NtCreateKey_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_KEY ACCESS_MASK_KEY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; UNICODE_STRING UNICODE_STRING ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateKey{PHANDLE KeyHandle; ACCESS_MASK_KEY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG TitleIndex; UNICODE_STRING Class; ULONG CreateOptions; ULONG Disposition; NTSTATUS result; }NAMES;
  } NtCreateKey;
  union NtCreateKeyTransactedMembers{
    struct NtCreateKeyTransacted_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_KEY C1; OBJECT_ATTRIBUTES C2; ULONG C3; UNICODE_STRING C4; ULONG C5; HANDLE C6; ULONG C7; NTSTATUS C8; }NUMERIC;
    struct NtCreateKeyTransacted_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_KEY ACCESS_MASK_KEY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; UNICODE_STRING UNICODE_STRING ; ULONG ULONG1; HANDLE HANDLE ; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateKeyTransacted{PHANDLE KeyHandle; ACCESS_MASK_KEY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG TitleIndex; UNICODE_STRING Class; ULONG CreateOptions; HANDLE TransactionHandle; ULONG Disposition; NTSTATUS result; }NAMES;
  } NtCreateKeyTransacted;
  union NtCreateKeyedEventMembers{
    struct NtCreateKeyedEvent_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_KEYEDEVENT C1; OBJECT_ATTRIBUTES C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtCreateKeyedEvent_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_KEYEDEVENT ACCESS_MASK_KEYEDEVENT ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateKeyedEvent{PHANDLE KeyedEventHandle; ACCESS_MASK_KEYEDEVENT DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG Flags; NTSTATUS result; }NAMES;
  } NtCreateKeyedEvent;
  union NtCreateLowBoxTokenMembers{
    struct NtCreateLowBoxToken_AS_NUMERIC{PHANDLE C0; HANDLE C1; ACCESS_MASK_TOKEN C2; OBJECT_ATTRIBUTES C3; SID C4; ULONG C5; SID_AND_ATTRIBUTES C6; ULONG C7; PHANDLE C8; NTSTATUS C9; }NUMERIC;
    struct NtCreateLowBoxToken_AS_TYPES{PHANDLE PHANDLE ; HANDLE HANDLE ; ACCESS_MASK_TOKEN ACCESS_MASK_TOKEN ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; SID SID ; ULONG ULONG ; SID_AND_ATTRIBUTES SID_AND_ATTRIBUTES ; ULONG ULONG1; PHANDLE PHANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateLowBoxToken{PHANDLE TokenHandle; HANDLE ExistingTokenHandle; ACCESS_MASK_TOKEN DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; SID PackageSid; ULONG CapabilityCount; SID_AND_ATTRIBUTES Capabilities; ULONG HandleCount; PHANDLE Handles; NTSTATUS result; }NAMES;
  } NtCreateLowBoxToken;
  union NtCreateMailslotFileMembers{
    struct NtCreateMailslotFile_AS_NUMERIC{PHANDLE C0; ULONG C1; OBJECT_ATTRIBUTES C2; IO_STATUS_BLOCK C3; ULONG C4; ULONG C5; ULONG C6; LARGE_INTEGER C7; NTSTATUS C8; }NUMERIC;
    struct NtCreateMailslotFile_AS_TYPES{PHANDLE PHANDLE ; ULONG ULONG ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; ULONG ULONG1; ULONG ULONG2; ULONG ULONG3; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateMailslotFile{PHANDLE FileHandle; ULONG DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; IO_STATUS_BLOCK IoStatusBlock; ULONG CreateOptions; ULONG MailslotQuota; ULONG MaximumMessageSize; LARGE_INTEGER ReadTimeout; NTSTATUS result; }NAMES;
  } NtCreateMailslotFile;
  union NtCreateMutantMembers{
    struct NtCreateMutant_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_MUTANT C1; OBJECT_ATTRIBUTES C2; BOOLEAN C3; NTSTATUS C4; }NUMERIC;
    struct NtCreateMutant_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_MUTANT ACCESS_MASK_MUTANT ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateMutant{PHANDLE MutantHandle; ACCESS_MASK_MUTANT DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; BOOLEAN InitialOwner; NTSTATUS result; }NAMES;
  } NtCreateMutant;
  union NtCreateNamedPipeFileMembers{
    struct NtCreateNamedPipeFile_AS_NUMERIC{PHANDLE C0; ULONG C1; OBJECT_ATTRIBUTES C2; IO_STATUS_BLOCK C3; ULONG C4; ULONG C5; ULONG C6; ULONG C7; ULONG C8; ULONG C9; ULONG C10; ULONG C11; ULONG C12; LARGE_INTEGER C13; NTSTATUS C14; }NUMERIC;
    struct NtCreateNamedPipeFile_AS_TYPES{PHANDLE PHANDLE ; ULONG ULONG ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; ULONG ULONG1; ULONG ULONG2; ULONG ULONG3; ULONG ULONG4; ULONG ULONG5; ULONG ULONG6; ULONG ULONG7; ULONG ULONG8; ULONG ULONG9; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateNamedPipeFile{PHANDLE FileHandle; ULONG DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; IO_STATUS_BLOCK IoStatusBlock; ULONG ShareAccess; ULONG CreateDisposition; ULONG CreateOptions; ULONG NamedPipeType; ULONG ReadMode; ULONG CompletionMode; ULONG MaximumInstances; ULONG InboundQuota; ULONG boundQuota; LARGE_INTEGER DefaultTimeout; NTSTATUS result; }NAMES;
  } NtCreateNamedPipeFile;
  union NtCreatePagingFileMembers{
    struct NtCreatePagingFile_AS_NUMERIC{UNICODE_STRING C0; LARGE_INTEGER C1; LARGE_INTEGER C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtCreatePagingFile_AS_TYPES{UNICODE_STRING UNICODE_STRING ; LARGE_INTEGER LARGE_INTEGER ; LARGE_INTEGER LARGE_INTEGER1; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreatePagingFile{UNICODE_STRING PageFileName; LARGE_INTEGER MinimumSize; LARGE_INTEGER MaximumSize; ULONG Priority; NTSTATUS result; }NAMES;
  } NtCreatePagingFile;
  union NtCreatePartitionMembers{
    struct NtCreatePartition_AS_NUMERIC{PHANDLE C0; PHANDLE C1; ACCESS_MASK_PARTITION C2; OBJECT_ATTRIBUTES C3; NTSTATUS C4; }NUMERIC;
    struct NtCreatePartition_AS_TYPES{PHANDLE PHANDLE ; PHANDLE PHANDLE1; ACCESS_MASK_PARTITION ACCESS_MASK_PARTITION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreatePartition{PHANDLE ParentPartitionHandle; PHANDLE PartitionHandle; ACCESS_MASK_PARTITION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtCreatePartition;
  union NtCreatePortMembers{
    struct NtCreatePort_AS_NUMERIC{PHANDLE C0; OBJECT_ATTRIBUTES C1; ULONG C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtCreatePort_AS_TYPES{PHANDLE PHANDLE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreatePort{PHANDLE PortHandle; OBJECT_ATTRIBUTES ObjectAttributes; ULONG MaxConnectionInfoLength; ULONG MaxMessageLength; ULONG MaxPoolUsage; NTSTATUS result; }NAMES;
  } NtCreatePort;
  union NtCreatePrivateNamespaceMembers{
    struct NtCreatePrivateNamespace_AS_NUMERIC{PHANDLE C0; ACCESS_MASK C1; OBJECT_ATTRIBUTES C2; PVOID C3; NTSTATUS C4; }NUMERIC;
    struct NtCreatePrivateNamespace_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK ACCESS_MASK ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreatePrivateNamespace{PHANDLE NamespaceHandle; ACCESS_MASK DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; PVOID BoundaryDescriptor; NTSTATUS result; }NAMES;
  } NtCreatePrivateNamespace;
  union NtCreateProcessMembers{
    struct NtCreateProcess_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_PROCESS C1; OBJECT_ATTRIBUTES C2; HANDLE C3; BOOLEAN C4; HANDLE C5; HANDLE C6; HANDLE C7; NTSTATUS C8; }NUMERIC;
    struct NtCreateProcess_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE ; BOOLEAN BOOLEAN ; HANDLE HANDLE1; HANDLE HANDLE2; HANDLE HANDLE3; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateProcess{PHANDLE ProcessHandle; ACCESS_MASK_PROCESS DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; HANDLE ParentProcess; BOOLEAN InheritObjectTable; HANDLE SectionHandle; HANDLE DebugPort; HANDLE ExceptionPort; NTSTATUS result; }NAMES;
  } NtCreateProcess;
  union NtCreateProcessExMembers{
    struct NtCreateProcessEx_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_PROCESS C1; OBJECT_ATTRIBUTES C2; HANDLE C3; ULONG C4; HANDLE C5; HANDLE C6; HANDLE C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtCreateProcessEx_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE ; ULONG ULONG ; HANDLE HANDLE1; HANDLE HANDLE2; HANDLE HANDLE3; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateProcessEx{PHANDLE ProcessHandle; ACCESS_MASK_PROCESS DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; HANDLE ParentProcess; ULONG Flags; HANDLE SectionHandle; HANDLE DebugPort; HANDLE ExceptionPort; ULONG JobMemberLevel; NTSTATUS result; }NAMES;
  } NtCreateProcessEx;
  union NtCreateProfileMembers{
    struct NtCreateProfile_AS_NUMERIC{PHANDLE C0; HANDLE C1; PVOID C2; SIZE_T C3; ULONG C4; ULONG C5; ULONG C6; KPROFILE_SOURCE C7; KAFFINITY C8; NTSTATUS C9; }NUMERIC;
    struct NtCreateProfile_AS_TYPES{PHANDLE PHANDLE ; HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; KPROFILE_SOURCE KPROFILE_SOURCE ; KAFFINITY KAFFINITY ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateProfile{PHANDLE ProfileHandle; HANDLE Process; PVOID ProfileBase; SIZE_T ProfileSize; ULONG BucketSize; ULONG Buffer; ULONG BufferSize; KPROFILE_SOURCE ProfileSource; KAFFINITY Affinity; NTSTATUS result; }NAMES;
  } NtCreateProfile;
  union NtCreateProfileExMembers{
    struct NtCreateProfileEx_AS_NUMERIC{PHANDLE C0; HANDLE C1; PVOID C2; SIZE_T C3; ULONG C4; ULONG C5; ULONG C6; KPROFILE_SOURCE C7; USHORT C8; GROUP_AFFINITY C9; NTSTATUS C10; }NUMERIC;
    struct NtCreateProfileEx_AS_TYPES{PHANDLE PHANDLE ; HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; KPROFILE_SOURCE KPROFILE_SOURCE ; USHORT USHORT ; GROUP_AFFINITY GROUP_AFFINITY ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateProfileEx{PHANDLE ProfileHandle; HANDLE ProcessHandle; PVOID ImageBase; SIZE_T ImageSize; ULONG Granularity; ULONG Buffer; ULONG ProfilingSize; KPROFILE_SOURCE Source; USHORT arg1; GROUP_AFFINITY arg2; NTSTATUS result; }NAMES;
  } NtCreateProfileEx;
  union NtCreateRegistryTransactionMembers{
    struct NtCreateRegistryTransaction_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TRANSACTION C1; OBJECT_ATTRIBUTES C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtCreateRegistryTransaction_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TRANSACTION ACCESS_MASK_TRANSACTION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateRegistryTransaction{PHANDLE TransactionHandle; ACCESS_MASK_TRANSACTION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG CreateOptions; NTSTATUS result; }NAMES;
  } NtCreateRegistryTransaction;
  union NtCreateResourceManagerMembers{
    struct NtCreateResourceManager_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_RESOURCEMANAGER C1; HANDLE C2; GUID C3; OBJECT_ATTRIBUTES C4; ULONG C5; UNICODE_STRING C6; NTSTATUS C7; }NUMERIC;
    struct NtCreateResourceManager_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_RESOURCEMANAGER ACCESS_MASK_RESOURCEMANAGER ; HANDLE HANDLE ; GUID GUID ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateResourceManager{PHANDLE ResourceManagerHandle; ACCESS_MASK_RESOURCEMANAGER DesiredAccess; HANDLE TmHandle; GUID RmGuid; OBJECT_ATTRIBUTES ObjectAttributes; ULONG CreateOptions; UNICODE_STRING Description; NTSTATUS result; }NAMES;
  } NtCreateResourceManager;
  union NtCreateSectionMembers{
    struct NtCreateSection_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_SECTION C1; OBJECT_ATTRIBUTES C2; LARGE_INTEGER C3; ULONG C4; ULONG C5; HANDLE C6; NTSTATUS C7; }NUMERIC;
    struct NtCreateSection_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_SECTION ACCESS_MASK_SECTION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; LARGE_INTEGER LARGE_INTEGER ; ULONG ULONG ; ULONG ULONG1; HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateSection{PHANDLE SectionHandle; ACCESS_MASK_SECTION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; LARGE_INTEGER MaximumSize; ULONG SectionPageProtection; ULONG AllocationAttributes; HANDLE FileHandle; NTSTATUS result; }NAMES;
  } NtCreateSection;
  union NtCreateSectionExMembers{
    struct NtCreateSectionEx_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_SECTION C1; OBJECT_ATTRIBUTES C2; LARGE_INTEGER C3; ULONG C4; ULONG C5; HANDLE C6; MEM_EXTENDED_PARAMETER C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtCreateSectionEx_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_SECTION ACCESS_MASK_SECTION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; LARGE_INTEGER LARGE_INTEGER ; ULONG ULONG ; ULONG ULONG1; HANDLE HANDLE ; MEM_EXTENDED_PARAMETER MEM_EXTENDED_PARAMETER ; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateSectionEx{PHANDLE SectionHandle; ACCESS_MASK_SECTION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; LARGE_INTEGER MaximumSize; ULONG SectionPageProtection; ULONG AllocationAttributes; HANDLE FileHandle; MEM_EXTENDED_PARAMETER ExtendedParameters; ULONG ExtendedParameterCount; NTSTATUS result; }NAMES;
  } NtCreateSectionEx;
  union NtCreateSemaphoreMembers{
    struct NtCreateSemaphore_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_SEMAPHORE C1; OBJECT_ATTRIBUTES C2; LONG C3; LONG C4; NTSTATUS C5; }NUMERIC;
    struct NtCreateSemaphore_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_SEMAPHORE ACCESS_MASK_SEMAPHORE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; LONG LONG ; LONG LONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateSemaphore{PHANDLE SemaphoreHandle; ACCESS_MASK_SEMAPHORE DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; LONG InitialCount; LONG MaximumCount; NTSTATUS result; }NAMES;
  } NtCreateSemaphore;
  union NtCreateSymbolicLinkObjectMembers{
    struct NtCreateSymbolicLinkObject_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_LINK C1; OBJECT_ATTRIBUTES C2; UNICODE_STRING C3; NTSTATUS C4; }NUMERIC;
    struct NtCreateSymbolicLinkObject_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_LINK ACCESS_MASK_LINK ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateSymbolicLinkObject{PHANDLE LinkHandle; ACCESS_MASK_LINK DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; UNICODE_STRING LinkTarget; NTSTATUS result; }NAMES;
  } NtCreateSymbolicLinkObject;
  union NtCreateThreadMembers{
    struct NtCreateThread_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_THREAD C1; OBJECT_ATTRIBUTES C2; HANDLE C3; CLIENT_ID C4; CONTEXT C5; INITIAL_TEB C6; BOOLEAN C7; NTSTATUS C8; }NUMERIC;
    struct NtCreateThread_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_THREAD ACCESS_MASK_THREAD ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE ; CLIENT_ID CLIENT_ID ; CONTEXT CONTEXT ; INITIAL_TEB INITIAL_TEB ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateThread{PHANDLE ThreadHandle; ACCESS_MASK_THREAD DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; HANDLE ProcessHandle; CLIENT_ID ClientId; CONTEXT ThreadContext; INITIAL_TEB arg1; BOOLEAN arg2; NTSTATUS result; }NAMES;
  } NtCreateThread;
  union NtCreateTimerMembers{
    struct NtCreateTimer_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TIMER C1; OBJECT_ATTRIBUTES C2; TIMER_TYPE C3; NTSTATUS C4; }NUMERIC;
    struct NtCreateTimer_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TIMER ACCESS_MASK_TIMER ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; TIMER_TYPE TIMER_TYPE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateTimer{PHANDLE TimerHandle; ACCESS_MASK_TIMER DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; TIMER_TYPE TimerType; NTSTATUS result; }NAMES;
  } NtCreateTimer;
  union NtCreateTimer2Members{
    struct NtCreateTimer2_AS_NUMERIC{PHANDLE C0; PVOID C1; PVOID C2; ULONG C3; ACCESS_MASK_TIMER C4; NTSTATUS C5; }NUMERIC;
    struct NtCreateTimer2_AS_TYPES{PHANDLE PHANDLE ; PVOID PVOID ; PVOID PVOID1; ULONG ULONG ; ACCESS_MASK_TIMER ACCESS_MASK_TIMER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateTimer2{PHANDLE TimerHandle; PVOID ReservedA; PVOID ReservedB; ULONG Attributes; ACCESS_MASK_TIMER DesiredAccess; NTSTATUS result; }NAMES;
  } NtCreateTimer2;
  union NtCreateTokenMembers{
    struct NtCreateToken_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TOKEN C1; OBJECT_ATTRIBUTES C2; TOKEN_TYPE C3; LUID C4; LARGE_INTEGER C5; TOKEN_USER C6; TOKEN_GROUPS C7; TOKEN_PRIVILEGES C8; TOKEN_OWNER C9; TOKEN_PRIMARY_GROUP C10; TOKEN_DEFAULT_DACL C11; TOKEN_SOURCE C12; NTSTATUS C13; }NUMERIC;
    struct NtCreateToken_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TOKEN ACCESS_MASK_TOKEN ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; TOKEN_TYPE TOKEN_TYPE ; LUID LUID ; LARGE_INTEGER LARGE_INTEGER ; TOKEN_USER TOKEN_USER ; TOKEN_GROUPS TOKEN_GROUPS ; TOKEN_PRIVILEGES TOKEN_PRIVILEGES ; TOKEN_OWNER TOKEN_OWNER ; TOKEN_PRIMARY_GROUP TOKEN_PRIMARY_GROUP ; TOKEN_DEFAULT_DACL TOKEN_DEFAULT_DACL ; TOKEN_SOURCE TOKEN_SOURCE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateToken{PHANDLE TokenHandle; ACCESS_MASK_TOKEN DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; TOKEN_TYPE TokenType; LUID AuthenticationId; LARGE_INTEGER ExpirationTime; TOKEN_USER User; TOKEN_GROUPS Groups; TOKEN_PRIVILEGES Privileges; TOKEN_OWNER Owner; TOKEN_PRIMARY_GROUP PrimaryGroup; TOKEN_DEFAULT_DACL DefaultDacl; TOKEN_SOURCE TokenSource; NTSTATUS result; }NAMES;
  } NtCreateToken;
  union NtCreateTransactionMembers{
    struct NtCreateTransaction_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TRANSACTION C1; OBJECT_ATTRIBUTES C2; GUID C3; HANDLE C4; ULONG C5; ULONG C6; ULONG C7; LARGE_INTEGER C8; UNICODE_STRING C9; NTSTATUS C10; }NUMERIC;
    struct NtCreateTransaction_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TRANSACTION ACCESS_MASK_TRANSACTION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; GUID GUID ; HANDLE HANDLE ; ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; LARGE_INTEGER LARGE_INTEGER ; UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateTransaction{PHANDLE TransactionHandle; ACCESS_MASK_TRANSACTION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; GUID Uow; HANDLE TmHandle; ULONG CreateOptions; ULONG IsolationLevel; ULONG IsolationFlags; LARGE_INTEGER Timeout; UNICODE_STRING Description; NTSTATUS result; }NAMES;
  } NtCreateTransaction;
  union NtCreateTransactionManagerMembers{
    struct NtCreateTransactionManager_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TM C1; OBJECT_ATTRIBUTES C2; UNICODE_STRING C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtCreateTransactionManager_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TM ACCESS_MASK_TM ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; UNICODE_STRING UNICODE_STRING ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateTransactionManager{PHANDLE TmHandle; ACCESS_MASK_TM DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; UNICODE_STRING LogFileName; ULONG CreateOptions; ULONG CommitStrength; NTSTATUS result; }NAMES;
  } NtCreateTransactionManager;
  union NtCreateWaitCompletionPacketMembers{
    struct NtCreateWaitCompletionPacket_AS_NUMERIC{PHANDLE C0; ACCESS_MASK C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtCreateWaitCompletionPacket_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK ACCESS_MASK ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateWaitCompletionPacket{PHANDLE WaitCompletionPacketHandle; ACCESS_MASK DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtCreateWaitCompletionPacket;
  union NtCreateWaitablePortMembers{
    struct NtCreateWaitablePort_AS_NUMERIC{PHANDLE C0; OBJECT_ATTRIBUTES C1; ULONG C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtCreateWaitablePort_AS_TYPES{PHANDLE PHANDLE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateWaitablePort{PHANDLE PortHandle; OBJECT_ATTRIBUTES ObjectAttributes; ULONG MaxConnectionInfoLength; ULONG MaxMessageLength; ULONG MaxPoolUsage; NTSTATUS result; }NAMES;
  } NtCreateWaitablePort;
  union NtCreateWnfStateNameMembers{
    struct NtCreateWnfStateName_AS_NUMERIC{WNF_STATE_NAME C0; WNF_STATE_NAME_LIFETIME C1; WNF_DATA_SCOPE C2; BOOLEAN C3; WNF_TYPE_ID C4; ULONG C5; SECURITY_DESCRIPTOR C6; NTSTATUS C7; }NUMERIC;
    struct NtCreateWnfStateName_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; WNF_STATE_NAME_LIFETIME WNF_STATE_NAME_LIFETIME ; WNF_DATA_SCOPE WNF_DATA_SCOPE ; BOOLEAN BOOLEAN ; WNF_TYPE_ID WNF_TYPE_ID ; ULONG ULONG ; SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateWnfStateName{WNF_STATE_NAME StateName; WNF_STATE_NAME_LIFETIME NameLifetime; WNF_DATA_SCOPE DataScope; BOOLEAN PersistData; WNF_TYPE_ID TypeId; ULONG MaximumStateSize; SECURITY_DESCRIPTOR SecurityDescriptor; NTSTATUS result; }NAMES;
  } NtCreateWnfStateName;
  union NtCreateWorkerFactoryMembers{
    struct NtCreateWorkerFactory_AS_NUMERIC{PHANDLE C0; ACCESS_MASK C1; OBJECT_ATTRIBUTES C2; HANDLE C3; HANDLE C4; PTPP_START_ROUTINE C5; PVOID C6; ULONG C7; SIZE_T C8; SIZE_T C9; NTSTATUS C10; }NUMERIC;
    struct NtCreateWorkerFactory_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK ACCESS_MASK ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE ; HANDLE HANDLE1; PTPP_START_ROUTINE PTPP_START_ROUTINE ; PVOID PVOID ; ULONG ULONG ; SIZE_T SIZE_T ; SIZE_T SIZE_T1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtCreateWorkerFactory{PHANDLE WorkerFactoryHandleReturn; ACCESS_MASK DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; HANDLE CompletionPortHandle; HANDLE WorkerProcessHandle; PTPP_START_ROUTINE StartParameter; PVOID MaxThreadCount; ULONG StackReserve; SIZE_T StackCommit; SIZE_T arg1; NTSTATUS result; }NAMES;
  } NtCreateWorkerFactory;
  union NtDelayExecutionMembers{
    struct NtDelayExecution_AS_NUMERIC{BOOLEAN C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtDelayExecution_AS_TYPES{BOOLEAN BOOLEAN ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDelayExecution{BOOLEAN Alertable; LARGE_INTEGER DelayInterval; NTSTATUS result; }NAMES;
  } NtDelayExecution;
  union NtDeleteAtomMembers{
    struct NtDeleteAtom_AS_NUMERIC{RTL_ATOM C0; NTSTATUS C1; }NUMERIC;
    struct NtDeleteAtom_AS_TYPES{RTL_ATOM RTL_ATOM ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteAtom{RTL_ATOM Atom; NTSTATUS result; }NAMES;
  } NtDeleteAtom;
  union NtDeleteBootEntryMembers{
    struct NtDeleteBootEntry_AS_NUMERIC{ULONG C0; NTSTATUS C1; }NUMERIC;
    struct NtDeleteBootEntry_AS_TYPES{ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteBootEntry{ULONG arg1; NTSTATUS result; }NAMES;
  } NtDeleteBootEntry;
  union NtDeleteDriverEntryMembers{
    struct NtDeleteDriverEntry_AS_NUMERIC{ULONG C0; NTSTATUS C1; }NUMERIC;
    struct NtDeleteDriverEntry_AS_TYPES{ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteDriverEntry{ULONG arg1; NTSTATUS result; }NAMES;
  } NtDeleteDriverEntry;
  union NtDeleteFileMembers{
    struct NtDeleteFile_AS_NUMERIC{OBJECT_ATTRIBUTES C0; NTSTATUS C1; }NUMERIC;
    struct NtDeleteFile_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteFile{OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtDeleteFile;
  union NtDeleteKeyMembers{
    struct NtDeleteKey_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtDeleteKey_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteKey{HANDLE KeyHandle; NTSTATUS result; }NAMES;
  } NtDeleteKey;
  union NtDeleteObjectAuditAlarmMembers{
    struct NtDeleteObjectAuditAlarm_AS_NUMERIC{UNICODE_STRING C0; PVOID C1; BOOLEAN C2; NTSTATUS C3; }NUMERIC;
    struct NtDeleteObjectAuditAlarm_AS_TYPES{UNICODE_STRING UNICODE_STRING ; PVOID PVOID ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteObjectAuditAlarm{UNICODE_STRING SubsystemName; PVOID HandleId; BOOLEAN GenerateOnClose; NTSTATUS result; }NAMES;
  } NtDeleteObjectAuditAlarm;
  union NtDeletePrivateNamespaceMembers{
    struct NtDeletePrivateNamespace_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtDeletePrivateNamespace_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeletePrivateNamespace{HANDLE arg1; NTSTATUS result; }NAMES;
  } NtDeletePrivateNamespace;
  union NtDeleteValueKeyMembers{
    struct NtDeleteValueKey_AS_NUMERIC{HANDLE C0; UNICODE_STRING C1; NTSTATUS C2; }NUMERIC;
    struct NtDeleteValueKey_AS_TYPES{HANDLE HANDLE ; UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteValueKey{HANDLE KeyHandle; UNICODE_STRING ValueName; NTSTATUS result; }NAMES;
  } NtDeleteValueKey;
  union NtDeleteWnfStateDataMembers{
    struct NtDeleteWnfStateData_AS_NUMERIC{WNF_STATE_NAME C0; PVOID C1; NTSTATUS C2; }NUMERIC;
    struct NtDeleteWnfStateData_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteWnfStateData{WNF_STATE_NAME StateName; PVOID ExplicitScope; NTSTATUS result; }NAMES;
  } NtDeleteWnfStateData;
  union NtDeleteWnfStateNameMembers{
    struct NtDeleteWnfStateName_AS_NUMERIC{WNF_STATE_NAME C0; NTSTATUS C1; }NUMERIC;
    struct NtDeleteWnfStateName_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeleteWnfStateName{WNF_STATE_NAME StateName; NTSTATUS result; }NAMES;
  } NtDeleteWnfStateName;
  union NtDeviceIoControlFileMembers{
    struct NtDeviceIoControlFile_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; IO_CTRL_CODE C5; INBUF C6; INLEN C7; OUTBUF C8; OUTLEN C9; NTSTATUS C10; }NUMERIC;
    struct NtDeviceIoControlFile_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; IO_CTRL_CODE IO_CTRL_CODE ; INBUF INBUF ; INLEN INLEN ; OUTBUF OUTBUF ; OUTLEN OUTLEN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDeviceIoControlFile{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; IO_CTRL_CODE IoControlCode; INBUF InputBuffer; INLEN InputBufferLength; OUTBUF outBuffer; OUTLEN outBufferLength; NTSTATUS result; }NAMES;
  } NtDeviceIoControlFile;
  union NtDirectGraphicsCallMembers{
    struct NtDirectGraphicsCall_AS_NUMERIC{ULONG C0; PVOID C1; ULONG C2; PVOID C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtDirectGraphicsCall_AS_TYPES{ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; PVOID PVOID1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDirectGraphicsCall{ULONG arg1; PVOID arg2; ULONG arg3; PVOID arg4; ULONG arg5; NTSTATUS result; }NAMES;
  } NtDirectGraphicsCall;
  union NtDisableLastKnownGoodMembers{
    struct NtDisableLastKnownGood_AS_NUMERIC{NTSTATUS C0; }NUMERIC;
    struct NtDisableLastKnownGood_AS_TYPES{NTSTATUS NTSTATUS ; }TYPES;
    struct NtDisableLastKnownGood{NTSTATUS result; }NAMES;
  } NtDisableLastKnownGood;
  union NtDisplayStringMembers{
    struct NtDisplayString_AS_NUMERIC{UNICODE_STRING C0; NTSTATUS C1; }NUMERIC;
    struct NtDisplayString_AS_TYPES{UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDisplayString{UNICODE_STRING String; NTSTATUS result; }NAMES;
  } NtDisplayString;
  union NtDrawTextMembers{
    struct NtDrawText_AS_NUMERIC{UNICODE_STRING C0; NTSTATUS C1; }NUMERIC;
    struct NtDrawText_AS_TYPES{UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDrawText{UNICODE_STRING String; NTSTATUS result; }NAMES;
  } NtDrawText;
  union NtDuplicateObjectMembers{
    struct NtDuplicateObject_AS_NUMERIC{HANDLE C0; HANDLE C1; HANDLE C2; HANDLE C3; ACCESS_MASK C4; ULONG C5; ULONG C6; NTSTATUS C7; }NUMERIC;
    struct NtDuplicateObject_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; HANDLE HANDLE2; HANDLE HANDLE3; ACCESS_MASK ACCESS_MASK ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDuplicateObject{HANDLE SourceProcessHandle; HANDLE SourceHandle; HANDLE TargetProcessHandle; HANDLE TargetHandle; ACCESS_MASK DesiredAccess; ULONG HandleAttributes; ULONG Options; NTSTATUS result; }NAMES;
  } NtDuplicateObject;
  union NtDuplicateTokenMembers{
    struct NtDuplicateToken_AS_NUMERIC{HANDLE C0; ACCESS_MASK_TOKEN C1; OBJECT_ATTRIBUTES C2; BOOLEAN C3; TOKEN_TYPE C4; PHANDLE C5; NTSTATUS C6; }NUMERIC;
    struct NtDuplicateToken_AS_TYPES{HANDLE HANDLE ; ACCESS_MASK_TOKEN ACCESS_MASK_TOKEN ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; BOOLEAN BOOLEAN ; TOKEN_TYPE TOKEN_TYPE ; PHANDLE PHANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtDuplicateToken{HANDLE ExistingTokenHandle; ACCESS_MASK_TOKEN DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; BOOLEAN EffectiveOnly; TOKEN_TYPE TokenType; PHANDLE NewTokenHandle; NTSTATUS result; }NAMES;
  } NtDuplicateToken;
  union NtEnableLastKnownGoodMembers{
    struct NtEnableLastKnownGood_AS_NUMERIC{NTSTATUS C0; }NUMERIC;
    struct NtEnableLastKnownGood_AS_TYPES{NTSTATUS NTSTATUS ; }TYPES;
    struct NtEnableLastKnownGood{NTSTATUS result; }NAMES;
  } NtEnableLastKnownGood;
  union NtEnumerateBootEntriesMembers{
    struct NtEnumerateBootEntries_AS_NUMERIC{PVOID C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtEnumerateBootEntries_AS_TYPES{PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtEnumerateBootEntries{PVOID Buffer; ULONG BufferLength; NTSTATUS result; }NAMES;
  } NtEnumerateBootEntries;
  union NtEnumerateDriverEntriesMembers{
    struct NtEnumerateDriverEntries_AS_NUMERIC{PVOID C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtEnumerateDriverEntries_AS_TYPES{PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtEnumerateDriverEntries{PVOID Buffer; ULONG BufferLength; NTSTATUS result; }NAMES;
  } NtEnumerateDriverEntries;
  union NtEnumerateKeyMembers{
    struct NtEnumerateKey_AS_NUMERIC{HANDLE C0; ULONG C1; KEY_INFORMATION_CLASS C2; PVOID C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtEnumerateKey_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; KEY_INFORMATION_CLASS KEY_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtEnumerateKey{HANDLE KeyHandle; ULONG Index; KEY_INFORMATION_CLASS KeyInformationClass; PVOID KeyInformation; ULONG Length; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtEnumerateKey;
  union NtEnumerateSystemEnvironmentValuesExMembers{
    struct NtEnumerateSystemEnvironmentValuesEx_AS_NUMERIC{ULONG C0; PVOID C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtEnumerateSystemEnvironmentValuesEx_AS_TYPES{ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtEnumerateSystemEnvironmentValuesEx{ULONG InformationClass; PVOID Buffer; ULONG BufferLength; NTSTATUS result; }NAMES;
  } NtEnumerateSystemEnvironmentValuesEx;
  union NtEnumerateTransactionObjectMembers{
    struct NtEnumerateTransactionObject_AS_NUMERIC{HANDLE C0; KTMOBJECT_TYPE C1; KTMOBJECT_CURSOR C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtEnumerateTransactionObject_AS_TYPES{HANDLE HANDLE ; KTMOBJECT_TYPE KTMOBJECT_TYPE ; KTMOBJECT_CURSOR KTMOBJECT_CURSOR ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtEnumerateTransactionObject{HANDLE RootObjectHandle; KTMOBJECT_TYPE QueryType; KTMOBJECT_CURSOR ObjectCursor; ULONG ObjectCursorLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtEnumerateTransactionObject;
  union NtEnumerateValueKeyMembers{
    struct NtEnumerateValueKey_AS_NUMERIC{HANDLE C0; ULONG C1; KEY_VALUE_INFORMATION_CLASS C2; PVOID C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtEnumerateValueKey_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; KEY_VALUE_INFORMATION_CLASS KEY_VALUE_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtEnumerateValueKey{HANDLE KeyHandle; ULONG Index; KEY_VALUE_INFORMATION_CLASS KeyValueInformationClass; PVOID KeyValueInformation; ULONG Length; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtEnumerateValueKey;
  union NtExtendSectionMembers{
    struct NtExtendSection_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtExtendSection_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtExtendSection{HANDLE SectionHandle; LARGE_INTEGER NewSectionSize; NTSTATUS result; }NAMES;
  } NtExtendSection;
  union NtFilterBootOptionMembers{
    struct NtFilterBootOption_AS_NUMERIC{FILTER_BOOT_OPTION_OPERATION C0; ULONG C1; ULONG C2; PVOID C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtFilterBootOption_AS_TYPES{FILTER_BOOT_OPTION_OPERATION FILTER_BOOT_OPTION_OPERATION ; ULONG ULONG ; ULONG ULONG1; PVOID PVOID ; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFilterBootOption{FILTER_BOOT_OPTION_OPERATION FilterOperation; ULONG ObjectType; ULONG ElementType; PVOID Data; ULONG DataSize; NTSTATUS result; }NAMES;
  } NtFilterBootOption;
  union NtFilterTokenMembers{
    struct NtFilterToken_AS_NUMERIC{HANDLE C0; ULONG C1; TOKEN_GROUPS C2; TOKEN_PRIVILEGES C3; TOKEN_GROUPS C4; PHANDLE C5; NTSTATUS C6; }NUMERIC;
    struct NtFilterToken_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; TOKEN_GROUPS TOKEN_GROUPS ; TOKEN_PRIVILEGES TOKEN_PRIVILEGES ; TOKEN_GROUPS TOKEN_GROUPS1; PHANDLE PHANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFilterToken{HANDLE ExistingTokenHandle; ULONG Flags; TOKEN_GROUPS SidsToDisable; TOKEN_PRIVILEGES PrivilegesToDelete; TOKEN_GROUPS RestrictedSids; PHANDLE NewTokenHandle; NTSTATUS result; }NAMES;
  } NtFilterToken;
  union NtFindAtomMembers{
    struct NtFindAtom_AS_NUMERIC{WSTR C0; ULONG C1; RTL_ATOM C2; NTSTATUS C3; }NUMERIC;
    struct NtFindAtom_AS_TYPES{WSTR WSTR ; ULONG ULONG ; RTL_ATOM RTL_ATOM ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFindAtom{WSTR AtomName; ULONG Length; RTL_ATOM Atom; NTSTATUS result; }NAMES;
  } NtFindAtom;
  union NtFlushBuffersFileMembers{
    struct NtFlushBuffersFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; NTSTATUS C2; }NUMERIC;
    struct NtFlushBuffersFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFlushBuffersFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; NTSTATUS result; }NAMES;
  } NtFlushBuffersFile;
  union NtFlushBuffersFileExMembers{
    struct NtFlushBuffersFileEx_AS_NUMERIC{HANDLE C0; ULONG C1; PVOID C2; ULONG C3; IO_STATUS_BLOCK C4; NTSTATUS C5; }NUMERIC;
    struct NtFlushBuffersFileEx_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; IO_STATUS_BLOCK IO_STATUS_BLOCK ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFlushBuffersFileEx{HANDLE FileHandle; ULONG Flags; PVOID Parameters; ULONG ParametersSize; IO_STATUS_BLOCK IoStatusBlock; NTSTATUS result; }NAMES;
  } NtFlushBuffersFileEx;
  union NtFlushInstallUILanguageMembers{
    struct NtFlushInstallUILanguage_AS_NUMERIC{ULONG C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtFlushInstallUILanguage_AS_TYPES{ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFlushInstallUILanguage{ULONG InstallUILanguage; ULONG SetComittedFlag; NTSTATUS result; }NAMES;
  } NtFlushInstallUILanguage;
  union NtFlushInstructionCacheMembers{
    struct NtFlushInstructionCache_AS_NUMERIC{HANDLE C0; PVOID C1; SIZE_T C2; NTSTATUS C3; }NUMERIC;
    struct NtFlushInstructionCache_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFlushInstructionCache{HANDLE ProcessHandle; PVOID BaseAddress; SIZE_T Length; NTSTATUS result; }NAMES;
  } NtFlushInstructionCache;
  union NtFlushKeyMembers{
    struct NtFlushKey_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtFlushKey_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFlushKey{HANDLE KeyHandle; NTSTATUS result; }NAMES;
  } NtFlushKey;
  union NtFlushProcessWriteBuffersMembers{
    struct NtFlushProcessWriteBuffers_AS_NUMERIC{NTSTATUS C0; }NUMERIC;
    struct NtFlushProcessWriteBuffers_AS_TYPES{NTSTATUS NTSTATUS ; }TYPES;
    struct NtFlushProcessWriteBuffers{NTSTATUS result; }NAMES;
  } NtFlushProcessWriteBuffers;
  union NtFlushVirtualMemoryMembers{
    struct NtFlushVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; SIZE_T C2; IO_STATUS_BLOCK C3; NTSTATUS C4; }NUMERIC;
    struct NtFlushVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFlushVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; SIZE_T RegionSize; IO_STATUS_BLOCK IoStatus; NTSTATUS result; }NAMES;
  } NtFlushVirtualMemory;
  union NtFlushWriteBufferMembers{
    struct NtFlushWriteBuffer_AS_NUMERIC{NTSTATUS C0; }NUMERIC;
    struct NtFlushWriteBuffer_AS_TYPES{NTSTATUS NTSTATUS ; }TYPES;
    struct NtFlushWriteBuffer{NTSTATUS result; }NAMES;
  } NtFlushWriteBuffer;
  union NtFreeVirtualMemoryMembers{
    struct NtFreeVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; SIZE_T C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtFreeVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFreeVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; SIZE_T RegionSize; ULONG FreeType; NTSTATUS result; }NAMES;
  } NtFreeVirtualMemory;
  union NtFreezeRegistryMembers{
    struct NtFreezeRegistry_AS_NUMERIC{ULONG C0; NTSTATUS C1; }NUMERIC;
    struct NtFreezeRegistry_AS_TYPES{ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFreezeRegistry{ULONG TimeOutInSeconds; NTSTATUS result; }NAMES;
  } NtFreezeRegistry;
  union NtFsControlFileMembers{
    struct NtFsControlFile_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; IO_CTRL_CODE C5; INBUF C6; INLEN C7; OUTBUF C8; OUTLEN C9; NTSTATUS C10; }NUMERIC;
    struct NtFsControlFile_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; IO_CTRL_CODE IO_CTRL_CODE ; INBUF INBUF ; INLEN INLEN ; OUTBUF OUTBUF ; OUTLEN OUTLEN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtFsControlFile{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; IO_CTRL_CODE IoControlCode; INBUF InputBuffer; INLEN InputBufferLength; OUTBUF outBuffer; OUTLEN outBufferLength; NTSTATUS result; }NAMES;
  } NtFsControlFile;
  union NtGetCachedSigningLevelMembers{
    struct NtGetCachedSigningLevel_AS_NUMERIC{HANDLE C0; ULONG C1; SE_SIGNING_LEVEL C2; UCHAR C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtGetCachedSigningLevel_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; SE_SIGNING_LEVEL SE_SIGNING_LEVEL ; UCHAR UCHAR ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetCachedSigningLevel{HANDLE File; ULONG Flags; SE_SIGNING_LEVEL SigningLevel; UCHAR Thumbprint; ULONG ThumbprintSize; ULONG ThumbprintAlgorithm; NTSTATUS result; }NAMES;
  } NtGetCachedSigningLevel;
  union NtGetCompleteWnfStateSubscriptionMembers{
    struct NtGetCompleteWnfStateSubscription_AS_NUMERIC{WNF_STATE_NAME C0; ULONG C1; ULONG C2; ULONG C3; WNF_DELIVERY_DESCRIPTOR C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtGetCompleteWnfStateSubscription_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; WNF_DELIVERY_DESCRIPTOR WNF_DELIVERY_DESCRIPTOR ; ULONG ULONG3; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetCompleteWnfStateSubscription{WNF_STATE_NAME OldDescriptorStateName; ULONG OldSubscriptionId; ULONG OldDescriptorEventMask; ULONG OldDescriptorStatus; WNF_DELIVERY_DESCRIPTOR NewDeliveryDescriptor; ULONG DescriptorSize; NTSTATUS result; }NAMES;
  } NtGetCompleteWnfStateSubscription;
  union NtGetContextThreadMembers{
    struct NtGetContextThread_AS_NUMERIC{HANDLE C0; CONTEXT C1; NTSTATUS C2; }NUMERIC;
    struct NtGetContextThread_AS_TYPES{HANDLE HANDLE ; CONTEXT CONTEXT ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetContextThread{HANDLE ThreadHandle; CONTEXT ThreadContext; NTSTATUS result; }NAMES;
  } NtGetContextThread;
  union NtGetCurrentProcessorNumberExMembers{
    struct NtGetCurrentProcessorNumberEx_AS_NUMERIC{PROCESSOR_NUMBER C0; NTSTATUS C1; }NUMERIC;
    struct NtGetCurrentProcessorNumberEx_AS_TYPES{PROCESSOR_NUMBER PROCESSOR_NUMBER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetCurrentProcessorNumberEx{PROCESSOR_NUMBER ProcNumber; NTSTATUS result; }NAMES;
  } NtGetCurrentProcessorNumberEx;
  union NtGetDevicePowerStateMembers{
    struct NtGetDevicePowerState_AS_NUMERIC{HANDLE C0; DEVICE_POWER_STATE C1; NTSTATUS C2; }NUMERIC;
    struct NtGetDevicePowerState_AS_TYPES{HANDLE HANDLE ; DEVICE_POWER_STATE DEVICE_POWER_STATE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetDevicePowerState{HANDLE Device; DEVICE_POWER_STATE State; NTSTATUS result; }NAMES;
  } NtGetDevicePowerState;
  union NtGetMUIRegistryInfoMembers{
    struct NtGetMUIRegistryInfo_AS_NUMERIC{ULONG C0; ULONG C1; PVOID C2; NTSTATUS C3; }NUMERIC;
    struct NtGetMUIRegistryInfo_AS_TYPES{ULONG ULONG ; ULONG ULONG1; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetMUIRegistryInfo{ULONG Flags; ULONG DataSize; PVOID Data; NTSTATUS result; }NAMES;
  } NtGetMUIRegistryInfo;
  union NtGetNextProcessMembers{
    struct NtGetNextProcess_AS_NUMERIC{HANDLE C0; ACCESS_MASK_PROCESS C1; ULONG C2; ULONG C3; PHANDLE C4; NTSTATUS C5; }NUMERIC;
    struct NtGetNextProcess_AS_TYPES{HANDLE HANDLE ; ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS ; ULONG ULONG ; ULONG ULONG1; PHANDLE PHANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetNextProcess{HANDLE ProcessHandle; ACCESS_MASK_PROCESS DesiredAccess; ULONG HandleAttributes; ULONG Flags; PHANDLE NewProcessHandle; NTSTATUS result; }NAMES;
  } NtGetNextProcess;
  union NtGetNextThreadMembers{
    struct NtGetNextThread_AS_NUMERIC{HANDLE C0; HANDLE C1; ACCESS_MASK_PROCESS C2; ULONG C3; ULONG C4; PHANDLE C5; NTSTATUS C6; }NUMERIC;
    struct NtGetNextThread_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS ; ULONG ULONG ; ULONG ULONG1; PHANDLE PHANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetNextThread{HANDLE ProcessHandle; HANDLE ThreadHandle; ACCESS_MASK_PROCESS DesiredAccess; ULONG HandleAttributes; ULONG Flags; PHANDLE NewThreadHandle; NTSTATUS result; }NAMES;
  } NtGetNextThread;
  union NtGetNlsSectionPtrMembers{
    struct NtGetNlsSectionPtr_AS_NUMERIC{ULONG C0; ULONG C1; PVOID C2; PVOID C3; SIZE_T C4; NTSTATUS C5; }NUMERIC;
    struct NtGetNlsSectionPtr_AS_TYPES{ULONG ULONG ; ULONG ULONG1; PVOID PVOID ; PVOID PVOID1; SIZE_T SIZE_T ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetNlsSectionPtr{ULONG SectionType; ULONG SectionData; PVOID ContextData; PVOID SectionPointer; SIZE_T SectionSize; NTSTATUS result; }NAMES;
  } NtGetNlsSectionPtr;
  union NtGetNotificationResourceManagerMembers{
    struct NtGetNotificationResourceManager_AS_NUMERIC{HANDLE C0; TRANSACTION_NOTIFICATION C1; ULONG C2; LARGE_INTEGER C3; ULONG C4; ULONG C5; ULONG C6; NTSTATUS C7; }NUMERIC;
    struct NtGetNotificationResourceManager_AS_TYPES{HANDLE HANDLE ; TRANSACTION_NOTIFICATION TRANSACTION_NOTIFICATION ; ULONG ULONG ; LARGE_INTEGER LARGE_INTEGER ; ULONG ULONG1; ULONG ULONG2; ULONG ULONG3; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetNotificationResourceManager{HANDLE ResourceManagerHandle; TRANSACTION_NOTIFICATION TransactionNotification; ULONG NotificationLength; LARGE_INTEGER Timeout; ULONG ReturnedResultLength; ULONG Asynchronous; ULONG AsynchronousContext; NTSTATUS result; }NAMES;
  } NtGetNotificationResourceManager;
  union NtGetWriteWatchMembers{
    struct NtGetWriteWatch_AS_NUMERIC{HANDLE C0; ULONG C1; PVOID C2; SIZE_T C3; PVOID C4; ULONG C5; ULONG C6; NTSTATUS C7; }NUMERIC;
    struct NtGetWriteWatch_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; PVOID PVOID ; SIZE_T SIZE_T ; PVOID PVOID1; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtGetWriteWatch{HANDLE ProcessHandle; ULONG Flags; PVOID BaseAddress; SIZE_T RegionSize; PVOID UserAddressArray; ULONG EntriesInUserAddressArray; ULONG Granularity; NTSTATUS result; }NAMES;
  } NtGetWriteWatch;
  union NtImpersonateAnonymousTokenMembers{
    struct NtImpersonateAnonymousToken_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtImpersonateAnonymousToken_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtImpersonateAnonymousToken{HANDLE ThreadHandle; NTSTATUS result; }NAMES;
  } NtImpersonateAnonymousToken;
  union NtImpersonateClientOfPortMembers{
    struct NtImpersonateClientOfPort_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; NTSTATUS C2; }NUMERIC;
    struct NtImpersonateClientOfPort_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtImpersonateClientOfPort{HANDLE PortHandle; PORT_MESSAGE arg1; NTSTATUS result; }NAMES;
  } NtImpersonateClientOfPort;
  union NtImpersonateThreadMembers{
    struct NtImpersonateThread_AS_NUMERIC{HANDLE C0; HANDLE C1; SECURITY_QUALITY_OF_SERVICE C2; NTSTATUS C3; }NUMERIC;
    struct NtImpersonateThread_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; SECURITY_QUALITY_OF_SERVICE SECURITY_QUALITY_OF_SERVICE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtImpersonateThread{HANDLE ServerThreadHandle; HANDLE ClientThreadHandle; SECURITY_QUALITY_OF_SERVICE SecurityQos; NTSTATUS result; }NAMES;
  } NtImpersonateThread;
  union NtInitializeEnclaveMembers{
    struct NtInitializeEnclave_AS_NUMERIC{HANDLE C0; PVOID C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtInitializeEnclave_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PVOID PVOID1; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtInitializeEnclave{HANDLE arg1; PVOID arg2; PVOID arg3; ULONG arg4; ULONG arg5; NTSTATUS result; }NAMES;
  } NtInitializeEnclave;
  union NtInitializeNlsFilesMembers{
    struct NtInitializeNlsFiles_AS_NUMERIC{PVOID C0; LCID C1; LARGE_INTEGER C2; NTSTATUS C3; }NUMERIC;
    struct NtInitializeNlsFiles_AS_TYPES{PVOID PVOID ; LCID LCID ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtInitializeNlsFiles{PVOID BaseAddress; LCID DefaultLocaleId; LARGE_INTEGER DefaultCasingTableSize; NTSTATUS result; }NAMES;
  } NtInitializeNlsFiles;
  union NtInitializeRegistryMembers{
    struct NtInitializeRegistry_AS_NUMERIC{USHORT C0; NTSTATUS C1; }NUMERIC;
    struct NtInitializeRegistry_AS_TYPES{USHORT USHORT ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtInitializeRegistry{USHORT BootCondition; NTSTATUS result; }NAMES;
  } NtInitializeRegistry;
  union NtInitiatePowerActionMembers{
    struct NtInitiatePowerAction_AS_NUMERIC{POWER_ACTION C0; SYSTEM_POWER_STATE C1; ULONG C2; BOOLEAN C3; NTSTATUS C4; }NUMERIC;
    struct NtInitiatePowerAction_AS_TYPES{POWER_ACTION POWER_ACTION ; SYSTEM_POWER_STATE SYSTEM_POWER_STATE ; ULONG ULONG ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtInitiatePowerAction{POWER_ACTION SystemAction; SYSTEM_POWER_STATE MinSystemState; ULONG Flags; BOOLEAN arg1; NTSTATUS result; }NAMES;
  } NtInitiatePowerAction;
  union NtIsProcessInJobMembers{
    struct NtIsProcessInJob_AS_NUMERIC{HANDLE C0; HANDLE C1; NTSTATUS C2; }NUMERIC;
    struct NtIsProcessInJob_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtIsProcessInJob{HANDLE ProcessHandle; HANDLE JobHandle; NTSTATUS result; }NAMES;
  } NtIsProcessInJob;
  union NtListenPortMembers{
    struct NtListenPort_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; NTSTATUS C2; }NUMERIC;
    struct NtListenPort_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtListenPort{HANDLE PortHandle; PORT_MESSAGE arg1; NTSTATUS result; }NAMES;
  } NtListenPort;
  union NtLoadDriverMembers{
    struct NtLoadDriver_AS_NUMERIC{UNICODE_STRING C0; NTSTATUS C1; }NUMERIC;
    struct NtLoadDriver_AS_TYPES{UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLoadDriver{UNICODE_STRING DriverServiceName; NTSTATUS result; }NAMES;
  } NtLoadDriver;
  union NtLoadEnclaveDataMembers{
    struct NtLoadEnclaveData_AS_NUMERIC{HANDLE C0; PVOID C1; PVOID C2; SIZE_T C3; ULONG C4; PVOID C5; ULONG C6; SIZE_T C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtLoadEnclaveData_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PVOID PVOID1; SIZE_T SIZE_T ; ULONG ULONG ; PVOID PVOID2; ULONG ULONG1; SIZE_T SIZE_T1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLoadEnclaveData{HANDLE ProcessHandle; PVOID BaseAddress; PVOID Buffer; SIZE_T BufferSize; ULONG Protect; PVOID PageInformation; ULONG PageInformationLength; SIZE_T NumberOfBytesWritten; ULONG EnclaveError; NTSTATUS result; }NAMES;
  } NtLoadEnclaveData;
  union NtLoadKeyMembers{
    struct NtLoadKey_AS_NUMERIC{OBJECT_ATTRIBUTES C0; OBJECT_ATTRIBUTES C1; NTSTATUS C2; }NUMERIC;
    struct NtLoadKey_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLoadKey{OBJECT_ATTRIBUTES TargetKey; OBJECT_ATTRIBUTES SourceFile; NTSTATUS result; }NAMES;
  } NtLoadKey;
  union NtLoadKey2Members{
    struct NtLoadKey2_AS_NUMERIC{OBJECT_ATTRIBUTES C0; OBJECT_ATTRIBUTES C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtLoadKey2_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES1; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLoadKey2{OBJECT_ATTRIBUTES TargetKey; OBJECT_ATTRIBUTES SourceFile; ULONG Flags; NTSTATUS result; }NAMES;
  } NtLoadKey2;
  union NtLoadKeyExMembers{
    struct NtLoadKeyEx_AS_NUMERIC{OBJECT_ATTRIBUTES C0; OBJECT_ATTRIBUTES C1; ULONG C2; HANDLE C3; HANDLE C4; ACCESS_MASK C5; PHANDLE C6; IO_STATUS_BLOCK C7; NTSTATUS C8; }NUMERIC;
    struct NtLoadKeyEx_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES1; ULONG ULONG ; HANDLE HANDLE ; HANDLE HANDLE1; ACCESS_MASK ACCESS_MASK ; PHANDLE PHANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLoadKeyEx{OBJECT_ATTRIBUTES TargetKey; OBJECT_ATTRIBUTES SourceFile; ULONG Flags; HANDLE TrustClassKey; HANDLE arg1; ACCESS_MASK arg2; PHANDLE arg3; IO_STATUS_BLOCK arg4; NTSTATUS result; }NAMES;
  } NtLoadKeyEx;
  union NtLockFileMembers{
    struct NtLockFile_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; LARGE_INTEGER C5; LARGE_INTEGER C6; ULONG C7; BOOLEAN C8; BOOLEAN C9; NTSTATUS C10; }NUMERIC;
    struct NtLockFile_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; LARGE_INTEGER LARGE_INTEGER ; LARGE_INTEGER LARGE_INTEGER1; ULONG ULONG ; BOOLEAN BOOLEAN ; BOOLEAN BOOLEAN1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLockFile{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; LARGE_INTEGER ByteOffset; LARGE_INTEGER Length; ULONG Key; BOOLEAN FailImmediately; BOOLEAN ExclusiveLock; NTSTATUS result; }NAMES;
  } NtLockFile;
  union NtLockProductActivationKeysMembers{
    struct NtLockProductActivationKeys_AS_NUMERIC{ULONG C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtLockProductActivationKeys_AS_TYPES{ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLockProductActivationKeys{ULONG arg1; ULONG arg2; NTSTATUS result; }NAMES;
  } NtLockProductActivationKeys;
  union NtLockRegistryKeyMembers{
    struct NtLockRegistryKey_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtLockRegistryKey_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLockRegistryKey{HANDLE KeyHandle; NTSTATUS result; }NAMES;
  } NtLockRegistryKey;
  union NtLockVirtualMemoryMembers{
    struct NtLockVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; SIZE_T C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtLockVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtLockVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; SIZE_T RegionSize; ULONG MapType; NTSTATUS result; }NAMES;
  } NtLockVirtualMemory;
  union NtMakePermanentObjectMembers{
    struct NtMakePermanentObject_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtMakePermanentObject_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtMakePermanentObject{HANDLE Handle; NTSTATUS result; }NAMES;
  } NtMakePermanentObject;
  union NtMakeTemporaryObjectMembers{
    struct NtMakeTemporaryObject_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtMakeTemporaryObject_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtMakeTemporaryObject{HANDLE arg1; NTSTATUS result; }NAMES;
  } NtMakeTemporaryObject;
  union NtManageHotPatchMembers{
    struct NtManageHotPatch_AS_NUMERIC{HOT_PATCH_INFORMATION_CLASS C0; PVOID C1; ULONG C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtManageHotPatch_AS_TYPES{HOT_PATCH_INFORMATION_CLASS HOT_PATCH_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtManageHotPatch{HOT_PATCH_INFORMATION_CLASS arg1; PVOID arg2; ULONG arg3; ULONG arg4; NTSTATUS result; }NAMES;
  } NtManageHotPatch;
  union NtManagePartitionMembers{
    struct NtManagePartition_AS_NUMERIC{HANDLE C0; HANDLE C1; PARTITION_INFORMATION_CLASS C2; PVOID C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtManagePartition_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PARTITION_INFORMATION_CLASS PARTITION_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtManagePartition{HANDLE TargetHandle; HANDLE SourceHandle; PARTITION_INFORMATION_CLASS PartitionInformationClass; PVOID PartitionInformation; ULONG PartitionInformationLength; NTSTATUS result; }NAMES;
  } NtManagePartition;
  union NtMapCMFModuleMembers{
    struct NtMapCMFModule_AS_NUMERIC{ULONG C0; ULONG C1; ULONG C2; ULONG C3; ULONG C4; PVOID C5; NTSTATUS C6; }NUMERIC;
    struct NtMapCMFModule_AS_TYPES{ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; ULONG ULONG3; ULONG ULONG4; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtMapCMFModule{ULONG What; ULONG Index; ULONG CacheIndexOut; ULONG CacheFlagsOut; ULONG ViewSizeOut; PVOID BaseAddress; NTSTATUS result; }NAMES;
  } NtMapCMFModule;
  union NtMapUserPhysicalPagesMembers{
    struct NtMapUserPhysicalPages_AS_NUMERIC{PVOID C0; ULONG C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtMapUserPhysicalPages_AS_TYPES{PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtMapUserPhysicalPages{PVOID VirtualAddress; ULONG NumberOfPages; ULONG UserPfnArray; NTSTATUS result; }NAMES;
  } NtMapUserPhysicalPages;
  union NtMapUserPhysicalPagesScatterMembers{
    struct NtMapUserPhysicalPagesScatter_AS_NUMERIC{PVOID C0; ULONG C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtMapUserPhysicalPagesScatter_AS_TYPES{PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtMapUserPhysicalPagesScatter{PVOID VirtualAddresses; ULONG NumberOfPages; ULONG UserPfnArray; NTSTATUS result; }NAMES;
  } NtMapUserPhysicalPagesScatter;
  union NtMapViewOfSectionMembers{
    struct NtMapViewOfSection_AS_NUMERIC{HANDLE C0; HANDLE C1; PVOID C2; ULONG C3; SIZE_T C4; LARGE_INTEGER C5; SIZE_T C6; SECTION_INHERIT C7; ALLOCATION_TYPE C8; PAGE_PROTECT C9; NTSTATUS C10; }NUMERIC;
    struct NtMapViewOfSection_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PVOID PVOID ; ULONG ULONG ; SIZE_T SIZE_T ; LARGE_INTEGER LARGE_INTEGER ; SIZE_T SIZE_T1; SECTION_INHERIT SECTION_INHERIT ; ALLOCATION_TYPE ALLOCATION_TYPE ; PAGE_PROTECT PAGE_PROTECT ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtMapViewOfSection{HANDLE SectionHandle; HANDLE ProcessHandle; PVOID BaseAddress; ULONG ZeroBits; SIZE_T CommitSize; LARGE_INTEGER SectionOffset; SIZE_T ViewSize; SECTION_INHERIT InheritDisposition; ALLOCATION_TYPE AllocationType; PAGE_PROTECT WinProtect; NTSTATUS result; }NAMES;
  } NtMapViewOfSection;
  union NtMapViewOfSectionExMembers{
    struct NtMapViewOfSectionEx_AS_NUMERIC{HANDLE C0; HANDLE C1; PVOID C2; LARGE_INTEGER C3; SIZE_T C4; ULONG C5; ULONG C6; MEM_EXTENDED_PARAMETER C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtMapViewOfSectionEx_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PVOID PVOID ; LARGE_INTEGER LARGE_INTEGER ; SIZE_T SIZE_T ; ULONG ULONG ; ULONG ULONG1; MEM_EXTENDED_PARAMETER MEM_EXTENDED_PARAMETER ; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtMapViewOfSectionEx{HANDLE SectionHandle; HANDLE ProcessHandle; PVOID BaseAddress; LARGE_INTEGER SectionOffset; SIZE_T CommitSize; ULONG arg1; ULONG arg2; MEM_EXTENDED_PARAMETER arg3; ULONG arg4; NTSTATUS result; }NAMES;
  } NtMapViewOfSectionEx;
  union NtModifyBootEntryMembers{
    struct NtModifyBootEntry_AS_NUMERIC{BOOT_ENTRY C0; NTSTATUS C1; }NUMERIC;
    struct NtModifyBootEntry_AS_TYPES{BOOT_ENTRY BOOT_ENTRY ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtModifyBootEntry{BOOT_ENTRY BootEntry; NTSTATUS result; }NAMES;
  } NtModifyBootEntry;
  union NtModifyDriverEntryMembers{
    struct NtModifyDriverEntry_AS_NUMERIC{EFI_DRIVER_ENTRY C0; NTSTATUS C1; }NUMERIC;
    struct NtModifyDriverEntry_AS_TYPES{EFI_DRIVER_ENTRY EFI_DRIVER_ENTRY ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtModifyDriverEntry{EFI_DRIVER_ENTRY arg1; NTSTATUS result; }NAMES;
  } NtModifyDriverEntry;
  union NtNotifyChangeDirectoryFileMembers{
    struct NtNotifyChangeDirectoryFile_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; PVOID C5; ULONG C6; ULONG C7; BOOLEAN C8; NTSTATUS C9; }NUMERIC;
    struct NtNotifyChangeDirectoryFile_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID1; ULONG ULONG ; ULONG ULONG1; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtNotifyChangeDirectoryFile{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; PVOID Buffer; ULONG Length; ULONG CompletionFilter; BOOLEAN WatchTree; NTSTATUS result; }NAMES;
  } NtNotifyChangeDirectoryFile;
  union NtNotifyChangeDirectoryFileExMembers{
    struct NtNotifyChangeDirectoryFileEx_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; PVOID C5; ULONG C6; ULONG C7; BOOLEAN C8; DIRECTORY_NOTIFY_INFORMATION_CLASS C9; NTSTATUS C10; }NUMERIC;
    struct NtNotifyChangeDirectoryFileEx_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID1; ULONG ULONG ; ULONG ULONG1; BOOLEAN BOOLEAN ; DIRECTORY_NOTIFY_INFORMATION_CLASS DIRECTORY_NOTIFY_INFORMATION_CLASS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtNotifyChangeDirectoryFileEx{HANDLE arg1; HANDLE arg2; PIO_APC_ROUTINE arg3; PVOID arg4; IO_STATUS_BLOCK arg5; PVOID arg6; ULONG arg7; ULONG arg8; BOOLEAN arg9; DIRECTORY_NOTIFY_INFORMATION_CLASS arg10; NTSTATUS result; }NAMES;
  } NtNotifyChangeDirectoryFileEx;
  union NtNotifyChangeKeyMembers{
    struct NtNotifyChangeKey_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; ULONG C5; BOOLEAN C6; PVOID C7; ULONG C8; BOOLEAN C9; NTSTATUS C10; }NUMERIC;
    struct NtNotifyChangeKey_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; ULONG ULONG ; BOOLEAN BOOLEAN ; PVOID PVOID1; ULONG ULONG1; BOOLEAN BOOLEAN1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtNotifyChangeKey{HANDLE KeyHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; ULONG CompletionFilter; BOOLEAN WatchTree; PVOID Buffer; ULONG BufferSize; BOOLEAN Asynchronous; NTSTATUS result; }NAMES;
  } NtNotifyChangeKey;
  union NtNotifyChangeMultipleKeysMembers{
    struct NtNotifyChangeMultipleKeys_AS_NUMERIC{HANDLE C0; ULONG C1; OBJECT_ATTRIBUTES C2; HANDLE C3; PIO_APC_ROUTINE C4; PVOID C5; IO_STATUS_BLOCK C6; ULONG C7; BOOLEAN C8; PVOID C9; ULONG C10; BOOLEAN C11; NTSTATUS C12; }NUMERIC;
    struct NtNotifyChangeMultipleKeys_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; ULONG ULONG1; BOOLEAN BOOLEAN ; PVOID PVOID1; ULONG ULONG2; BOOLEAN BOOLEAN1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtNotifyChangeMultipleKeys{HANDLE MasterKeyHandle; ULONG Count; OBJECT_ATTRIBUTES SlaveObjects; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; ULONG CompletionFilter; BOOLEAN WatchTree; PVOID Buffer; ULONG BufferSize; BOOLEAN Asynchronous; NTSTATUS result; }NAMES;
  } NtNotifyChangeMultipleKeys;
  union NtNotifyChangeSessionMembers{
    struct NtNotifyChangeSession_AS_NUMERIC{HANDLE C0; ULONG C1; LARGE_INTEGER C2; IO_SESSION_EVENT C3; IO_SESSION_STATE C4; IO_SESSION_STATE C5; PVOID C6; ULONG C7; NTSTATUS C8; }NUMERIC;
    struct NtNotifyChangeSession_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; LARGE_INTEGER LARGE_INTEGER ; IO_SESSION_EVENT IO_SESSION_EVENT ; IO_SESSION_STATE IO_SESSION_STATE ; IO_SESSION_STATE IO_SESSION_STATE1; PVOID PVOID ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtNotifyChangeSession{HANDLE SessionHandle; ULONG ChangeSequenceNumber; LARGE_INTEGER ChangeTimeStamp; IO_SESSION_EVENT Event; IO_SESSION_STATE NewState; IO_SESSION_STATE PreviousState; PVOID Payload; ULONG PayloadSize; NTSTATUS result; }NAMES;
  } NtNotifyChangeSession;
  union NtOpenDirectoryObjectMembers{
    struct NtOpenDirectoryObject_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_DIRECTORY C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenDirectoryObject_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_DIRECTORY ACCESS_MASK_DIRECTORY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenDirectoryObject{PHANDLE DirectoryHandle; ACCESS_MASK_DIRECTORY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenDirectoryObject;
  union NtOpenEnlistmentMembers{
    struct NtOpenEnlistment_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_ENLISTMENT C1; HANDLE C2; GUID C3; OBJECT_ATTRIBUTES C4; NTSTATUS C5; }NUMERIC;
    struct NtOpenEnlistment_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_ENLISTMENT ACCESS_MASK_ENLISTMENT ; HANDLE HANDLE ; GUID GUID ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenEnlistment{PHANDLE EnlistmentHandle; ACCESS_MASK_ENLISTMENT DesiredAccess; HANDLE RmHandle; GUID EnlistmentGuid; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenEnlistment;
  union NtOpenEventMembers{
    struct NtOpenEvent_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_EVENT C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenEvent_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_EVENT ACCESS_MASK_EVENT ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenEvent{PHANDLE EventHandle; ACCESS_MASK_EVENT DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenEvent;
  union NtOpenEventPairMembers{
    struct NtOpenEventPair_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_EVENTPAIR C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenEventPair_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_EVENTPAIR ACCESS_MASK_EVENTPAIR ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenEventPair{PHANDLE EventPairHandle; ACCESS_MASK_EVENTPAIR DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenEventPair;
  union NtOpenFileMembers{
    struct NtOpenFile_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_FILE C1; OBJECT_ATTRIBUTES C2; IO_STATUS_BLOCK C3; FILE_SHARE_ACCESS C4; FILE_OPTIONS C5; NTSTATUS C6; }NUMERIC;
    struct NtOpenFile_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_FILE ACCESS_MASK_FILE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; FILE_SHARE_ACCESS FILE_SHARE_ACCESS ; FILE_OPTIONS FILE_OPTIONS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenFile{PHANDLE FileHandle; ACCESS_MASK_FILE DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; IO_STATUS_BLOCK IoStatusBlock; FILE_SHARE_ACCESS ShareAccess; FILE_OPTIONS OpenOptions; NTSTATUS result; }NAMES;
  } NtOpenFile;
  union NtOpenIoCompletionMembers{
    struct NtOpenIoCompletion_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_IOCOMPLETION C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenIoCompletion_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_IOCOMPLETION ACCESS_MASK_IOCOMPLETION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenIoCompletion{PHANDLE IoCompletionHandle; ACCESS_MASK_IOCOMPLETION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenIoCompletion;
  union NtOpenJobObjectMembers{
    struct NtOpenJobObject_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_JOB C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenJobObject_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_JOB ACCESS_MASK_JOB ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenJobObject{PHANDLE JobHandle; ACCESS_MASK_JOB DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenJobObject;
  union NtOpenKeyMembers{
    struct NtOpenKey_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_KEY C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenKey_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_KEY ACCESS_MASK_KEY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenKey{PHANDLE KeyHandle; ACCESS_MASK_KEY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenKey;
  union NtOpenKeyExMembers{
    struct NtOpenKeyEx_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_KEY C1; OBJECT_ATTRIBUTES C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtOpenKeyEx_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_KEY ACCESS_MASK_KEY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenKeyEx{PHANDLE KeyHandle; ACCESS_MASK_KEY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG OpenOptions; NTSTATUS result; }NAMES;
  } NtOpenKeyEx;
  union NtOpenKeyTransactedMembers{
    struct NtOpenKeyTransacted_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_KEY C1; OBJECT_ATTRIBUTES C2; HANDLE C3; NTSTATUS C4; }NUMERIC;
    struct NtOpenKeyTransacted_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_KEY ACCESS_MASK_KEY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenKeyTransacted{PHANDLE KeyHandle; ACCESS_MASK_KEY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; HANDLE TransactionHandle; NTSTATUS result; }NAMES;
  } NtOpenKeyTransacted;
  union NtOpenKeyTransactedExMembers{
    struct NtOpenKeyTransactedEx_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_KEY C1; OBJECT_ATTRIBUTES C2; ULONG C3; HANDLE C4; NTSTATUS C5; }NUMERIC;
    struct NtOpenKeyTransactedEx_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_KEY ACCESS_MASK_KEY ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenKeyTransactedEx{PHANDLE KeyHandle; ACCESS_MASK_KEY DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; ULONG OpenOptions; HANDLE TransactionHandle; NTSTATUS result; }NAMES;
  } NtOpenKeyTransactedEx;
  union NtOpenKeyedEventMembers{
    struct NtOpenKeyedEvent_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_KEYEDEVENT C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenKeyedEvent_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_KEYEDEVENT ACCESS_MASK_KEYEDEVENT ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenKeyedEvent{PHANDLE KeyedEventHandle; ACCESS_MASK_KEYEDEVENT DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenKeyedEvent;
  union NtOpenMutantMembers{
    struct NtOpenMutant_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_MUTANT C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenMutant_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_MUTANT ACCESS_MASK_MUTANT ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenMutant{PHANDLE MutantHandle; ACCESS_MASK_MUTANT DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenMutant;
  union NtOpenObjectAuditAlarmMembers{
    struct NtOpenObjectAuditAlarm_AS_NUMERIC{UNICODE_STRING C0; PVOID C1; UNICODE_STRING C2; UNICODE_STRING C3; SECURITY_DESCRIPTOR C4; HANDLE C5; ACCESS_MASK C6; ACCESS_MASK C7; PRIVILEGE_SET C8; BOOLEAN C9; BOOLEAN C10; BOOLEAN C11; NTSTATUS C12; }NUMERIC;
    struct NtOpenObjectAuditAlarm_AS_TYPES{UNICODE_STRING UNICODE_STRING ; PVOID PVOID ; UNICODE_STRING UNICODE_STRING1; UNICODE_STRING UNICODE_STRING2; SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR ; HANDLE HANDLE ; ACCESS_MASK ACCESS_MASK ; ACCESS_MASK ACCESS_MASK1; PRIVILEGE_SET PRIVILEGE_SET ; BOOLEAN BOOLEAN ; BOOLEAN BOOLEAN1; BOOLEAN BOOLEAN2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenObjectAuditAlarm{UNICODE_STRING SubsystemName; PVOID HandleId; UNICODE_STRING ObjectTypeName; UNICODE_STRING ObjectName; SECURITY_DESCRIPTOR SecurityDescriptor; HANDLE ClientToken; ACCESS_MASK DesiredAccess; ACCESS_MASK GrantedAccess; PRIVILEGE_SET Privileges; BOOLEAN ObjectCreation; BOOLEAN AccessGranted; BOOLEAN GenerateOnClose; NTSTATUS result; }NAMES;
  } NtOpenObjectAuditAlarm;
  union NtOpenPartitionMembers{
    struct NtOpenPartition_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_PARTITION C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenPartition_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_PARTITION ACCESS_MASK_PARTITION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenPartition{PHANDLE PartitionHandle; ACCESS_MASK_PARTITION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenPartition;
  union NtOpenPrivateNamespaceMembers{
    struct NtOpenPrivateNamespace_AS_NUMERIC{PHANDLE C0; ACCESS_MASK C1; OBJECT_ATTRIBUTES C2; PVOID C3; NTSTATUS C4; }NUMERIC;
    struct NtOpenPrivateNamespace_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK ACCESS_MASK ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenPrivateNamespace{PHANDLE NamespaceHandle; ACCESS_MASK DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; PVOID BoundaryDescriptor; NTSTATUS result; }NAMES;
  } NtOpenPrivateNamespace;
  union NtOpenProcessMembers{
    struct NtOpenProcess_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_PROCESS C1; OBJECT_ATTRIBUTES C2; CLIENT_ID C3; NTSTATUS C4; }NUMERIC;
    struct NtOpenProcess_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; CLIENT_ID CLIENT_ID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenProcess{PHANDLE ProcessHandle; ACCESS_MASK_PROCESS DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; CLIENT_ID ClientId; NTSTATUS result; }NAMES;
  } NtOpenProcess;
  union NtOpenProcessTokenMembers{
    struct NtOpenProcessToken_AS_NUMERIC{HANDLE C0; ACCESS_MASK_PROCESS C1; PHANDLE C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenProcessToken_AS_TYPES{HANDLE HANDLE ; ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS ; PHANDLE PHANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenProcessToken{HANDLE ProcessHandle; ACCESS_MASK_PROCESS DesiredAccess; PHANDLE TokenHandle; NTSTATUS result; }NAMES;
  } NtOpenProcessToken;
  union NtOpenProcessTokenExMembers{
    struct NtOpenProcessTokenEx_AS_NUMERIC{HANDLE C0; ACCESS_MASK_PROCESS C1; ULONG C2; PHANDLE C3; NTSTATUS C4; }NUMERIC;
    struct NtOpenProcessTokenEx_AS_TYPES{HANDLE HANDLE ; ACCESS_MASK_PROCESS ACCESS_MASK_PROCESS ; ULONG ULONG ; PHANDLE PHANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenProcessTokenEx{HANDLE ProcessHandle; ACCESS_MASK_PROCESS DesiredAccess; ULONG HandleAttributes; PHANDLE TokenHandle; NTSTATUS result; }NAMES;
  } NtOpenProcessTokenEx;
  union NtOpenRegistryTransactionMembers{
    struct NtOpenRegistryTransaction_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TRANSACTION C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenRegistryTransaction_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TRANSACTION ACCESS_MASK_TRANSACTION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenRegistryTransaction{PHANDLE TransactionHandle; ACCESS_MASK_TRANSACTION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenRegistryTransaction;
  union NtOpenResourceManagerMembers{
    struct NtOpenResourceManager_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_RESOURCEMANAGER C1; HANDLE C2; GUID C3; OBJECT_ATTRIBUTES C4; NTSTATUS C5; }NUMERIC;
    struct NtOpenResourceManager_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_RESOURCEMANAGER ACCESS_MASK_RESOURCEMANAGER ; HANDLE HANDLE ; GUID GUID ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenResourceManager{PHANDLE ResourceManagerHandle; ACCESS_MASK_RESOURCEMANAGER DesiredAccess; HANDLE TmHandle; GUID ResourceManagerGuid; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenResourceManager;
  union NtOpenSectionMembers{
    struct NtOpenSection_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_SECTION C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenSection_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_SECTION ACCESS_MASK_SECTION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenSection{PHANDLE SectionHandle; ACCESS_MASK_SECTION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenSection;
  union NtOpenSemaphoreMembers{
    struct NtOpenSemaphore_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_SEMAPHORE C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenSemaphore_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_SEMAPHORE ACCESS_MASK_SEMAPHORE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenSemaphore{PHANDLE SemaphoreHandle; ACCESS_MASK_SEMAPHORE DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenSemaphore;
  union NtOpenSessionMembers{
    struct NtOpenSession_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_SESSION C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenSession_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_SESSION ACCESS_MASK_SESSION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenSession{PHANDLE SessionHandle; ACCESS_MASK_SESSION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenSession;
  union NtOpenSymbolicLinkObjectMembers{
    struct NtOpenSymbolicLinkObject_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_LINK C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenSymbolicLinkObject_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_LINK ACCESS_MASK_LINK ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenSymbolicLinkObject{PHANDLE LinkHandle; ACCESS_MASK_LINK DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenSymbolicLinkObject;
  union NtOpenThreadMembers{
    struct NtOpenThread_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_THREAD C1; OBJECT_ATTRIBUTES C2; CLIENT_ID C3; NTSTATUS C4; }NUMERIC;
    struct NtOpenThread_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_THREAD ACCESS_MASK_THREAD ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; CLIENT_ID CLIENT_ID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenThread{PHANDLE ThreadHandle; ACCESS_MASK_THREAD DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; CLIENT_ID ClientId; NTSTATUS result; }NAMES;
  } NtOpenThread;
  union NtOpenThreadTokenMembers{
    struct NtOpenThreadToken_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_THREAD C1; BOOLEAN C2; PHANDLE C3; NTSTATUS C4; }NUMERIC;
    struct NtOpenThreadToken_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_THREAD ACCESS_MASK_THREAD ; BOOLEAN BOOLEAN ; PHANDLE PHANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenThreadToken{PHANDLE ThreadHandle; ACCESS_MASK_THREAD DesiredAccess; BOOLEAN OpenAsSelf; PHANDLE TokenHandle; NTSTATUS result; }NAMES;
  } NtOpenThreadToken;
  union NtOpenThreadTokenExMembers{
    struct NtOpenThreadTokenEx_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_THREAD C1; BOOLEAN C2; ULONG C3; PHANDLE C4; NTSTATUS C5; }NUMERIC;
    struct NtOpenThreadTokenEx_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_THREAD ACCESS_MASK_THREAD ; BOOLEAN BOOLEAN ; ULONG ULONG ; PHANDLE PHANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenThreadTokenEx{PHANDLE ThreadHandle; ACCESS_MASK_THREAD DesiredAccess; BOOLEAN OpenAsSelf; ULONG HandleAttributes; PHANDLE TokenHandle; NTSTATUS result; }NAMES;
  } NtOpenThreadTokenEx;
  union NtOpenTimerMembers{
    struct NtOpenTimer_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TIMER C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtOpenTimer_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TIMER ACCESS_MASK_TIMER ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenTimer{PHANDLE TimerHandle; ACCESS_MASK_TIMER DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; NTSTATUS result; }NAMES;
  } NtOpenTimer;
  union NtOpenTransactionMembers{
    struct NtOpenTransaction_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TRANSACTION C1; OBJECT_ATTRIBUTES C2; GUID C3; HANDLE C4; NTSTATUS C5; }NUMERIC;
    struct NtOpenTransaction_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TRANSACTION ACCESS_MASK_TRANSACTION ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; GUID GUID ; HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenTransaction{PHANDLE TransactionHandle; ACCESS_MASK_TRANSACTION DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; GUID Uow; HANDLE TmHandle; NTSTATUS result; }NAMES;
  } NtOpenTransaction;
  union NtOpenTransactionManagerMembers{
    struct NtOpenTransactionManager_AS_NUMERIC{PHANDLE C0; ACCESS_MASK_TM C1; OBJECT_ATTRIBUTES C2; UNICODE_STRING C3; GUID C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtOpenTransactionManager_AS_TYPES{PHANDLE PHANDLE ; ACCESS_MASK_TM ACCESS_MASK_TM ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; UNICODE_STRING UNICODE_STRING ; GUID GUID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtOpenTransactionManager{PHANDLE TmHandle; ACCESS_MASK_TM DesiredAccess; OBJECT_ATTRIBUTES ObjectAttributes; UNICODE_STRING LogFileName; GUID TmIdentity; ULONG OpenOptions; NTSTATUS result; }NAMES;
  } NtOpenTransactionManager;
  union NtPlugPlayControlMembers{
    struct NtPlugPlayControl_AS_NUMERIC{PLUGPLAY_CONTROL_CLASS C0; PVOID C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtPlugPlayControl_AS_TYPES{PLUGPLAY_CONTROL_CLASS PLUGPLAY_CONTROL_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPlugPlayControl{PLUGPLAY_CONTROL_CLASS PnPControlClass; PVOID PnPControlData; ULONG PnPControlDataLength; NTSTATUS result; }NAMES;
  } NtPlugPlayControl;
  union NtPowerInformationMembers{
    struct NtPowerInformation_AS_NUMERIC{POWER_INFORMATION_LEVEL C0; PVOID C1; ULONG C2; PVOID C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtPowerInformation_AS_TYPES{POWER_INFORMATION_LEVEL POWER_INFORMATION_LEVEL ; PVOID PVOID ; ULONG ULONG ; PVOID PVOID1; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPowerInformation{POWER_INFORMATION_LEVEL InformationLevel; PVOID InputBuffer; ULONG InputBufferLength; PVOID putBuffer; ULONG putBufferLength; NTSTATUS result; }NAMES;
  } NtPowerInformation;
  union NtPrePrepareCompleteMembers{
    struct NtPrePrepareComplete_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtPrePrepareComplete_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPrePrepareComplete{HANDLE EnlistmentHandle; LARGE_INTEGER TmVirtualClock; NTSTATUS result; }NAMES;
  } NtPrePrepareComplete;
  union NtPrePrepareEnlistmentMembers{
    struct NtPrePrepareEnlistment_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtPrePrepareEnlistment_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPrePrepareEnlistment{HANDLE EnlistmentHandle; LARGE_INTEGER TmVirtualClock; NTSTATUS result; }NAMES;
  } NtPrePrepareEnlistment;
  union NtPrepareCompleteMembers{
    struct NtPrepareComplete_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtPrepareComplete_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPrepareComplete{HANDLE EnlistmentHandle; LARGE_INTEGER TmVirtualClock; NTSTATUS result; }NAMES;
  } NtPrepareComplete;
  union NtPrepareEnlistmentMembers{
    struct NtPrepareEnlistment_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtPrepareEnlistment_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPrepareEnlistment{HANDLE EnlistmentHandle; LARGE_INTEGER TmVirtualClock; NTSTATUS result; }NAMES;
  } NtPrepareEnlistment;
  union NtPrivilegeCheckMembers{
    struct NtPrivilegeCheck_AS_NUMERIC{HANDLE C0; PRIVILEGE_SET C1; BOOLEAN C2; NTSTATUS C3; }NUMERIC;
    struct NtPrivilegeCheck_AS_TYPES{HANDLE HANDLE ; PRIVILEGE_SET PRIVILEGE_SET ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPrivilegeCheck{HANDLE ClientToken; PRIVILEGE_SET RequiredPrivileges; BOOLEAN Result; NTSTATUS result; }NAMES;
  } NtPrivilegeCheck;
  union NtPropagationCompleteMembers{
    struct NtPropagationComplete_AS_NUMERIC{HANDLE C0; ULONG C1; ULONG C2; PVOID C3; NTSTATUS C4; }NUMERIC;
    struct NtPropagationComplete_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; ULONG ULONG1; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPropagationComplete{HANDLE ResourceManagerHandle; ULONG RequestCookie; ULONG BufferLength; PVOID Buffer; NTSTATUS result; }NAMES;
  } NtPropagationComplete;
  union NtPropagationFailedMembers{
    struct NtPropagationFailed_AS_NUMERIC{HANDLE C0; ULONG C1; NTSTATUS C2; NTSTATUS C3; }NUMERIC;
    struct NtPropagationFailed_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; NTSTATUS NTSTATUS ; NTSTATUS NTSTATUS1; }TYPES;
    struct NtPropagationFailed{HANDLE ResourceManagerHandle; ULONG RequestCookie; NTSTATUS PropStatus; NTSTATUS result; }NAMES;
  } NtPropagationFailed;
  union NtProtectVirtualMemoryMembers{
    struct NtProtectVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; SIZE_T C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtProtectVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtProtectVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; SIZE_T RegionSize; ULONG NewProtect; ULONG OldProtect; NTSTATUS result; }NAMES;
  } NtProtectVirtualMemory;
  union NtPulseEventMembers{
    struct NtPulseEvent_AS_NUMERIC{HANDLE C0; LONG C1; NTSTATUS C2; }NUMERIC;
    struct NtPulseEvent_AS_TYPES{HANDLE HANDLE ; LONG LONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtPulseEvent{HANDLE EventHandle; LONG PreviousState; NTSTATUS result; }NAMES;
  } NtPulseEvent;
  union NtQueryAttributesFileMembers{
    struct NtQueryAttributesFile_AS_NUMERIC{OBJECT_ATTRIBUTES C0; FILE_BASIC_INFORMATION C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryAttributesFile_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; FILE_BASIC_INFORMATION FILE_BASIC_INFORMATION ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryAttributesFile{OBJECT_ATTRIBUTES ObjectAttributes; FILE_BASIC_INFORMATION FileInformation; NTSTATUS result; }NAMES;
  } NtQueryAttributesFile;
  union NtQueryBootEntryOrderMembers{
    struct NtQueryBootEntryOrder_AS_NUMERIC{ULONG C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryBootEntryOrder_AS_TYPES{ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryBootEntryOrder{ULONG Ids; ULONG Count; NTSTATUS result; }NAMES;
  } NtQueryBootEntryOrder;
  union NtQueryBootOptionsMembers{
    struct NtQueryBootOptions_AS_NUMERIC{BOOT_OPTIONS C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryBootOptions_AS_TYPES{BOOT_OPTIONS BOOT_OPTIONS ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryBootOptions{BOOT_OPTIONS BootOptions; ULONG BootOptionsLength; NTSTATUS result; }NAMES;
  } NtQueryBootOptions;
  union NtQueryDebugFilterStateMembers{
    struct NtQueryDebugFilterState_AS_NUMERIC{ULONG C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryDebugFilterState_AS_TYPES{ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryDebugFilterState{ULONG ComponentId; ULONG Level; NTSTATUS result; }NAMES;
  } NtQueryDebugFilterState;
  union NtQueryDefaultLocaleMembers{
    struct NtQueryDefaultLocale_AS_NUMERIC{BOOLEAN C0; LCID C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryDefaultLocale_AS_TYPES{BOOLEAN BOOLEAN ; LCID LCID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryDefaultLocale{BOOLEAN UserProfile; LCID DefaultLocaleId; NTSTATUS result; }NAMES;
  } NtQueryDefaultLocale;
  union NtQueryDefaultUILanguageMembers{
    struct NtQueryDefaultUILanguage_AS_NUMERIC{LANGID C0; NTSTATUS C1; }NUMERIC;
    struct NtQueryDefaultUILanguage_AS_TYPES{LANGID LANGID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryDefaultUILanguage{LANGID arg1; NTSTATUS result; }NAMES;
  } NtQueryDefaultUILanguage;
  union NtQueryDirectoryFileMembers{
    struct NtQueryDirectoryFile_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; PVOID C5; ULONG C6; FILE_INFORMATION_CLASS C7; BOOLEAN C8; UNICODE_STRING C9; BOOLEAN C10; NTSTATUS C11; }NUMERIC;
    struct NtQueryDirectoryFile_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID1; ULONG ULONG ; FILE_INFORMATION_CLASS FILE_INFORMATION_CLASS ; BOOLEAN BOOLEAN ; UNICODE_STRING UNICODE_STRING ; BOOLEAN BOOLEAN1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryDirectoryFile{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; PVOID FileInformation; ULONG Length; FILE_INFORMATION_CLASS FileInformationClass; BOOLEAN ReturnSingleEntry; UNICODE_STRING FileName; BOOLEAN RestartScan; NTSTATUS result; }NAMES;
  } NtQueryDirectoryFile;
  union NtQueryDirectoryFileExMembers{
    struct NtQueryDirectoryFileEx_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; PVOID C5; ULONG C6; FILE_INFORMATION_CLASS C7; ULONG C8; UNICODE_STRING C9; NTSTATUS C10; }NUMERIC;
    struct NtQueryDirectoryFileEx_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID1; ULONG ULONG ; FILE_INFORMATION_CLASS FILE_INFORMATION_CLASS ; ULONG ULONG1; UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryDirectoryFileEx{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; PVOID FileInformation; ULONG Length; FILE_INFORMATION_CLASS FileInformationClass; ULONG QueryFlags; UNICODE_STRING FileName; NTSTATUS result; }NAMES;
  } NtQueryDirectoryFileEx;
  union NtQueryDirectoryObjectMembers{
    struct NtQueryDirectoryObject_AS_NUMERIC{HANDLE C0; PVOID C1; ULONG C2; BOOLEAN C3; BOOLEAN C4; ULONG C5; ULONG C6; NTSTATUS C7; }NUMERIC;
    struct NtQueryDirectoryObject_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; ULONG ULONG ; BOOLEAN BOOLEAN ; BOOLEAN BOOLEAN1; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryDirectoryObject{HANDLE DirectoryHandle; PVOID Buffer; ULONG Length; BOOLEAN ReturnSingleEntry; BOOLEAN RestartScan; ULONG Context; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryDirectoryObject;
  union NtQueryDriverEntryOrderMembers{
    struct NtQueryDriverEntryOrder_AS_NUMERIC{ULONG C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryDriverEntryOrder_AS_TYPES{ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryDriverEntryOrder{ULONG Ids; ULONG Count; NTSTATUS result; }NAMES;
  } NtQueryDriverEntryOrder;
  union NtQueryEaFileMembers{
    struct NtQueryEaFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; PVOID C2; ULONG C3; BOOLEAN C4; PVOID C5; ULONG C6; ULONG C7; BOOLEAN C8; NTSTATUS C9; }NUMERIC;
    struct NtQueryEaFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID ; ULONG ULONG ; BOOLEAN BOOLEAN ; PVOID PVOID1; ULONG ULONG1; ULONG ULONG2; BOOLEAN BOOLEAN1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryEaFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; PVOID Buffer; ULONG Length; BOOLEAN ReturnSingleEntry; PVOID EaList; ULONG EaListLength; ULONG EaIndex; BOOLEAN RestartScan; NTSTATUS result; }NAMES;
  } NtQueryEaFile;
  union NtQueryEventMembers{
    struct NtQueryEvent_AS_NUMERIC{HANDLE C0; EVENT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryEvent_AS_TYPES{HANDLE HANDLE ; EVENT_INFORMATION_CLASS EVENT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryEvent{HANDLE EventHandle; EVENT_INFORMATION_CLASS EventInformationClass; PVOID EventInformation; ULONG EventInformationLength; ULONG arg1; NTSTATUS result; }NAMES;
  } NtQueryEvent;
  union NtQueryFullAttributesFileMembers{
    struct NtQueryFullAttributesFile_AS_NUMERIC{OBJECT_ATTRIBUTES C0; FILE_NETWORK_OPEN_INFORMATION C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryFullAttributesFile_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; FILE_NETWORK_OPEN_INFORMATION FILE_NETWORK_OPEN_INFORMATION ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryFullAttributesFile{OBJECT_ATTRIBUTES ObjectAttributes; FILE_NETWORK_OPEN_INFORMATION FileInformation; NTSTATUS result; }NAMES;
  } NtQueryFullAttributesFile;
  union NtQueryInformationAtomMembers{
    struct NtQueryInformationAtom_AS_NUMERIC{RTL_ATOM C0; ATOM_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationAtom_AS_TYPES{RTL_ATOM RTL_ATOM ; ATOM_INFORMATION_CLASS ATOM_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationAtom{RTL_ATOM Atom; ATOM_INFORMATION_CLASS AtomInformationClass; PVOID AtomInformation; ULONG AtomInformationLength; ULONG arg1; NTSTATUS result; }NAMES;
  } NtQueryInformationAtom;
  union NtQueryInformationByNameMembers{
    struct NtQueryInformationByName_AS_NUMERIC{OBJECT_ATTRIBUTES C0; IO_STATUS_BLOCK C1; PVOID C2; ULONG C3; FILE_INFORMATION_CLASS C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationByName_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID ; ULONG ULONG ; FILE_INFORMATION_CLASS FILE_INFORMATION_CLASS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationByName{OBJECT_ATTRIBUTES ObjectAttributes; IO_STATUS_BLOCK IoStatusBlock; PVOID FileInformation; ULONG Length; FILE_INFORMATION_CLASS FileInformationClass; NTSTATUS result; }NAMES;
  } NtQueryInformationByName;
  union NtQueryInformationEnlistmentMembers{
    struct NtQueryInformationEnlistment_AS_NUMERIC{HANDLE C0; ENLISTMENT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationEnlistment_AS_TYPES{HANDLE HANDLE ; ENLISTMENT_INFORMATION_CLASS ENLISTMENT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationEnlistment{HANDLE EnlistmentHandle; ENLISTMENT_INFORMATION_CLASS EnlistmentInformationClass; PVOID EnlistmentInformation; ULONG EnlistmentInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationEnlistment;
  union NtQueryInformationFileMembers{
    struct NtQueryInformationFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; PVOID C2; ULONG C3; FILE_INFORMATION_CLASS C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID ; ULONG ULONG ; FILE_INFORMATION_CLASS FILE_INFORMATION_CLASS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; PVOID FileInformation; ULONG Length; FILE_INFORMATION_CLASS FileInformationClass; NTSTATUS result; }NAMES;
  } NtQueryInformationFile;
  union NtQueryInformationJobObjectMembers{
    struct NtQueryInformationJobObject_AS_NUMERIC{HANDLE C0; JOBOBJECTINFOCLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationJobObject_AS_TYPES{HANDLE HANDLE ; JOBOBJECTINFOCLASS JOBOBJECTINFOCLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationJobObject{HANDLE JobHandle; JOBOBJECTINFOCLASS JobObjectInformationClass; PVOID JobObjectInformation; ULONG JobObjectInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationJobObject;
  union NtQueryInformationPortMembers{
    struct NtQueryInformationPort_AS_NUMERIC{HANDLE C0; PORT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationPort_AS_TYPES{HANDLE HANDLE ; PORT_INFORMATION_CLASS PORT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationPort{HANDLE PortHandle; PORT_INFORMATION_CLASS PortInformationClass; PVOID PortInformation; ULONG PortInformationLength; ULONG arg1; NTSTATUS result; }NAMES;
  } NtQueryInformationPort;
  union NtQueryInformationProcessMembers{
    struct NtQueryInformationProcess_AS_NUMERIC{HANDLE C0; PROCESSINFOCLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationProcess_AS_TYPES{HANDLE HANDLE ; PROCESSINFOCLASS PROCESSINFOCLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationProcess{HANDLE ProcessHandle; PROCESSINFOCLASS ProcessInformationClass; PVOID ProcessInformation; ULONG ProcessInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationProcess;
  union NtQueryInformationResourceManagerMembers{
    struct NtQueryInformationResourceManager_AS_NUMERIC{HANDLE C0; RESOURCEMANAGER_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationResourceManager_AS_TYPES{HANDLE HANDLE ; RESOURCEMANAGER_INFORMATION_CLASS RESOURCEMANAGER_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationResourceManager{HANDLE ResourceManagerHandle; RESOURCEMANAGER_INFORMATION_CLASS ResourceManagerInformationClass; PVOID ResourceManagerInformation; ULONG ResourceManagerInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationResourceManager;
  union NtQueryInformationThreadMembers{
    struct NtQueryInformationThread_AS_NUMERIC{HANDLE C0; THREADINFOCLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationThread_AS_TYPES{HANDLE HANDLE ; THREADINFOCLASS THREADINFOCLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationThread{HANDLE ThreadHandle; THREADINFOCLASS ThreadInformationClass; PVOID ThreadInformation; ULONG ThreadInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationThread;
  union NtQueryInformationTokenMembers{
    struct NtQueryInformationToken_AS_NUMERIC{HANDLE C0; TOKEN_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationToken_AS_TYPES{HANDLE HANDLE ; TOKEN_INFORMATION_CLASS TOKEN_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationToken{HANDLE TokenHandle; TOKEN_INFORMATION_CLASS TokenInformationClass; PVOID TokenInformation; ULONG TokenInformationLength ; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationToken;
  union NtQueryInformationTransactionMembers{
    struct NtQueryInformationTransaction_AS_NUMERIC{HANDLE C0; TRANSACTION_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationTransaction_AS_TYPES{HANDLE HANDLE ; TRANSACTION_INFORMATION_CLASS TRANSACTION_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationTransaction{HANDLE TransactionHandle; TRANSACTION_INFORMATION_CLASS TransactionInformationClass; PVOID TransactionInformation; ULONG TransactionInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationTransaction;
  union NtQueryInformationTransactionManagerMembers{
    struct NtQueryInformationTransactionManager_AS_NUMERIC{HANDLE C0; TRANSACTIONMANAGER_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationTransactionManager_AS_TYPES{HANDLE HANDLE ; TRANSACTIONMANAGER_INFORMATION_CLASS TRANSACTIONMANAGER_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationTransactionManager{HANDLE TransactionManagerHandle; TRANSACTIONMANAGER_INFORMATION_CLASS TransactionManagerInformationClass; PVOID TransactionManagerInformation; ULONG TransactionManagerInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationTransactionManager;
  union NtQueryInformationWorkerFactoryMembers{
    struct NtQueryInformationWorkerFactory_AS_NUMERIC{HANDLE C0; WORKERFACTORYINFOCLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryInformationWorkerFactory_AS_TYPES{HANDLE HANDLE ; WORKERFACTORYINFOCLASS WORKERFACTORYINFOCLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInformationWorkerFactory{HANDLE WorkerFactoryHandle; WORKERFACTORYINFOCLASS WorkerFactoryInformationClass; PVOID WorkerFactoryInformation; ULONG WorkerFactoryInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryInformationWorkerFactory;
  union NtQueryInstallUILanguageMembers{
    struct NtQueryInstallUILanguage_AS_NUMERIC{LANGID C0; NTSTATUS C1; }NUMERIC;
    struct NtQueryInstallUILanguage_AS_TYPES{LANGID LANGID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryInstallUILanguage{LANGID InstallUILanguageId; NTSTATUS result; }NAMES;
  } NtQueryInstallUILanguage;
  union NtQueryIntervalProfileMembers{
    struct NtQueryIntervalProfile_AS_NUMERIC{KPROFILE_SOURCE C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryIntervalProfile_AS_TYPES{KPROFILE_SOURCE KPROFILE_SOURCE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryIntervalProfile{KPROFILE_SOURCE ProfileSource; ULONG Interval; NTSTATUS result; }NAMES;
  } NtQueryIntervalProfile;
  union NtQueryIoCompletionMembers{
    struct NtQueryIoCompletion_AS_NUMERIC{HANDLE C0; IO_COMPLETION_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtQueryIoCompletion_AS_TYPES{HANDLE HANDLE ; IO_COMPLETION_INFORMATION_CLASS IO_COMPLETION_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryIoCompletion{HANDLE IoCompletionHandle; IO_COMPLETION_INFORMATION_CLASS IoCompletionInformationClass; PVOID IoCompletionInformation; ULONG IoCompletionInformationLength; NTSTATUS result; }NAMES;
  } NtQueryIoCompletion;
  union NtQueryKeyMembers{
    struct NtQueryKey_AS_NUMERIC{HANDLE C0; KEY_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryKey_AS_TYPES{HANDLE HANDLE ; KEY_INFORMATION_CLASS KEY_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryKey{HANDLE KeyHandle; KEY_INFORMATION_CLASS KeyInformationClass; PVOID KeyInformation; ULONG Length; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryKey;
  union NtQueryLicenseValueMembers{
    struct NtQueryLicenseValue_AS_NUMERIC{UNICODE_STRING C0; ULONG C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryLicenseValue_AS_TYPES{UNICODE_STRING UNICODE_STRING ; ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryLicenseValue{UNICODE_STRING ValueName; ULONG Type; PVOID Data; ULONG DataSize; ULONG ResultDataSize; NTSTATUS result; }NAMES;
  } NtQueryLicenseValue;
  union NtQueryMultipleValueKeyMembers{
    struct NtQueryMultipleValueKey_AS_NUMERIC{HANDLE C0; KEY_VALUE_ENTRY C1; ULONG C2; PVOID C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtQueryMultipleValueKey_AS_TYPES{HANDLE HANDLE ; KEY_VALUE_ENTRY KEY_VALUE_ENTRY ; ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryMultipleValueKey{HANDLE KeyHandle; KEY_VALUE_ENTRY ValueEntries; ULONG EntryCount; PVOID ValueBuffer; ULONG BufferLength; ULONG RequiredBufferLength; NTSTATUS result; }NAMES;
  } NtQueryMultipleValueKey;
  union NtQueryMutantMembers{
    struct NtQueryMutant_AS_NUMERIC{HANDLE C0; MUTANT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryMutant_AS_TYPES{HANDLE HANDLE ; MUTANT_INFORMATION_CLASS MUTANT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryMutant{HANDLE MutantHandle; MUTANT_INFORMATION_CLASS MutantInformationClass; PVOID MutantInformation; ULONG Length; ULONG arg1; NTSTATUS result; }NAMES;
  } NtQueryMutant;
  union NtQueryObjectMembers{
    struct NtQueryObject_AS_NUMERIC{HANDLE C0; OBJECT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryObject_AS_TYPES{HANDLE HANDLE ; OBJECT_INFORMATION_CLASS OBJECT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryObject{HANDLE Handle; OBJECT_INFORMATION_CLASS ObjectInformationClass; PVOID ObjectInformation; ULONG ObjectInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQueryObject;
  union NtQueryOpenSubKeysMembers{
    struct NtQueryOpenSubKeys_AS_NUMERIC{OBJECT_ATTRIBUTES C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryOpenSubKeys_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryOpenSubKeys{OBJECT_ATTRIBUTES TargetKey; ULONG HandleCount; NTSTATUS result; }NAMES;
  } NtQueryOpenSubKeys;
  union NtQueryOpenSubKeysExMembers{
    struct NtQueryOpenSubKeysEx_AS_NUMERIC{OBJECT_ATTRIBUTES C0; ULONG C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtQueryOpenSubKeysEx_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryOpenSubKeysEx{OBJECT_ATTRIBUTES TargetKey; ULONG BufferLength; PVOID Buffer; ULONG RequiredSize; NTSTATUS result; }NAMES;
  } NtQueryOpenSubKeysEx;
  union NtQueryPerformanceCounterMembers{
    struct NtQueryPerformanceCounter_AS_NUMERIC{LARGE_INTEGER C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtQueryPerformanceCounter_AS_TYPES{LARGE_INTEGER LARGE_INTEGER ; LARGE_INTEGER LARGE_INTEGER1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryPerformanceCounter{LARGE_INTEGER PerformanceCounter; LARGE_INTEGER PerformanceFrequency; NTSTATUS result; }NAMES;
  } NtQueryPerformanceCounter;
  union NtQueryPortInformationProcessMembers{
    struct NtQueryPortInformationProcess_AS_NUMERIC{NTSTATUS C0; }NUMERIC;
    struct NtQueryPortInformationProcess_AS_TYPES{NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryPortInformationProcess{NTSTATUS result; }NAMES;
  } NtQueryPortInformationProcess;
  union NtQueryQuotaInformationFileMembers{
    struct NtQueryQuotaInformationFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; PVOID C2; ULONG C3; BOOLEAN C4; PVOID C5; ULONG C6; SID C7; BOOLEAN C8; NTSTATUS C9; }NUMERIC;
    struct NtQueryQuotaInformationFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID ; ULONG ULONG ; BOOLEAN BOOLEAN ; PVOID PVOID1; ULONG ULONG1; SID SID ; BOOLEAN BOOLEAN1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryQuotaInformationFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; PVOID Buffer; ULONG Length; BOOLEAN ReturnSingleEntry; PVOID SidList; ULONG SidListLength; SID StartSid; BOOLEAN RestartScan; NTSTATUS result; }NAMES;
  } NtQueryQuotaInformationFile;
  union NtQuerySectionMembers{
    struct NtQuerySection_AS_NUMERIC{HANDLE C0; SECTION_INFORMATION_CLASS C1; PVOID C2; SIZE_T C3; SIZE_T C4; NTSTATUS C5; }NUMERIC;
    struct NtQuerySection_AS_TYPES{HANDLE HANDLE ; SECTION_INFORMATION_CLASS SECTION_INFORMATION_CLASS ; PVOID PVOID ; SIZE_T SIZE_T ; SIZE_T SIZE_T1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySection{HANDLE SectionHandle; SECTION_INFORMATION_CLASS SectionInformationClass; PVOID SectionInformation; SIZE_T SectionInformationLength; SIZE_T ReturnLength; NTSTATUS result; }NAMES;
  } NtQuerySection;
  union NtQuerySecurityAttributesTokenMembers{
    struct NtQuerySecurityAttributesToken_AS_NUMERIC{HANDLE C0; UNICODE_STRING C1; ULONG C2; PVOID C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtQuerySecurityAttributesToken_AS_TYPES{HANDLE HANDLE ; UNICODE_STRING UNICODE_STRING ; ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySecurityAttributesToken{HANDLE TokenHandle; UNICODE_STRING Attributes; ULONG NumberOfAttributes; PVOID Buffer; ULONG Length; ULONG ReturnLength; NTSTATUS result; }NAMES;
  } NtQuerySecurityAttributesToken;
  union NtQuerySecurityObjectMembers{
    struct NtQuerySecurityObject_AS_NUMERIC{HANDLE C0; SECURITY_INFORMATION C1; SECURITY_DESCRIPTOR C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQuerySecurityObject_AS_TYPES{HANDLE HANDLE ; SECURITY_INFORMATION SECURITY_INFORMATION ; SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySecurityObject{HANDLE Handle; SECURITY_INFORMATION SecurityInformation; SECURITY_DESCRIPTOR SecurityDescriptor; ULONG Length; ULONG LengthNeeded; NTSTATUS result; }NAMES;
  } NtQuerySecurityObject;
  union NtQuerySecurityPolicyMembers{
    struct NtQuerySecurityPolicy_AS_NUMERIC{UNICODE_STRING C0; UNICODE_STRING C1; UNICODE_STRING C2; SECURE_SETTING_VALUE_TYPE C3; PVOID C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtQuerySecurityPolicy_AS_TYPES{UNICODE_STRING UNICODE_STRING ; UNICODE_STRING UNICODE_STRING1; UNICODE_STRING UNICODE_STRING2; SECURE_SETTING_VALUE_TYPE SECURE_SETTING_VALUE_TYPE ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySecurityPolicy{UNICODE_STRING Provider; UNICODE_STRING Key; UNICODE_STRING ValueName; SECURE_SETTING_VALUE_TYPE ValueType; PVOID Value; ULONG ValueSize; NTSTATUS result; }NAMES;
  } NtQuerySecurityPolicy;
  union NtQuerySemaphoreMembers{
    struct NtQuerySemaphore_AS_NUMERIC{HANDLE C0; SEMAPHORE_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQuerySemaphore_AS_TYPES{HANDLE HANDLE ; SEMAPHORE_INFORMATION_CLASS SEMAPHORE_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySemaphore{HANDLE SemaphoreHandle; SEMAPHORE_INFORMATION_CLASS SemaphoreInformationClass; PVOID SemaphoreInformation; ULONG Length; ULONG arg1; NTSTATUS result; }NAMES;
  } NtQuerySemaphore;
  union NtQuerySymbolicLinkObjectMembers{
    struct NtQuerySymbolicLinkObject_AS_NUMERIC{HANDLE C0; UNICODE_STRING C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtQuerySymbolicLinkObject_AS_TYPES{HANDLE HANDLE ; UNICODE_STRING UNICODE_STRING ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySymbolicLinkObject{HANDLE LinkHandle; UNICODE_STRING LinkTarget; ULONG ReturnedLength; NTSTATUS result; }NAMES;
  } NtQuerySymbolicLinkObject;
  union NtQuerySystemEnvironmentValueMembers{
    struct NtQuerySystemEnvironmentValue_AS_NUMERIC{UNICODE_STRING C0; WSTR C1; USHORT C2; USHORT C3; NTSTATUS C4; }NUMERIC;
    struct NtQuerySystemEnvironmentValue_AS_TYPES{UNICODE_STRING UNICODE_STRING ; WSTR WSTR ; USHORT USHORT ; USHORT USHORT1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySystemEnvironmentValue{UNICODE_STRING VariableName; WSTR VariableValue; USHORT ValueLength; USHORT ReturnLength; NTSTATUS result; }NAMES;
  } NtQuerySystemEnvironmentValue;
  union NtQuerySystemEnvironmentValueExMembers{
    struct NtQuerySystemEnvironmentValueEx_AS_NUMERIC{UNICODE_STRING C0; GUID C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQuerySystemEnvironmentValueEx_AS_TYPES{UNICODE_STRING UNICODE_STRING ; GUID GUID ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySystemEnvironmentValueEx{UNICODE_STRING VariableName; GUID VendorGuid; PVOID Value; ULONG ValueLength; ULONG Attributes; NTSTATUS result; }NAMES;
  } NtQuerySystemEnvironmentValueEx;
  union NtQuerySystemInformationMembers{
    struct NtQuerySystemInformation_AS_NUMERIC{SYSTEM_INFORMATION_CLASS C0; PVOID C1; ULONG C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtQuerySystemInformation_AS_TYPES{SYSTEM_INFORMATION_CLASS SYSTEM_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySystemInformation{SYSTEM_INFORMATION_CLASS SystemInformationClass; PVOID SystemInformation; ULONG SystemInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQuerySystemInformation;
  union NtQuerySystemInformationExMembers{
    struct NtQuerySystemInformationEx_AS_NUMERIC{SYSTEM_INFORMATION_CLASS C0; PVOID C1; ULONG C2; PVOID C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtQuerySystemInformationEx_AS_TYPES{SYSTEM_INFORMATION_CLASS SYSTEM_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; PVOID PVOID1; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySystemInformationEx{SYSTEM_INFORMATION_CLASS SystemInformationClass; PVOID InputBuffer; ULONG InputBufferLength; PVOID SystemInformation; ULONG SystemInformationLength; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtQuerySystemInformationEx;
  union NtQuerySystemTimeMembers{
    struct NtQuerySystemTime_AS_NUMERIC{LARGE_INTEGER C0; NTSTATUS C1; }NUMERIC;
    struct NtQuerySystemTime_AS_TYPES{LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQuerySystemTime{LARGE_INTEGER SystemTime; NTSTATUS result; }NAMES;
  } NtQuerySystemTime;
  union NtQueryTimerMembers{
    struct NtQueryTimer_AS_NUMERIC{HANDLE C0; TIMER_INFORMATION_CLASS C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryTimer_AS_TYPES{HANDLE HANDLE ; TIMER_INFORMATION_CLASS TIMER_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryTimer{HANDLE TimerHandle; TIMER_INFORMATION_CLASS TimerInformationClass; PVOID TimerInformation; ULONG Length; ULONG arg1; NTSTATUS result; }NAMES;
  } NtQueryTimer;
  union NtQueryTimerResolutionMembers{
    struct NtQueryTimerResolution_AS_NUMERIC{ULONG C0; ULONG C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtQueryTimerResolution_AS_TYPES{ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryTimerResolution{ULONG MaximumTime; ULONG MinimumTime; ULONG CurrentTime; NTSTATUS result; }NAMES;
  } NtQueryTimerResolution;
  union NtQueryValueKeyMembers{
    struct NtQueryValueKey_AS_NUMERIC{HANDLE C0; UNICODE_STRING C1; KEY_VALUE_INFORMATION_CLASS C2; PVOID C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtQueryValueKey_AS_TYPES{HANDLE HANDLE ; UNICODE_STRING UNICODE_STRING ; KEY_VALUE_INFORMATION_CLASS KEY_VALUE_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryValueKey{HANDLE KeyHandle; UNICODE_STRING ValueName; KEY_VALUE_INFORMATION_CLASS KeyValueInformationClass; PVOID KeyValueInformation; ULONG Length; ULONG ResultLength; NTSTATUS result; }NAMES;
  } NtQueryValueKey;
  union NtQueryVirtualMemoryMembers{
    struct NtQueryVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; MEMORY_INFORMATION_CLASS C2; PVOID C3; SIZE_T C4; SIZE_T C5; NTSTATUS C6; }NUMERIC;
    struct NtQueryVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; MEMORY_INFORMATION_CLASS MEMORY_INFORMATION_CLASS ; PVOID PVOID1; SIZE_T SIZE_T ; SIZE_T SIZE_T1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; MEMORY_INFORMATION_CLASS MemoryInformationClass; PVOID MemoryInformation; SIZE_T MemoryInformationLength; SIZE_T ReturnLength; NTSTATUS result; }NAMES;
  } NtQueryVirtualMemory;
  union NtQueryVolumeInformationFileMembers{
    struct NtQueryVolumeInformationFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; PVOID C2; ULONG C3; FS_INFORMATION_CLASS C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryVolumeInformationFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID ; ULONG ULONG ; FS_INFORMATION_CLASS FS_INFORMATION_CLASS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryVolumeInformationFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; PVOID FsInformation; ULONG Length; FS_INFORMATION_CLASS FsInformationClass; NTSTATUS result; }NAMES;
  } NtQueryVolumeInformationFile;
  union NtQueryWnfStateDataMembers{
    struct NtQueryWnfStateData_AS_NUMERIC{WNF_STATE_NAME C0; WNF_TYPE_ID C1; PVOID C2; WNF_CHANGE_STAMP C3; PVOID C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtQueryWnfStateData_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; WNF_TYPE_ID WNF_TYPE_ID ; PVOID PVOID ; WNF_CHANGE_STAMP WNF_CHANGE_STAMP ; PVOID PVOID1; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryWnfStateData{WNF_STATE_NAME StateName; WNF_TYPE_ID TypeId; PVOID ExplicitScope; WNF_CHANGE_STAMP ChangeStamp; PVOID Buffer; ULONG BufferSize; NTSTATUS result; }NAMES;
  } NtQueryWnfStateData;
  union NtQueryWnfStateNameInformationMembers{
    struct NtQueryWnfStateNameInformation_AS_NUMERIC{WNF_STATE_NAME C0; WNF_STATE_NAME_INFORMATION C1; PVOID C2; PVOID C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtQueryWnfStateNameInformation_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; WNF_STATE_NAME_INFORMATION WNF_STATE_NAME_INFORMATION ; PVOID PVOID ; PVOID PVOID1; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueryWnfStateNameInformation{WNF_STATE_NAME StateName; WNF_STATE_NAME_INFORMATION NameInfoClass; PVOID ExplicitScope; PVOID InfoBuffer; ULONG InfoBufferSize; NTSTATUS result; }NAMES;
  } NtQueryWnfStateNameInformation;
  union NtQueueApcThreadMembers{
    struct NtQueueApcThread_AS_NUMERIC{HANDLE C0; PPS_APC_ROUTINE C1; PVOID C2; PVOID C3; PVOID C4; NTSTATUS C5; }NUMERIC;
    struct NtQueueApcThread_AS_TYPES{HANDLE HANDLE ; PPS_APC_ROUTINE PPS_APC_ROUTINE ; PVOID PVOID ; PVOID PVOID1; PVOID PVOID2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueueApcThread{HANDLE ThreadHandle; PPS_APC_ROUTINE ApcRoutine; PVOID NormalContext; PVOID SystemArgument; PVOID arg1; NTSTATUS result; }NAMES;
  } NtQueueApcThread;
  union NtQueueApcThreadExMembers{
    struct NtQueueApcThreadEx_AS_NUMERIC{HANDLE C0; HANDLE C1; PPS_APC_ROUTINE C2; PVOID C3; PVOID C4; PVOID C5; NTSTATUS C6; }NUMERIC;
    struct NtQueueApcThreadEx_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PPS_APC_ROUTINE PPS_APC_ROUTINE ; PVOID PVOID ; PVOID PVOID1; PVOID PVOID2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtQueueApcThreadEx{HANDLE ThreadHandle; HANDLE UserApcReserveHandle; PPS_APC_ROUTINE ApcRoutine; PVOID ApcArgument1; PVOID ApcArgument2; PVOID arg1; NTSTATUS result; }NAMES;
  } NtQueueApcThreadEx;
  union NtRaiseExceptionMembers{
    struct NtRaiseException_AS_NUMERIC{EXCEPTION_RECORD C0; CONTEXT C1; BOOLEAN C2; NTSTATUS C3; }NUMERIC;
    struct NtRaiseException_AS_TYPES{EXCEPTION_RECORD EXCEPTION_RECORD ; CONTEXT CONTEXT ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtRaiseException{EXCEPTION_RECORD ExceptionRecord; CONTEXT ContextRecord; BOOLEAN FirstChance; NTSTATUS result; }NAMES;
  } NtRaiseException;
  union NtRaiseHardErrorMembers{
    struct NtRaiseHardError_AS_NUMERIC{NTSTATUS C0; ULONG C1; ULONG C2; ULONG C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtRaiseHardError_AS_TYPES{NTSTATUS NTSTATUS ; ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; ULONG ULONG3; ULONG ULONG4; NTSTATUS NTSTATUS1; }TYPES;
    struct NtRaiseHardError{NTSTATUS ErrorStatus; ULONG NumberOfParameters; ULONG UnicodeStringParameterMask; ULONG Parameters; ULONG ValidResponseOptions; ULONG Response; NTSTATUS result; }NAMES;
  } NtRaiseHardError;
  union NtReadFileMembers{
    struct NtReadFile_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; OUTBUF C5; OUTLEN C6; LARGE_INTEGER C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtReadFile_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; OUTBUF OUTBUF ; OUTLEN OUTLEN ; LARGE_INTEGER LARGE_INTEGER ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReadFile{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; OUTBUF Buffer; OUTLEN Length; LARGE_INTEGER ByteOffset; ULONG Key; NTSTATUS result; }NAMES;
  } NtReadFile;
  union NtReadFileScatterMembers{
    struct NtReadFileScatter_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; FILE_SEGMENT_ELEMENT C5; ULONG C6; LARGE_INTEGER C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtReadFileScatter_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; FILE_SEGMENT_ELEMENT FILE_SEGMENT_ELEMENT ; ULONG ULONG ; LARGE_INTEGER LARGE_INTEGER ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReadFileScatter{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; FILE_SEGMENT_ELEMENT SegmentArray; ULONG Length; LARGE_INTEGER ByteOffset; ULONG Key; NTSTATUS result; }NAMES;
  } NtReadFileScatter;
  union NtReadOnlyEnlistmentMembers{
    struct NtReadOnlyEnlistment_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtReadOnlyEnlistment_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReadOnlyEnlistment{HANDLE EnlistmentHandle; LARGE_INTEGER TmVirtualClock; NTSTATUS result; }NAMES;
  } NtReadOnlyEnlistment;
  union NtReadRequestDataMembers{
    struct NtReadRequestData_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; ULONG C2; PVOID C3; SIZE_T C4; SIZE_T C5; NTSTATUS C6; }NUMERIC;
    struct NtReadRequestData_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; ULONG ULONG ; PVOID PVOID ; SIZE_T SIZE_T ; SIZE_T SIZE_T1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReadRequestData{HANDLE PortHandle; PORT_MESSAGE Message; ULONG Index; PVOID Buffer; SIZE_T BufferLength; SIZE_T arg1; NTSTATUS result; }NAMES;
  } NtReadRequestData;
  union NtReadVirtualMemoryMembers{
    struct NtReadVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; PVOID C2; SIZE_T C3; SIZE_T C4; NTSTATUS C5; }NUMERIC;
    struct NtReadVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PVOID PVOID1; SIZE_T SIZE_T ; SIZE_T SIZE_T1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReadVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; PVOID Buffer; SIZE_T BufferSize; SIZE_T NumberOfBytesRead; NTSTATUS result; }NAMES;
  } NtReadVirtualMemory;
  union NtRegisterThreadTerminatePortMembers{
    struct NtRegisterThreadTerminatePort_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtRegisterThreadTerminatePort_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtRegisterThreadTerminatePort{HANDLE PortHandle; NTSTATUS result; }NAMES;
  } NtRegisterThreadTerminatePort;
  union NtReleaseKeyedEventMembers{
    struct NtReleaseKeyedEvent_AS_NUMERIC{HANDLE C0; PVOID C1; BOOLEAN C2; LARGE_INTEGER C3; NTSTATUS C4; }NUMERIC;
    struct NtReleaseKeyedEvent_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; BOOLEAN BOOLEAN ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReleaseKeyedEvent{HANDLE KeyedEventHandle; PVOID KeyValue; BOOLEAN Alertable; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtReleaseKeyedEvent;
  union NtReleaseMutantMembers{
    struct NtReleaseMutant_AS_NUMERIC{HANDLE C0; LONG C1; NTSTATUS C2; }NUMERIC;
    struct NtReleaseMutant_AS_TYPES{HANDLE HANDLE ; LONG LONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReleaseMutant{HANDLE MutantHandle; LONG PreviousCount; NTSTATUS result; }NAMES;
  } NtReleaseMutant;
  union NtReleaseSemaphoreMembers{
    struct NtReleaseSemaphore_AS_NUMERIC{HANDLE C0; LONG C1; LONG C2; NTSTATUS C3; }NUMERIC;
    struct NtReleaseSemaphore_AS_TYPES{HANDLE HANDLE ; LONG LONG ; LONG LONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReleaseSemaphore{HANDLE SemaphoreHandle; LONG ReleaseCount; LONG PreviousCount; NTSTATUS result; }NAMES;
  } NtReleaseSemaphore;
  union NtReleaseWorkerFactoryWorkerMembers{
    struct NtReleaseWorkerFactoryWorker_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtReleaseWorkerFactoryWorker_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReleaseWorkerFactoryWorker{HANDLE WorkerFactoryHandle; NTSTATUS result; }NAMES;
  } NtReleaseWorkerFactoryWorker;
  union NtRemoveIoCompletionMembers{
    struct NtRemoveIoCompletion_AS_NUMERIC{HANDLE C0; PVOID C1; PVOID C2; IO_STATUS_BLOCK C3; LARGE_INTEGER C4; NTSTATUS C5; }NUMERIC;
    struct NtRemoveIoCompletion_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PVOID PVOID1; IO_STATUS_BLOCK IO_STATUS_BLOCK ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtRemoveIoCompletion{HANDLE IoCompletionHandle; PVOID KeyContext; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtRemoveIoCompletion;
  union NtRemoveIoCompletionExMembers{
    struct NtRemoveIoCompletionEx_AS_NUMERIC{HANDLE C0; FILE_IO_COMPLETION_INFORMATION C1; ULONG C2; ULONG C3; LARGE_INTEGER C4; BOOLEAN C5; NTSTATUS C6; }NUMERIC;
    struct NtRemoveIoCompletionEx_AS_TYPES{HANDLE HANDLE ; FILE_IO_COMPLETION_INFORMATION FILE_IO_COMPLETION_INFORMATION ; ULONG ULONG ; ULONG ULONG1; LARGE_INTEGER LARGE_INTEGER ; BOOLEAN BOOLEAN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtRemoveIoCompletionEx{HANDLE IoCompletionHandle; FILE_IO_COMPLETION_INFORMATION IoCompletionInformation; ULONG Count; ULONG NumEntriesRemoved; LARGE_INTEGER Timeout; BOOLEAN Alertable; NTSTATUS result; }NAMES;
  } NtRemoveIoCompletionEx;
  union NtRenameKeyMembers{
    struct NtRenameKey_AS_NUMERIC{HANDLE C0; UNICODE_STRING C1; NTSTATUS C2; }NUMERIC;
    struct NtRenameKey_AS_TYPES{HANDLE HANDLE ; UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtRenameKey{HANDLE KeyHandle; UNICODE_STRING NewName; NTSTATUS result; }NAMES;
  } NtRenameKey;
  union NtReplaceKeyMembers{
    struct NtReplaceKey_AS_NUMERIC{OBJECT_ATTRIBUTES C0; HANDLE C1; OBJECT_ATTRIBUTES C2; NTSTATUS C3; }NUMERIC;
    struct NtReplaceKey_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE ; OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReplaceKey{OBJECT_ATTRIBUTES NewFile; HANDLE TargetHandle; OBJECT_ATTRIBUTES OldFile; NTSTATUS result; }NAMES;
  } NtReplaceKey;
  union NtReplacePartitionUnitMembers{
    struct NtReplacePartitionUnit_AS_NUMERIC{UNICODE_STRING C0; UNICODE_STRING C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtReplacePartitionUnit_AS_TYPES{UNICODE_STRING UNICODE_STRING ; UNICODE_STRING UNICODE_STRING1; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReplacePartitionUnit{UNICODE_STRING TargetInstancePath; UNICODE_STRING SpareInstancePath; ULONG Flags; NTSTATUS result; }NAMES;
  } NtReplacePartitionUnit;
  union NtReplyPortMembers{
    struct NtReplyPort_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; NTSTATUS C2; }NUMERIC;
    struct NtReplyPort_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReplyPort{HANDLE PortHandle; PORT_MESSAGE ReplyMessage; NTSTATUS result; }NAMES;
  } NtReplyPort;
  union NtReplyWaitReceivePortMembers{
    struct NtReplyWaitReceivePort_AS_NUMERIC{HANDLE C0; PVOID C1; PORT_MESSAGE C2; PORT_MESSAGE C3; NTSTATUS C4; }NUMERIC;
    struct NtReplyWaitReceivePort_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PORT_MESSAGE PORT_MESSAGE ; PORT_MESSAGE PORT_MESSAGE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReplyWaitReceivePort{HANDLE PortHandle; PVOID PortContext; PORT_MESSAGE ReplyMessage; PORT_MESSAGE ReceiveMessage; NTSTATUS result; }NAMES;
  } NtReplyWaitReceivePort;
  union NtReplyWaitReceivePortExMembers{
    struct NtReplyWaitReceivePortEx_AS_NUMERIC{HANDLE C0; PVOID C1; PORT_MESSAGE C2; PORT_MESSAGE C3; LARGE_INTEGER C4; NTSTATUS C5; }NUMERIC;
    struct NtReplyWaitReceivePortEx_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PORT_MESSAGE PORT_MESSAGE ; PORT_MESSAGE PORT_MESSAGE1; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReplyWaitReceivePortEx{HANDLE PortHandle; PVOID PortContext; PORT_MESSAGE ReplyMessage; PORT_MESSAGE ReceiveMessage; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtReplyWaitReceivePortEx;
  union NtReplyWaitReplyPortMembers{
    struct NtReplyWaitReplyPort_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; NTSTATUS C2; }NUMERIC;
    struct NtReplyWaitReplyPort_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtReplyWaitReplyPort{HANDLE PortHandle; PORT_MESSAGE Message; NTSTATUS result; }NAMES;
  } NtReplyWaitReplyPort;
  union NtRequestPortMembers{
    struct NtRequestPort_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; NTSTATUS C2; }NUMERIC;
    struct NtRequestPort_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtRequestPort{HANDLE PortHandle; PORT_MESSAGE Message; NTSTATUS result; }NAMES;
  } NtRequestPort;
  union NtRequestWaitReplyPortMembers{
    struct NtRequestWaitReplyPort_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; PORT_MESSAGE C2; NTSTATUS C3; }NUMERIC;
    struct NtRequestWaitReplyPort_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; PORT_MESSAGE PORT_MESSAGE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtRequestWaitReplyPort{HANDLE PortHandle; PORT_MESSAGE RequestMessage; PORT_MESSAGE ReplyMessage; NTSTATUS result; }NAMES;
  } NtRequestWaitReplyPort;
  union NtResetEventMembers{
    struct NtResetEvent_AS_NUMERIC{HANDLE C0; LONG C1; NTSTATUS C2; }NUMERIC;
    struct NtResetEvent_AS_TYPES{HANDLE HANDLE ; LONG LONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtResetEvent{HANDLE EventHandle; LONG PreviousState; NTSTATUS result; }NAMES;
  } NtResetEvent;
  union NtResetWriteWatchMembers{
    struct NtResetWriteWatch_AS_NUMERIC{HANDLE C0; PVOID C1; SIZE_T C2; NTSTATUS C3; }NUMERIC;
    struct NtResetWriteWatch_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtResetWriteWatch{HANDLE ProcessHandle; PVOID BaseAddress; SIZE_T RegionSize; NTSTATUS result; }NAMES;
  } NtResetWriteWatch;
  union NtRestoreKeyMembers{
    struct NtRestoreKey_AS_NUMERIC{HANDLE C0; HANDLE C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtRestoreKey_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtRestoreKey{HANDLE KeyHandle; HANDLE FileHandle; ULONG Flags; NTSTATUS result; }NAMES;
  } NtRestoreKey;
  union NtResumeProcessMembers{
    struct NtResumeProcess_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtResumeProcess_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtResumeProcess{HANDLE ProcessHandle; NTSTATUS result; }NAMES;
  } NtResumeProcess;
  union NtResumeThreadMembers{
    struct NtResumeThread_AS_NUMERIC{HANDLE C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtResumeThread_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtResumeThread{HANDLE ThreadHandle; ULONG PreviousSuspendCount; NTSTATUS result; }NAMES;
  } NtResumeThread;
  union NtRevertContainerImpersonationMembers{
    struct NtRevertContainerImpersonation_AS_NUMERIC{NTSTATUS C0; }NUMERIC;
    struct NtRevertContainerImpersonation_AS_TYPES{NTSTATUS NTSTATUS ; }TYPES;
    struct NtRevertContainerImpersonation{NTSTATUS result; }NAMES;
  } NtRevertContainerImpersonation;
  union NtSaveKeyMembers{
    struct NtSaveKey_AS_NUMERIC{HANDLE C0; HANDLE C1; NTSTATUS C2; }NUMERIC;
    struct NtSaveKey_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSaveKey{HANDLE KeyHandle; HANDLE FileHandle; NTSTATUS result; }NAMES;
  } NtSaveKey;
  union NtSaveKeyExMembers{
    struct NtSaveKeyEx_AS_NUMERIC{HANDLE C0; HANDLE C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtSaveKeyEx_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSaveKeyEx{HANDLE KeyHandle; HANDLE FileHandle; ULONG Format; NTSTATUS result; }NAMES;
  } NtSaveKeyEx;
  union NtSaveMergedKeysMembers{
    struct NtSaveMergedKeys_AS_NUMERIC{HANDLE C0; HANDLE C1; }NUMERIC;
    struct NtSaveMergedKeys_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; }TYPES;
    struct NtSaveMergedKeys{HANDLE HighPrecedenceKeyHandle; HANDLE LowPrecedenceKeyHandle; }NAMES;
  } NtSaveMergedKeys;
  union NtSecureConnectPortMembers{
    struct NtSecureConnectPort_AS_NUMERIC{PHANDLE C0; UNICODE_STRING C1; SECURITY_QUALITY_OF_SERVICE C2; PORT_VIEW C3; SID C4; REMOTE_PORT_VIEW C5; ULONG C6; PVOID C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtSecureConnectPort_AS_TYPES{PHANDLE PHANDLE ; UNICODE_STRING UNICODE_STRING ; SECURITY_QUALITY_OF_SERVICE SECURITY_QUALITY_OF_SERVICE ; PORT_VIEW PORT_VIEW ; SID SID ; REMOTE_PORT_VIEW REMOTE_PORT_VIEW ; ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSecureConnectPort{PHANDLE PortHandle; UNICODE_STRING PortName; SECURITY_QUALITY_OF_SERVICE SecurityQos; PORT_VIEW ClientView; SID RequiredServerSid; REMOTE_PORT_VIEW ServerView; ULONG MaxMessageLength; PVOID ConnectionInformation; ULONG ConnectionInformationLength; NTSTATUS result; }NAMES;
  } NtSecureConnectPort;
  union NtSerializeBootMembers{
    struct NtSerializeBoot_AS_NUMERIC{NTSTATUS C0; }NUMERIC;
    struct NtSerializeBoot_AS_TYPES{NTSTATUS NTSTATUS ; }TYPES;
    struct NtSerializeBoot{NTSTATUS result; }NAMES;
  } NtSerializeBoot;
  union NtSetBootOptionsMembers{
    struct NtSetBootOptions_AS_NUMERIC{BOOT_OPTIONS C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtSetBootOptions_AS_TYPES{BOOT_OPTIONS BOOT_OPTIONS ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetBootOptions{BOOT_OPTIONS BootOptions; ULONG FieldsToChange; NTSTATUS result; }NAMES;
  } NtSetBootOptions;
  union NtSetCachedSigningLevelMembers{
    struct NtSetCachedSigningLevel_AS_NUMERIC{ULONG C0; SE_SIGNING_LEVEL C1; PHANDLE C2; ULONG C3; HANDLE C4; NTSTATUS C5; }NUMERIC;
    struct NtSetCachedSigningLevel_AS_TYPES{ULONG ULONG ; SE_SIGNING_LEVEL SE_SIGNING_LEVEL ; PHANDLE PHANDLE ; ULONG ULONG1; HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetCachedSigningLevel{ULONG Flags; SE_SIGNING_LEVEL InputSigningLevel; PHANDLE SourceFiles; ULONG SourceFileCount; HANDLE TargetFile; NTSTATUS result; }NAMES;
  } NtSetCachedSigningLevel;
  union NtSetCachedSigningLevel2Members{
    struct NtSetCachedSigningLevel2_AS_NUMERIC{ULONG C0; SE_SIGNING_LEVEL C1; PHANDLE C2; ULONG C3; HANDLE C4; CSE_SET_FILE_CACHE_INFORMATION C5; NTSTATUS C6; }NUMERIC;
    struct NtSetCachedSigningLevel2_AS_TYPES{ULONG ULONG ; SE_SIGNING_LEVEL SE_SIGNING_LEVEL ; PHANDLE PHANDLE ; ULONG ULONG1; HANDLE HANDLE ; CSE_SET_FILE_CACHE_INFORMATION CSE_SET_FILE_CACHE_INFORMATION ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetCachedSigningLevel2{ULONG Flags; SE_SIGNING_LEVEL InputSigningLevel; PHANDLE SourceFiles; ULONG SourceFileCount; HANDLE TargetFile; CSE_SET_FILE_CACHE_INFORMATION Information; NTSTATUS result; }NAMES;
  } NtSetCachedSigningLevel2;
  union NtSetContextThreadMembers{
    struct NtSetContextThread_AS_NUMERIC{HANDLE C0; CONTEXT C1; NTSTATUS C2; }NUMERIC;
    struct NtSetContextThread_AS_TYPES{HANDLE HANDLE ; CONTEXT CONTEXT ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetContextThread{HANDLE ThreadHandle; CONTEXT ThreadContext; NTSTATUS result; }NAMES;
  } NtSetContextThread;
  union NtSetDriverEntryOrderMembers{
    struct NtSetDriverEntryOrder_AS_NUMERIC{ULONG C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtSetDriverEntryOrder_AS_TYPES{ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetDriverEntryOrder{ULONG Ids; ULONG Count; NTSTATUS result; }NAMES;
  } NtSetDriverEntryOrder;
  union NtSetEaFileMembers{
    struct NtSetEaFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetEaFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetEaFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; PVOID Buffer; ULONG Length; NTSTATUS result; }NAMES;
  } NtSetEaFile;
  union NtSetEventMembers{
    struct NtSetEvent_AS_NUMERIC{HANDLE C0; LONG C1; NTSTATUS C2; }NUMERIC;
    struct NtSetEvent_AS_TYPES{HANDLE HANDLE ; LONG LONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetEvent{HANDLE EventHandle; LONG PreviousState; NTSTATUS result; }NAMES;
  } NtSetEvent;
  union NtSetHighEventPairMembers{
    struct NtSetHighEventPair_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtSetHighEventPair_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetHighEventPair{HANDLE EventPairHandle; NTSTATUS result; }NAMES;
  } NtSetHighEventPair;
  union NtSetHighWaitLowEventPairMembers{
    struct NtSetHighWaitLowEventPair_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtSetHighWaitLowEventPair_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetHighWaitLowEventPair{HANDLE EventPairHandle; NTSTATUS result; }NAMES;
  } NtSetHighWaitLowEventPair;
  union NtSetIRTimerMembers{
    struct NtSetIRTimer_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtSetIRTimer_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetIRTimer{HANDLE TimerHandle; LARGE_INTEGER DueTime; NTSTATUS result; }NAMES;
  } NtSetIRTimer;
  union NtSetInformationEnlistmentMembers{
    struct NtSetInformationEnlistment_AS_NUMERIC{HANDLE C0; ENLISTMENT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationEnlistment_AS_TYPES{HANDLE HANDLE ; ENLISTMENT_INFORMATION_CLASS ENLISTMENT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationEnlistment{HANDLE EnlistmentHandle; ENLISTMENT_INFORMATION_CLASS EnlistmentInformationClass; PVOID EnlistmentInformation; ULONG arg1; NTSTATUS result; }NAMES;
  } NtSetInformationEnlistment;
  union NtSetInformationFileMembers{
    struct NtSetInformationFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; INBUF C2; INLEN C3; FILE_INFORMATION_CLASS C4; NTSTATUS C5; }NUMERIC;
    struct NtSetInformationFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; INBUF INBUF ; INLEN INLEN ; FILE_INFORMATION_CLASS FILE_INFORMATION_CLASS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; INBUF FileInformation; INLEN Length; FILE_INFORMATION_CLASS FileInformationClass; NTSTATUS result; }NAMES;
  } NtSetInformationFile;
  union NtSetInformationJobObjectMembers{
    struct NtSetInformationJobObject_AS_NUMERIC{HANDLE C0; JOBOBJECTINFOCLASS C1; INBUF C2; INLEN C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationJobObject_AS_TYPES{HANDLE HANDLE ; JOBOBJECTINFOCLASS JOBOBJECTINFOCLASS ; INBUF INBUF ; INLEN INLEN ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationJobObject{HANDLE JobHandle; JOBOBJECTINFOCLASS JobObjectInformationClass; INBUF JobObjectInformation; INLEN JobObjectInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationJobObject;
  union NtSetInformationKeyMembers{
    struct NtSetInformationKey_AS_NUMERIC{HANDLE C0; KEY_SET_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationKey_AS_TYPES{HANDLE HANDLE ; KEY_SET_INFORMATION_CLASS KEY_SET_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationKey{HANDLE KeyHandle; KEY_SET_INFORMATION_CLASS KeySetInformationClass; PVOID KeySetInformation; ULONG KeySetInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationKey;
  union NtSetInformationObjectMembers{
    struct NtSetInformationObject_AS_NUMERIC{HANDLE C0; OBJECT_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationObject_AS_TYPES{HANDLE HANDLE ; OBJECT_INFORMATION_CLASS OBJECT_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationObject{HANDLE Handle; OBJECT_INFORMATION_CLASS ObjectInformationClass; PVOID ObjectInformation; ULONG ObjectInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationObject;
  union NtSetInformationProcessMembers{
    struct NtSetInformationProcess_AS_NUMERIC{HANDLE C0; PROCESSINFOCLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationProcess_AS_TYPES{HANDLE HANDLE ; PROCESSINFOCLASS PROCESSINFOCLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationProcess{HANDLE ProcessHandle; PROCESSINFOCLASS ProcessInformationClass; PVOID ProcessInformation; ULONG ProcessInformationSize; NTSTATUS result; }NAMES;
  } NtSetInformationProcess;
  union NtSetInformationResourceManagerMembers{
    struct NtSetInformationResourceManager_AS_NUMERIC{HANDLE C0; RESOURCEMANAGER_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationResourceManager_AS_TYPES{HANDLE HANDLE ; RESOURCEMANAGER_INFORMATION_CLASS RESOURCEMANAGER_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationResourceManager{HANDLE ResourceManagerHandle; RESOURCEMANAGER_INFORMATION_CLASS ResourceManagerInformationClass; PVOID ResourceManagerInformation; ULONG arg1; NTSTATUS result; }NAMES;
  } NtSetInformationResourceManager;
  union NtSetInformationSymbolicLinkMembers{
    struct NtSetInformationSymbolicLink_AS_NUMERIC{HANDLE C0; SYMBOLIC_LINK_INFO_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationSymbolicLink_AS_TYPES{HANDLE HANDLE ; SYMBOLIC_LINK_INFO_CLASS SYMBOLIC_LINK_INFO_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationSymbolicLink{HANDLE LinkHandle; SYMBOLIC_LINK_INFO_CLASS SymbolicLinkClass; PVOID SymbolicLinkInformation; ULONG SymbolicLinkInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationSymbolicLink;
  union NtSetInformationThreadMembers{
    struct NtSetInformationThread_AS_NUMERIC{HANDLE C0; THREADINFOCLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationThread_AS_TYPES{HANDLE HANDLE ; THREADINFOCLASS THREADINFOCLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationThread{HANDLE ThreadHandle; THREADINFOCLASS ThreadInformationClass; PVOID ThreadInformation; ULONG ThreadInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationThread;
  union NtSetInformationTokenMembers{
    struct NtSetInformationToken_AS_NUMERIC{HANDLE C0; TOKEN_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationToken_AS_TYPES{HANDLE HANDLE ; TOKEN_INFORMATION_CLASS TOKEN_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationToken{HANDLE TokenHandle; TOKEN_INFORMATION_CLASS TokenInformationClass; PVOID TokenInformation; ULONG TokenInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationToken;
  union NtSetInformationTransactionMembers{
    struct NtSetInformationTransaction_AS_NUMERIC{HANDLE C0; TRANSACTION_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationTransaction_AS_TYPES{HANDLE HANDLE ; TRANSACTION_INFORMATION_CLASS TRANSACTION_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationTransaction{HANDLE TransactionHandle; TRANSACTION_INFORMATION_CLASS TransactionInformationClass; PVOID TransactionInformation; ULONG TransactionInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationTransaction;
  union NtSetInformationTransactionManagerMembers{
    struct NtSetInformationTransactionManager_AS_NUMERIC{HANDLE C0; TRANSACTIONMANAGER_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationTransactionManager_AS_TYPES{HANDLE HANDLE ; TRANSACTIONMANAGER_INFORMATION_CLASS TRANSACTIONMANAGER_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationTransactionManager{HANDLE TmHandle; TRANSACTIONMANAGER_INFORMATION_CLASS TransactionManagerInformationClass; PVOID TransactionManagerInformation; ULONG TransactionManagerInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationTransactionManager;
  union NtSetInformationVirtualMemoryMembers{
    struct NtSetInformationVirtualMemory_AS_NUMERIC{HANDLE C0; VIRTUAL_MEMORY_INFORMATION_CLASS C1; ULONG C2; MEMORY_RANGE_ENTRY C3; PVOID C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtSetInformationVirtualMemory_AS_TYPES{HANDLE HANDLE ; VIRTUAL_MEMORY_INFORMATION_CLASS VIRTUAL_MEMORY_INFORMATION_CLASS ; ULONG ULONG ; MEMORY_RANGE_ENTRY MEMORY_RANGE_ENTRY ; PVOID PVOID ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationVirtualMemory{HANDLE ProcessHandle; VIRTUAL_MEMORY_INFORMATION_CLASS VmInformationClass; ULONG NumberOfEntries; MEMORY_RANGE_ENTRY VirtualAddresses; PVOID VmInformation; ULONG VmInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationVirtualMemory;
  union NtSetInformationWorkerFactoryMembers{
    struct NtSetInformationWorkerFactory_AS_NUMERIC{HANDLE C0; WORKERFACTORYINFOCLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetInformationWorkerFactory_AS_TYPES{HANDLE HANDLE ; WORKERFACTORYINFOCLASS WORKERFACTORYINFOCLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetInformationWorkerFactory{HANDLE WorkerFactoryHandle; WORKERFACTORYINFOCLASS WorkerFactoryInformationClass; PVOID WorkerFactoryInformation; ULONG WorkerFactoryInformationLength; NTSTATUS result; }NAMES;
  } NtSetInformationWorkerFactory;
  union NtSetIntervalProfileMembers{
    struct NtSetIntervalProfile_AS_NUMERIC{ULONG C0; KPROFILE_SOURCE C1; NTSTATUS C2; }NUMERIC;
    struct NtSetIntervalProfile_AS_TYPES{ULONG ULONG ; KPROFILE_SOURCE KPROFILE_SOURCE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetIntervalProfile{ULONG Interval; KPROFILE_SOURCE Source; NTSTATUS result; }NAMES;
  } NtSetIntervalProfile;
  union NtSetIoCompletionMembers{
    struct NtSetIoCompletion_AS_NUMERIC{HANDLE C0; PVOID C1; PVOID C2; NTSTATUS C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtSetIoCompletion_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PVOID PVOID1; NTSTATUS NTSTATUS ; ULONG ULONG ; NTSTATUS NTSTATUS1; }TYPES;
    struct NtSetIoCompletion{HANDLE IoCompletionHandle; PVOID KeyContext; PVOID ApcContext; NTSTATUS IoStatus; ULONG IoStatusInformation; NTSTATUS result; }NAMES;
  } NtSetIoCompletion;
  union NtSetIoCompletionExMembers{
    struct NtSetIoCompletionEx_AS_NUMERIC{HANDLE C0; HANDLE C1; PVOID C2; PVOID C3; NTSTATUS C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtSetIoCompletionEx_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PVOID PVOID ; PVOID PVOID1; NTSTATUS NTSTATUS ; ULONG ULONG ; NTSTATUS NTSTATUS1; }TYPES;
    struct NtSetIoCompletionEx{HANDLE IoCompletionHandle; HANDLE IoCompletionPacketHandle; PVOID KeyContext; PVOID ApcContext; NTSTATUS IoStatus; ULONG IoStatusInformation; NTSTATUS result; }NAMES;
  } NtSetIoCompletionEx;
  union NtSetLdtEntriesMembers{
    struct NtSetLdtEntries_AS_NUMERIC{ULONG C0; ULONG C1; ULONG C2; ULONG C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtSetLdtEntries_AS_TYPES{ULONG ULONG ; ULONG ULONG1; ULONG ULONG2; ULONG ULONG3; ULONG ULONG4; ULONG ULONG5; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetLdtEntries{ULONG SelectorA; ULONG EntryLowB; ULONG EntryHiB; ULONG SelectorB; ULONG EntryLowA; ULONG EntryHiA; NTSTATUS result; }NAMES;
  } NtSetLdtEntries;
  union NtSetLowEventPairMembers{
    struct NtSetLowEventPair_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtSetLowEventPair_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetLowEventPair{HANDLE EventPairHandle; NTSTATUS result; }NAMES;
  } NtSetLowEventPair;
  union NtSetLowWaitHighEventPairMembers{
    struct NtSetLowWaitHighEventPair_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtSetLowWaitHighEventPair_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetLowWaitHighEventPair{HANDLE EventPairHandle; NTSTATUS result; }NAMES;
  } NtSetLowWaitHighEventPair;
  union NtSetQuotaInformationFileMembers{
    struct NtSetQuotaInformationFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetQuotaInformationFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetQuotaInformationFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; PVOID Buffer; ULONG Length; NTSTATUS result; }NAMES;
  } NtSetQuotaInformationFile;
  union NtSetSecurityObjectMembers{
    struct NtSetSecurityObject_AS_NUMERIC{HANDLE C0; SECURITY_INFORMATION C1; SECURITY_DESCRIPTOR C2; NTSTATUS C3; }NUMERIC;
    struct NtSetSecurityObject_AS_TYPES{HANDLE HANDLE ; SECURITY_INFORMATION SECURITY_INFORMATION ; SECURITY_DESCRIPTOR SECURITY_DESCRIPTOR ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetSecurityObject{HANDLE Handle; SECURITY_INFORMATION SecurityInformation; SECURITY_DESCRIPTOR SecurityDescriptor; NTSTATUS result; }NAMES;
  } NtSetSecurityObject;
  union NtSetSystemEnvironmentValueMembers{
    struct NtSetSystemEnvironmentValue_AS_NUMERIC{UNICODE_STRING C0; UNICODE_STRING C1; NTSTATUS C2; }NUMERIC;
    struct NtSetSystemEnvironmentValue_AS_TYPES{UNICODE_STRING UNICODE_STRING ; UNICODE_STRING UNICODE_STRING1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetSystemEnvironmentValue{UNICODE_STRING VariableName; UNICODE_STRING VariableValue; NTSTATUS result; }NAMES;
  } NtSetSystemEnvironmentValue;
  union NtSetSystemEnvironmentValueExMembers{
    struct NtSetSystemEnvironmentValueEx_AS_NUMERIC{UNICODE_STRING C0; GUID C1; PVOID C2; ULONG C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtSetSystemEnvironmentValueEx_AS_TYPES{UNICODE_STRING UNICODE_STRING ; GUID GUID ; PVOID PVOID ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetSystemEnvironmentValueEx{UNICODE_STRING VariableName; GUID VendorGuid; PVOID Value; ULONG ValueLength; ULONG Attributes; NTSTATUS result; }NAMES;
  } NtSetSystemEnvironmentValueEx;
  union NtSetSystemInformationMembers{
    struct NtSetSystemInformation_AS_NUMERIC{SYSTEM_INFORMATION_CLASS C0; PVOID C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtSetSystemInformation_AS_TYPES{SYSTEM_INFORMATION_CLASS SYSTEM_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetSystemInformation{SYSTEM_INFORMATION_CLASS SystemInformationClass; PVOID SystemInformation; ULONG SystemInformationLength; NTSTATUS result; }NAMES;
  } NtSetSystemInformation;
  union NtSetSystemPowerStateMembers{
    struct NtSetSystemPowerState_AS_NUMERIC{POWER_ACTION C0; SYSTEM_POWER_STATE C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtSetSystemPowerState_AS_TYPES{POWER_ACTION POWER_ACTION ; SYSTEM_POWER_STATE SYSTEM_POWER_STATE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetSystemPowerState{POWER_ACTION SystemAction; SYSTEM_POWER_STATE MinSystemState; ULONG arg1; NTSTATUS result; }NAMES;
  } NtSetSystemPowerState;
  union NtSetSystemTimeMembers{
    struct NtSetSystemTime_AS_NUMERIC{LARGE_INTEGER C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtSetSystemTime_AS_TYPES{LARGE_INTEGER LARGE_INTEGER ; LARGE_INTEGER LARGE_INTEGER1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetSystemTime{LARGE_INTEGER SystemTime; LARGE_INTEGER PreviousTime; NTSTATUS result; }NAMES;
  } NtSetSystemTime;
  union NtSetThreadExecutionStateMembers{
    struct NtSetThreadExecutionState_AS_NUMERIC{EXECUTION_STATE C0; EXECUTION_STATE C1; NTSTATUS C2; }NUMERIC;
    struct NtSetThreadExecutionState_AS_TYPES{EXECUTION_STATE EXECUTION_STATE ; EXECUTION_STATE EXECUTION_STATE1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetThreadExecutionState{EXECUTION_STATE esFlags; EXECUTION_STATE arg1; NTSTATUS result; }NAMES;
  } NtSetThreadExecutionState;
  union NtSetTimerMembers{
    struct NtSetTimer_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; PTIMER_APC_ROUTINE C2; PVOID C3; BOOLEAN C4; LONG C5; BOOLEAN C6; NTSTATUS C7; }NUMERIC;
    struct NtSetTimer_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; PTIMER_APC_ROUTINE PTIMER_APC_ROUTINE ; PVOID PVOID ; BOOLEAN BOOLEAN ; LONG LONG ; BOOLEAN BOOLEAN1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetTimer{HANDLE TimerHandle; LARGE_INTEGER DueTime; PTIMER_APC_ROUTINE TimerApcRoutine; PVOID TimerContext; BOOLEAN ResumeTimer; LONG Period; BOOLEAN PreviousState; NTSTATUS result; }NAMES;
  } NtSetTimer;
  union NtSetTimer2Members{
    struct NtSetTimer2_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; LARGE_INTEGER C2; T2_SET_PARAMETERS C3; NTSTATUS C4; }NUMERIC;
    struct NtSetTimer2_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; LARGE_INTEGER LARGE_INTEGER1; T2_SET_PARAMETERS T2_SET_PARAMETERS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetTimer2{HANDLE TimerHandle; LARGE_INTEGER DueTime; LARGE_INTEGER Period; T2_SET_PARAMETERS Parameters; NTSTATUS result; }NAMES;
  } NtSetTimer2;
  union NtSetTimerExMembers{
    struct NtSetTimerEx_AS_NUMERIC{HANDLE C0; TIMER_SET_INFORMATION_CLASS C1; PVOID C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSetTimerEx_AS_TYPES{HANDLE HANDLE ; TIMER_SET_INFORMATION_CLASS TIMER_SET_INFORMATION_CLASS ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetTimerEx{HANDLE TimerHandle; TIMER_SET_INFORMATION_CLASS TimerSetInformationClass; PVOID TimerSetInformation; ULONG TimerSetInformationLength; NTSTATUS result; }NAMES;
  } NtSetTimerEx;
  union NtSetTimerResolutionMembers{
    struct NtSetTimerResolution_AS_NUMERIC{ULONG C0; BOOLEAN C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtSetTimerResolution_AS_TYPES{ULONG ULONG ; BOOLEAN BOOLEAN ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetTimerResolution{ULONG DesiredTime; BOOLEAN SetResolution; ULONG ActualTime; NTSTATUS result; }NAMES;
  } NtSetTimerResolution;
  union NtSetUuidSeedMembers{
    struct NtSetUuidSeed_AS_NUMERIC{CHAR C0; NTSTATUS C1; }NUMERIC;
    struct NtSetUuidSeed_AS_TYPES{CHAR CHAR ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetUuidSeed{CHAR Seed; NTSTATUS result; }NAMES;
  } NtSetUuidSeed;
  union NtSetValueKeyMembers{
    struct NtSetValueKey_AS_NUMERIC{HANDLE C0; UNICODE_STRING C1; ULONG C2; ULONG C3; PVOID C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtSetValueKey_AS_TYPES{HANDLE HANDLE ; UNICODE_STRING UNICODE_STRING ; ULONG ULONG ; ULONG ULONG1; PVOID PVOID ; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetValueKey{HANDLE KeyHandle; UNICODE_STRING ValueName; ULONG TitleIndex; ULONG Type; PVOID Data; ULONG DataSize; NTSTATUS result; }NAMES;
  } NtSetValueKey;
  union NtSetVolumeInformationFileMembers{
    struct NtSetVolumeInformationFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; PVOID C2; ULONG C3; FS_INFORMATION_CLASS C4; NTSTATUS C5; }NUMERIC;
    struct NtSetVolumeInformationFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; PVOID PVOID ; ULONG ULONG ; FS_INFORMATION_CLASS FS_INFORMATION_CLASS ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetVolumeInformationFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; PVOID FsInformation; ULONG Length; FS_INFORMATION_CLASS FsInformationClass; NTSTATUS result; }NAMES;
  } NtSetVolumeInformationFile;
  union NtSetWnfProcessNotificationEventMembers{
    struct NtSetWnfProcessNotificationEvent_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtSetWnfProcessNotificationEvent_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSetWnfProcessNotificationEvent{HANDLE NotificationEvent; NTSTATUS result; }NAMES;
  } NtSetWnfProcessNotificationEvent;
  union NtShutdownSystemMembers{
    struct NtShutdownSystem_AS_NUMERIC{SHUTDOWN_ACTION C0; NTSTATUS C1; }NUMERIC;
    struct NtShutdownSystem_AS_TYPES{SHUTDOWN_ACTION SHUTDOWN_ACTION ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtShutdownSystem{SHUTDOWN_ACTION Action; NTSTATUS result; }NAMES;
  } NtShutdownSystem;
  union NtShutdownWorkerFactoryMembers{
    struct NtShutdownWorkerFactory_AS_NUMERIC{HANDLE C0; LONG C1; NTSTATUS C2; }NUMERIC;
    struct NtShutdownWorkerFactory_AS_TYPES{HANDLE HANDLE ; LONG LONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtShutdownWorkerFactory{HANDLE WorkerFactoryHandle; LONG PendingWorkerCount; NTSTATUS result; }NAMES;
  } NtShutdownWorkerFactory;
  union NtSignalAndWaitForSingleObjectMembers{
    struct NtSignalAndWaitForSingleObject_AS_NUMERIC{HANDLE C0; HANDLE C1; BOOLEAN C2; LARGE_INTEGER C3; NTSTATUS C4; }NUMERIC;
    struct NtSignalAndWaitForSingleObject_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; BOOLEAN BOOLEAN ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSignalAndWaitForSingleObject{HANDLE SignalHandle; HANDLE WaitHandle; BOOLEAN Alertable; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtSignalAndWaitForSingleObject;
  union NtSinglePhaseRejectMembers{
    struct NtSinglePhaseReject_AS_NUMERIC{HANDLE C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtSinglePhaseReject_AS_TYPES{HANDLE HANDLE ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSinglePhaseReject{HANDLE EnlistmentHandle; LARGE_INTEGER TmVirtualClock; NTSTATUS result; }NAMES;
  } NtSinglePhaseReject;
  union NtStartProfileMembers{
    struct NtStartProfile_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtStartProfile_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtStartProfile{HANDLE ProfileHandle; NTSTATUS result; }NAMES;
  } NtStartProfile;
  union NtStopProfileMembers{
    struct NtStopProfile_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtStopProfile_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtStopProfile{HANDLE ProfileHandle; NTSTATUS result; }NAMES;
  } NtStopProfile;
  union NtSubscribeWnfStateChangeMembers{
    struct NtSubscribeWnfStateChange_AS_NUMERIC{WNF_STATE_NAME C0; WNF_CHANGE_STAMP C1; ULONG C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtSubscribeWnfStateChange_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; WNF_CHANGE_STAMP WNF_CHANGE_STAMP ; ULONG ULONG ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSubscribeWnfStateChange{WNF_STATE_NAME StateName; WNF_CHANGE_STAMP ChangeStamp; ULONG EventMask; ULONG SubscriptionId; NTSTATUS result; }NAMES;
  } NtSubscribeWnfStateChange;
  union NtSuspendProcessMembers{
    struct NtSuspendProcess_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtSuspendProcess_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSuspendProcess{HANDLE ProcessHandle; NTSTATUS result; }NAMES;
  } NtSuspendProcess;
  union NtSuspendThreadMembers{
    struct NtSuspendThread_AS_NUMERIC{HANDLE C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtSuspendThread_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSuspendThread{HANDLE ThreadHandle; ULONG PreviousSuspendCount; NTSTATUS result; }NAMES;
  } NtSuspendThread;
  union NtSystemDebugControlMembers{
    struct NtSystemDebugControl_AS_NUMERIC{SYSDBG_COMMAND C0; PVOID C1; ULONG C2; PVOID C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtSystemDebugControl_AS_TYPES{SYSDBG_COMMAND SYSDBG_COMMAND ; PVOID PVOID ; ULONG ULONG ; PVOID PVOID1; ULONG ULONG1; ULONG ULONG2; NTSTATUS NTSTATUS ; }TYPES;
    struct NtSystemDebugControl{SYSDBG_COMMAND ControlCode; PVOID InputBuffer; ULONG InputBufferLength; PVOID OutputBuffer; ULONG OutputBufferLength; ULONG arg1; NTSTATUS result; }NAMES;
  } NtSystemDebugControl;
  union NtTerminateEnclaveMembers{
    struct NtTerminateEnclave_AS_NUMERIC{PVOID C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtTerminateEnclave_AS_TYPES{PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtTerminateEnclave{PVOID arg1; ULONG arg2; NTSTATUS result; }NAMES;
  } NtTerminateEnclave;
  union NtTerminateJobObjectMembers{
    struct NtTerminateJobObject_AS_NUMERIC{HANDLE C0; NTSTATUS C1; NTSTATUS C2; }NUMERIC;
    struct NtTerminateJobObject_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; NTSTATUS NTSTATUS1; }TYPES;
    struct NtTerminateJobObject{HANDLE JobHandle; NTSTATUS ExitStatus; NTSTATUS result; }NAMES;
  } NtTerminateJobObject;
  union NtTerminateProcessMembers{
    struct NtTerminateProcess_AS_NUMERIC{HANDLE C0; NTSTATUS C1; NTSTATUS C2; }NUMERIC;
    struct NtTerminateProcess_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; NTSTATUS NTSTATUS1; }TYPES;
    struct NtTerminateProcess{HANDLE ProcessHandle; NTSTATUS ExitStatus; NTSTATUS result; }NAMES;
  } NtTerminateProcess;
  union NtTerminateThreadMembers{
    struct NtTerminateThread_AS_NUMERIC{HANDLE C0; NTSTATUS C1; NTSTATUS C2; }NUMERIC;
    struct NtTerminateThread_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; NTSTATUS NTSTATUS1; }TYPES;
    struct NtTerminateThread{HANDLE ThreadHandle; NTSTATUS ExitStatus; NTSTATUS result; }NAMES;
  } NtTerminateThread;
  union NtTestAlertMembers{
    struct NtTestAlert_AS_NUMERIC{NTSTATUS C0; }NUMERIC;
    struct NtTestAlert_AS_TYPES{NTSTATUS NTSTATUS ; }TYPES;
    struct NtTestAlert{NTSTATUS result; }NAMES;
  } NtTestAlert;
  union NtTraceControlMembers{
    struct NtTraceControl_AS_NUMERIC{ULONG C0; PVOID C1; ULONG C2; PVOID C3; ULONG C4; ULONG C5; NTSTATUS C6; }NUMERIC;
    struct NtTraceControl_AS_TYPES{ULONG ULONG ; PVOID PVOID ; ULONG ULONG1; PVOID PVOID1; ULONG ULONG2; ULONG ULONG3; NTSTATUS NTSTATUS ; }TYPES;
    struct NtTraceControl{ULONG FunctionCode; PVOID InBuffer; ULONG InBufferLen; PVOID OutBuffer; ULONG OutBufferLen; ULONG ReturnedResultLength; NTSTATUS result; }NAMES;
  } NtTraceControl;
  union NtTraceEventMembers{
    struct NtTraceEvent_AS_NUMERIC{HANDLE C0; ULONG C1; ULONG C2; PVOID C3; NTSTATUS C4; }NUMERIC;
    struct NtTraceEvent_AS_TYPES{HANDLE HANDLE ; ULONG ULONG ; ULONG ULONG1; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtTraceEvent{HANDLE TraceHandle; ULONG Flags; ULONG FieldSize; PVOID Fields; NTSTATUS result; }NAMES;
  } NtTraceEvent;
  union NtTranslateFilePathMembers{
    struct NtTranslateFilePath_AS_NUMERIC{FILE_PATH C0; ULONG C1; FILE_PATH C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtTranslateFilePath_AS_TYPES{FILE_PATH FILE_PATH ; ULONG ULONG ; FILE_PATH FILE_PATH1; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtTranslateFilePath{FILE_PATH arg1; ULONG arg2; FILE_PATH arg3; ULONG arg4; NTSTATUS result; }NAMES;
  } NtTranslateFilePath;
  union NtUnloadDriverMembers{
    struct NtUnloadDriver_AS_NUMERIC{UNICODE_STRING C0; NTSTATUS C1; }NUMERIC;
    struct NtUnloadDriver_AS_TYPES{UNICODE_STRING UNICODE_STRING ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnloadDriver{UNICODE_STRING DriverServiceName; NTSTATUS result; }NAMES;
  } NtUnloadDriver;
  union NtUnloadKeyMembers{
    struct NtUnloadKey_AS_NUMERIC{OBJECT_ATTRIBUTES C0; NTSTATUS C1; }NUMERIC;
    struct NtUnloadKey_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnloadKey{OBJECT_ATTRIBUTES TargetKey; NTSTATUS result; }NAMES;
  } NtUnloadKey;
  union NtUnloadKey2Members{
    struct NtUnloadKey2_AS_NUMERIC{OBJECT_ATTRIBUTES C0; ULONG C1; NTSTATUS C2; }NUMERIC;
    struct NtUnloadKey2_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnloadKey2{OBJECT_ATTRIBUTES TargetKey; ULONG Flags; NTSTATUS result; }NAMES;
  } NtUnloadKey2;
  union NtUnloadKeyExMembers{
    struct NtUnloadKeyEx_AS_NUMERIC{OBJECT_ATTRIBUTES C0; HANDLE C1; NTSTATUS C2; }NUMERIC;
    struct NtUnloadKeyEx_AS_TYPES{OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES ; HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnloadKeyEx{OBJECT_ATTRIBUTES TargetKey; HANDLE Event; NTSTATUS result; }NAMES;
  } NtUnloadKeyEx;
  union NtUnlockFileMembers{
    struct NtUnlockFile_AS_NUMERIC{HANDLE C0; IO_STATUS_BLOCK C1; LARGE_INTEGER C2; LARGE_INTEGER C3; ULONG C4; NTSTATUS C5; }NUMERIC;
    struct NtUnlockFile_AS_TYPES{HANDLE HANDLE ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; LARGE_INTEGER LARGE_INTEGER ; LARGE_INTEGER LARGE_INTEGER1; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnlockFile{HANDLE FileHandle; IO_STATUS_BLOCK IoStatusBlock; LARGE_INTEGER ByteOffset; LARGE_INTEGER Length; ULONG Key; NTSTATUS result; }NAMES;
  } NtUnlockFile;
  union NtUnlockVirtualMemoryMembers{
    struct NtUnlockVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; SIZE_T C2; ULONG C3; NTSTATUS C4; }NUMERIC;
    struct NtUnlockVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; SIZE_T SIZE_T ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnlockVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; SIZE_T RegionSize; ULONG MapType; NTSTATUS result; }NAMES;
  } NtUnlockVirtualMemory;
  union NtUnmapViewOfSectionMembers{
    struct NtUnmapViewOfSection_AS_NUMERIC{HANDLE C0; PVOID C1; NTSTATUS C2; }NUMERIC;
    struct NtUnmapViewOfSection_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnmapViewOfSection{HANDLE ProcessHandle; PVOID BaseAddress; NTSTATUS result; }NAMES;
  } NtUnmapViewOfSection;
  union NtUnmapViewOfSectionExMembers{
    struct NtUnmapViewOfSectionEx_AS_NUMERIC{HANDLE C0; PVOID C1; ULONG C2; NTSTATUS C3; }NUMERIC;
    struct NtUnmapViewOfSectionEx_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnmapViewOfSectionEx{HANDLE ProcessHandle; PVOID BaseAddress; ULONG Flags; NTSTATUS result; }NAMES;
  } NtUnmapViewOfSectionEx;
  union NtUnsubscribeWnfStateChangeMembers{
    struct NtUnsubscribeWnfStateChange_AS_NUMERIC{WNF_STATE_NAME C0; NTSTATUS C1; }NUMERIC;
    struct NtUnsubscribeWnfStateChange_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUnsubscribeWnfStateChange{WNF_STATE_NAME StateName; NTSTATUS result; }NAMES;
  } NtUnsubscribeWnfStateChange;
  union NtUpdateWnfStateDataMembers{
    struct NtUpdateWnfStateData_AS_NUMERIC{WNF_STATE_NAME C0; PVOID C1; ULONG C2; WNF_TYPE_ID C3; PVOID C4; WNF_CHANGE_STAMP C5; LOGICAL C6; NTSTATUS C7; }NUMERIC;
    struct NtUpdateWnfStateData_AS_TYPES{WNF_STATE_NAME WNF_STATE_NAME ; PVOID PVOID ; ULONG ULONG ; WNF_TYPE_ID WNF_TYPE_ID ; PVOID PVOID1; WNF_CHANGE_STAMP WNF_CHANGE_STAMP ; LOGICAL LOGICAL ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtUpdateWnfStateData{WNF_STATE_NAME StateName; PVOID Buffer; ULONG Length; WNF_TYPE_ID TypeId; PVOID ExplicitScope; WNF_CHANGE_STAMP MatchingChangeStamp; LOGICAL CheckStamp; NTSTATUS result; }NAMES;
  } NtUpdateWnfStateData;
  union NtWaitForAlertByThreadIdMembers{
    struct NtWaitForAlertByThreadId_AS_NUMERIC{PVOID C0; LARGE_INTEGER C1; NTSTATUS C2; }NUMERIC;
    struct NtWaitForAlertByThreadId_AS_TYPES{PVOID PVOID ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWaitForAlertByThreadId{PVOID Hint; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtWaitForAlertByThreadId;
  union NtWaitForDebugEventMembers{
    struct NtWaitForDebugEvent_AS_NUMERIC{PVOID C0; }NUMERIC;
    struct NtWaitForDebugEvent_AS_TYPES{PVOID PVOID ; }TYPES;
    struct NtWaitForDebugEvent{PVOID result; }NAMES;
  } NtWaitForDebugEvent;
  union NtWaitForKeyedEventMembers{
    struct NtWaitForKeyedEvent_AS_NUMERIC{HANDLE C0; PVOID C1; BOOLEAN C2; LARGE_INTEGER C3; NTSTATUS C4; }NUMERIC;
    struct NtWaitForKeyedEvent_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; BOOLEAN BOOLEAN ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWaitForKeyedEvent{HANDLE KeyedEventHandle; PVOID KeyValue; BOOLEAN Alertable; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtWaitForKeyedEvent;
  union NtWaitForMultipleObjectsMembers{
    struct NtWaitForMultipleObjects_AS_NUMERIC{ULONG C0; PHANDLE C1; WAIT_TYPE C2; BOOLEAN C3; LARGE_INTEGER C4; NTSTATUS C5; }NUMERIC;
    struct NtWaitForMultipleObjects_AS_TYPES{ULONG ULONG ; PHANDLE PHANDLE ; WAIT_TYPE WAIT_TYPE ; BOOLEAN BOOLEAN ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWaitForMultipleObjects{ULONG Count; PHANDLE Handles; WAIT_TYPE WaitType; BOOLEAN Alertable; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtWaitForMultipleObjects;
  union NtWaitForSingleObjectMembers{
    struct NtWaitForSingleObject_AS_NUMERIC{HANDLE C0; BOOLEAN C1; LARGE_INTEGER C2; NTSTATUS C3; }NUMERIC;
    struct NtWaitForSingleObject_AS_TYPES{HANDLE HANDLE ; BOOLEAN BOOLEAN ; LARGE_INTEGER LARGE_INTEGER ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWaitForSingleObject{HANDLE Handle; BOOLEAN Alertable; LARGE_INTEGER Timeout; NTSTATUS result; }NAMES;
  } NtWaitForSingleObject;
  union NtWaitHighEventPairMembers{
    struct NtWaitHighEventPair_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtWaitHighEventPair_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWaitHighEventPair{HANDLE EventPairHandle; NTSTATUS result; }NAMES;
  } NtWaitHighEventPair;
  union NtWaitLowEventPairMembers{
    struct NtWaitLowEventPair_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtWaitLowEventPair_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWaitLowEventPair{HANDLE EventPairHandle; NTSTATUS result; }NAMES;
  } NtWaitLowEventPair;
  union NtWorkerFactoryWorkerReadyMembers{
    struct NtWorkerFactoryWorkerReady_AS_NUMERIC{HANDLE C0; NTSTATUS C1; }NUMERIC;
    struct NtWorkerFactoryWorkerReady_AS_TYPES{HANDLE HANDLE ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWorkerFactoryWorkerReady{HANDLE WorkerFactoryHandle; NTSTATUS result; }NAMES;
  } NtWorkerFactoryWorkerReady;
  union NtWriteFileMembers{
    struct NtWriteFile_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; INBUF C5; INLEN C6; LARGE_INTEGER C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtWriteFile_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; INBUF INBUF ; INLEN INLEN ; LARGE_INTEGER LARGE_INTEGER ; ULONG ULONG ; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWriteFile{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; INBUF Buffer; INLEN Length; LARGE_INTEGER ByteOffset; ULONG Key; NTSTATUS result; }NAMES;
  } NtWriteFile;
  union NtWriteFileGatherMembers{
    struct NtWriteFileGather_AS_NUMERIC{HANDLE C0; HANDLE C1; PIO_APC_ROUTINE C2; PVOID C3; IO_STATUS_BLOCK C4; FILE_SEGMENT_ELEMENT C5; ULONG C6; LARGE_INTEGER C7; ULONG C8; NTSTATUS C9; }NUMERIC;
    struct NtWriteFileGather_AS_TYPES{HANDLE HANDLE ; HANDLE HANDLE1; PIO_APC_ROUTINE PIO_APC_ROUTINE ; PVOID PVOID ; IO_STATUS_BLOCK IO_STATUS_BLOCK ; FILE_SEGMENT_ELEMENT FILE_SEGMENT_ELEMENT ; ULONG ULONG ; LARGE_INTEGER LARGE_INTEGER ; ULONG ULONG1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWriteFileGather{HANDLE FileHandle; HANDLE Event; PIO_APC_ROUTINE ApcRoutine; PVOID ApcContext; IO_STATUS_BLOCK IoStatusBlock; FILE_SEGMENT_ELEMENT SegmentArray; ULONG Length; LARGE_INTEGER ByteOffset; ULONG Key; NTSTATUS result; }NAMES;
  } NtWriteFileGather;
  union NtWriteRequestDataMembers{
    struct NtWriteRequestData_AS_NUMERIC{HANDLE C0; PORT_MESSAGE C1; ULONG C2; PVOID C3; SIZE_T C4; SIZE_T C5; NTSTATUS C6; }NUMERIC;
    struct NtWriteRequestData_AS_TYPES{HANDLE HANDLE ; PORT_MESSAGE PORT_MESSAGE ; ULONG ULONG ; PVOID PVOID ; SIZE_T SIZE_T ; SIZE_T SIZE_T1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWriteRequestData{HANDLE PortHandle; PORT_MESSAGE Message; ULONG Index; PVOID Buffer; SIZE_T BufferLength; SIZE_T arg1; NTSTATUS result; }NAMES;
  } NtWriteRequestData;
  union NtWriteVirtualMemoryMembers{
    struct NtWriteVirtualMemory_AS_NUMERIC{HANDLE C0; PVOID C1; PVOID C2; SIZE_T C3; SIZE_T C4; NTSTATUS C5; }NUMERIC;
    struct NtWriteVirtualMemory_AS_TYPES{HANDLE HANDLE ; PVOID PVOID ; PVOID PVOID1; SIZE_T SIZE_T ; SIZE_T SIZE_T1; NTSTATUS NTSTATUS ; }TYPES;
    struct NtWriteVirtualMemory{HANDLE ProcessHandle; PVOID BaseAddress; PVOID Buffer; SIZE_T BufferSize; SIZE_T NumberOfBytesWritten; NTSTATUS result; }NAMES;
  } NtWriteVirtualMemory;
 }all;
  struct NtAcceptConnectPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAcceptConnectPort syscall;}NtAcceptConnectPortCALL;
  struct NtAccessCheckCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAccessCheck syscall;}NtAccessCheckCALL;
  struct NtAccessCheckAndAuditAlarmCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAccessCheckAndAuditAlarm syscall;}NtAccessCheckAndAuditAlarmCALL;
  struct NtAccessCheckByTypeCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAccessCheckByType syscall;}NtAccessCheckByTypeCALL;
  struct NtAcquireCrossVmMutantCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAcquireCrossVmMutant syscall;}NtAcquireCrossVmMutantCALL;
  struct NtAcquireProcessActivityReferenceCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAcquireProcessActivityReference syscall;}NtAcquireProcessActivityReferenceCALL;
  struct NtAddAtomCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAddAtom syscall;}NtAddAtomCALL;
  struct NtAddAtomExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAddAtomEx syscall;}NtAddAtomExCALL;
  struct NtAddBootEntryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAddBootEntry syscall;}NtAddBootEntryCALL;
  struct NtAddDriverEntryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAddDriverEntry syscall;}NtAddDriverEntryCALL;
  struct NtAdjustGroupsTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAdjustGroupsToken syscall;}NtAdjustGroupsTokenCALL;
  struct NtAdjustPrivilegesTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAdjustPrivilegesToken syscall;}NtAdjustPrivilegesTokenCALL;
  struct NtAlertResumeThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlertResumeThread syscall;}NtAlertResumeThreadCALL;
  struct NtAlertThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlertThread syscall;}NtAlertThreadCALL;
  struct NtAlertThreadByThreadIdCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlertThreadByThreadId syscall;}NtAlertThreadByThreadIdCALL;
  struct NtAllocateLocallyUniqueIdCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAllocateLocallyUniqueId syscall;}NtAllocateLocallyUniqueIdCALL;
  struct NtAllocateReserveObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAllocateReserveObject syscall;}NtAllocateReserveObjectCALL;
  struct NtAllocateUserPhysicalPagesCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAllocateUserPhysicalPages syscall;}NtAllocateUserPhysicalPagesCALL;
  struct NtAllocateUserPhysicalPagesExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAllocateUserPhysicalPagesEx syscall;}NtAllocateUserPhysicalPagesExCALL;
  struct NtAllocateUuidsCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAllocateUuids syscall;}NtAllocateUuidsCALL;
  struct NtAllocateVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAllocateVirtualMemory syscall;}NtAllocateVirtualMemoryCALL;
  struct NtAllocateVirtualMemoryExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAllocateVirtualMemoryEx syscall;}NtAllocateVirtualMemoryExCALL;
  struct NtAlpcAcceptConnectPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcAcceptConnectPort syscall;}NtAlpcAcceptConnectPortCALL;
  struct NtAlpcCancelMessageCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcCancelMessage syscall;}NtAlpcCancelMessageCALL;
  struct NtAlpcConnectPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcConnectPort syscall;}NtAlpcConnectPortCALL;
  struct NtAlpcConnectPortExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcConnectPortEx syscall;}NtAlpcConnectPortExCALL;
  struct NtAlpcCreatePortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcCreatePort syscall;}NtAlpcCreatePortCALL;
  struct NtAlpcCreatePortSectionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcCreatePortSection syscall;}NtAlpcCreatePortSectionCALL;
  struct NtAlpcCreateResourceReserveCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcCreateResourceReserve syscall;}NtAlpcCreateResourceReserveCALL;
  struct NtAlpcCreateSectionViewCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcCreateSectionView syscall;}NtAlpcCreateSectionViewCALL;
  struct NtAlpcCreateSecurityContextCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcCreateSecurityContext syscall;}NtAlpcCreateSecurityContextCALL;
  struct NtAlpcDeletePortSectionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcDeletePortSection syscall;}NtAlpcDeletePortSectionCALL;
  struct NtAlpcDeleteResourceReserveCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcDeleteResourceReserve syscall;}NtAlpcDeleteResourceReserveCALL;
  struct NtAlpcDeleteSectionViewCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcDeleteSectionView syscall;}NtAlpcDeleteSectionViewCALL;
  struct NtAlpcDeleteSecurityContextCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcDeleteSecurityContext syscall;}NtAlpcDeleteSecurityContextCALL;
  struct NtAlpcDisconnectPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcDisconnectPort syscall;}NtAlpcDisconnectPortCALL;
  struct NtAlpcImpersonateClientContainerOfPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcImpersonateClientContainerOfPort syscall;}NtAlpcImpersonateClientContainerOfPortCALL;
  struct NtAlpcImpersonateClientOfPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcImpersonateClientOfPort syscall;}NtAlpcImpersonateClientOfPortCALL;
  struct NtAlpcOpenSenderProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcOpenSenderProcess syscall;}NtAlpcOpenSenderProcessCALL;
  struct NtAlpcOpenSenderThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcOpenSenderThread syscall;}NtAlpcOpenSenderThreadCALL;
  struct NtAlpcQueryInformationCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcQueryInformation syscall;}NtAlpcQueryInformationCALL;
  struct NtAlpcQueryInformationMessageCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcQueryInformationMessage syscall;}NtAlpcQueryInformationMessageCALL;
  struct NtAlpcRevokeSecurityContextCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcRevokeSecurityContext syscall;}NtAlpcRevokeSecurityContextCALL;
  struct NtAlpcSetInformationCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAlpcSetInformation syscall;}NtAlpcSetInformationCALL;
  struct NtAreMappedFilesTheSameCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAreMappedFilesTheSame syscall;}NtAreMappedFilesTheSameCALL;
  struct NtAssignProcessToJobObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAssignProcessToJobObject syscall;}NtAssignProcessToJobObjectCALL;
  struct NtAssociateWaitCompletionPacketCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtAssociateWaitCompletionPacket syscall;}NtAssociateWaitCompletionPacketCALL;
  struct NtCallEnclaveCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCallEnclave syscall;}NtCallEnclaveCALL;
  struct NtCallbackReturnCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCallbackReturn syscall;}NtCallbackReturnCALL;
  struct NtCancelIoFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCancelIoFile syscall;}NtCancelIoFileCALL;
  struct NtCancelIoFileExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCancelIoFileEx syscall;}NtCancelIoFileExCALL;
  struct NtCancelSynchronousIoFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCancelSynchronousIoFile syscall;}NtCancelSynchronousIoFileCALL;
  struct NtCancelTimerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCancelTimer syscall;}NtCancelTimerCALL;
  struct NtCancelTimer2CALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCancelTimer2 syscall;}NtCancelTimer2CALL;
  struct NtCancelWaitCompletionPacketCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCancelWaitCompletionPacket syscall;}NtCancelWaitCompletionPacketCALL;
  struct NtClearEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtClearEvent syscall;}NtClearEventCALL;
  struct NtCloseCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtClose syscall;}NtCloseCALL;
  struct NtCloseObjectAuditAlarmCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCloseObjectAuditAlarm syscall;}NtCloseObjectAuditAlarmCALL;
  struct NtCommitCompleteCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCommitComplete syscall;}NtCommitCompleteCALL;
  struct NtCommitEnlistmentCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCommitEnlistment syscall;}NtCommitEnlistmentCALL;
  struct NtCommitRegistryTransactionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCommitRegistryTransaction syscall;}NtCommitRegistryTransactionCALL;
  struct NtCommitTransactionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCommitTransaction syscall;}NtCommitTransactionCALL;
  struct NtCompactKeysCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCompactKeys syscall;}NtCompactKeysCALL;
  struct NtCompareObjectsCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCompareObjects syscall;}NtCompareObjectsCALL;
  struct NtCompareSigningLevelsCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCompareSigningLevels syscall;}NtCompareSigningLevelsCALL;
  struct NtCompareTokensCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCompareTokens syscall;}NtCompareTokensCALL;
  struct NtCompleteConnectPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCompleteConnectPort syscall;}NtCompleteConnectPortCALL;
  struct NtCompressKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCompressKey syscall;}NtCompressKeyCALL;
  struct NtConnectPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtConnectPort syscall;}NtConnectPortCALL;
  struct NtContinueCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtContinue syscall;}NtContinueCALL;
  struct NtContinueExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtContinueEx syscall;}NtContinueExCALL;
  struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounterCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter syscall;}NtConvertBetweenAuxiliaryCounterAndPerformanceCounterCALL;
  struct NtCreateCrossVmEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateCrossVmEvent syscall;}NtCreateCrossVmEventCALL;
  struct NtCreateCrossVmMutantCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateCrossVmMutant syscall;}NtCreateCrossVmMutantCALL;
  struct NtCreateDirectoryObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateDirectoryObject syscall;}NtCreateDirectoryObjectCALL;
  struct NtCreateDirectoryObjectExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateDirectoryObjectEx syscall;}NtCreateDirectoryObjectExCALL;
  struct NtCreateEnclaveCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateEnclave syscall;}NtCreateEnclaveCALL;
  struct NtCreateEnlistmentCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateEnlistment syscall;}NtCreateEnlistmentCALL;
  struct NtCreateEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateEvent syscall;}NtCreateEventCALL;
  struct NtCreateEventPairCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateEventPair syscall;}NtCreateEventPairCALL;
  struct NtCreateFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateFile syscall;}NtCreateFileCALL;
  struct NtCreateIRTimerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateIRTimer syscall;}NtCreateIRTimerCALL;
  struct NtCreateIoCompletionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateIoCompletion syscall;}NtCreateIoCompletionCALL;
  struct NtCreateJobObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateJobObject syscall;}NtCreateJobObjectCALL;
  struct NtCreateJobSetCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateJobSet syscall;}NtCreateJobSetCALL;
  struct NtCreateKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateKey syscall;}NtCreateKeyCALL;
  struct NtCreateKeyTransactedCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateKeyTransacted syscall;}NtCreateKeyTransactedCALL;
  struct NtCreateKeyedEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateKeyedEvent syscall;}NtCreateKeyedEventCALL;
  struct NtCreateLowBoxTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateLowBoxToken syscall;}NtCreateLowBoxTokenCALL;
  struct NtCreateMailslotFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateMailslotFile syscall;}NtCreateMailslotFileCALL;
  struct NtCreateMutantCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateMutant syscall;}NtCreateMutantCALL;
  struct NtCreateNamedPipeFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateNamedPipeFile syscall;}NtCreateNamedPipeFileCALL;
  struct NtCreatePagingFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreatePagingFile syscall;}NtCreatePagingFileCALL;
  struct NtCreatePartitionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreatePartition syscall;}NtCreatePartitionCALL;
  struct NtCreatePortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreatePort syscall;}NtCreatePortCALL;
  struct NtCreatePrivateNamespaceCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreatePrivateNamespace syscall;}NtCreatePrivateNamespaceCALL;
  struct NtCreateProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateProcess syscall;}NtCreateProcessCALL;
  struct NtCreateProcessExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateProcessEx syscall;}NtCreateProcessExCALL;
  struct NtCreateProfileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateProfile syscall;}NtCreateProfileCALL;
  struct NtCreateProfileExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateProfileEx syscall;}NtCreateProfileExCALL;
  struct NtCreateRegistryTransactionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateRegistryTransaction syscall;}NtCreateRegistryTransactionCALL;
  struct NtCreateResourceManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateResourceManager syscall;}NtCreateResourceManagerCALL;
  struct NtCreateSectionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateSection syscall;}NtCreateSectionCALL;
  struct NtCreateSectionExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateSectionEx syscall;}NtCreateSectionExCALL;
  struct NtCreateSemaphoreCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateSemaphore syscall;}NtCreateSemaphoreCALL;
  struct NtCreateSymbolicLinkObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateSymbolicLinkObject syscall;}NtCreateSymbolicLinkObjectCALL;
  struct NtCreateThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateThread syscall;}NtCreateThreadCALL;
  struct NtCreateTimerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateTimer syscall;}NtCreateTimerCALL;
  struct NtCreateTimer2CALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateTimer2 syscall;}NtCreateTimer2CALL;
  struct NtCreateTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateToken syscall;}NtCreateTokenCALL;
  struct NtCreateTransactionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateTransaction syscall;}NtCreateTransactionCALL;
  struct NtCreateTransactionManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateTransactionManager syscall;}NtCreateTransactionManagerCALL;
  struct NtCreateWaitCompletionPacketCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateWaitCompletionPacket syscall;}NtCreateWaitCompletionPacketCALL;
  struct NtCreateWaitablePortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateWaitablePort syscall;}NtCreateWaitablePortCALL;
  struct NtCreateWnfStateNameCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateWnfStateName syscall;}NtCreateWnfStateNameCALL;
  struct NtCreateWorkerFactoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtCreateWorkerFactory syscall;}NtCreateWorkerFactoryCALL;
  struct NtDelayExecutionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDelayExecution syscall;}NtDelayExecutionCALL;
  struct NtDeleteAtomCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteAtom syscall;}NtDeleteAtomCALL;
  struct NtDeleteBootEntryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteBootEntry syscall;}NtDeleteBootEntryCALL;
  struct NtDeleteDriverEntryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteDriverEntry syscall;}NtDeleteDriverEntryCALL;
  struct NtDeleteFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteFile syscall;}NtDeleteFileCALL;
  struct NtDeleteKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteKey syscall;}NtDeleteKeyCALL;
  struct NtDeleteObjectAuditAlarmCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteObjectAuditAlarm syscall;}NtDeleteObjectAuditAlarmCALL;
  struct NtDeletePrivateNamespaceCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeletePrivateNamespace syscall;}NtDeletePrivateNamespaceCALL;
  struct NtDeleteValueKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteValueKey syscall;}NtDeleteValueKeyCALL;
  struct NtDeleteWnfStateDataCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteWnfStateData syscall;}NtDeleteWnfStateDataCALL;
  struct NtDeleteWnfStateNameCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeleteWnfStateName syscall;}NtDeleteWnfStateNameCALL;
  struct NtDeviceIoControlFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDeviceIoControlFile syscall;}NtDeviceIoControlFileCALL;
  struct NtDirectGraphicsCallCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDirectGraphicsCall syscall;}NtDirectGraphicsCallCALL;
  struct NtDisableLastKnownGoodCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDisableLastKnownGood syscall;}NtDisableLastKnownGoodCALL;
  struct NtDisplayStringCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDisplayString syscall;}NtDisplayStringCALL;
  struct NtDrawTextCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDrawText syscall;}NtDrawTextCALL;
  struct NtDuplicateObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDuplicateObject syscall;}NtDuplicateObjectCALL;
  struct NtDuplicateTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtDuplicateToken syscall;}NtDuplicateTokenCALL;
  struct NtEnableLastKnownGoodCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtEnableLastKnownGood syscall;}NtEnableLastKnownGoodCALL;
  struct NtEnumerateBootEntriesCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtEnumerateBootEntries syscall;}NtEnumerateBootEntriesCALL;
  struct NtEnumerateDriverEntriesCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtEnumerateDriverEntries syscall;}NtEnumerateDriverEntriesCALL;
  struct NtEnumerateKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtEnumerateKey syscall;}NtEnumerateKeyCALL;
  struct NtEnumerateSystemEnvironmentValuesExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtEnumerateSystemEnvironmentValuesEx syscall;}NtEnumerateSystemEnvironmentValuesExCALL;
  struct NtEnumerateTransactionObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtEnumerateTransactionObject syscall;}NtEnumerateTransactionObjectCALL;
  struct NtEnumerateValueKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtEnumerateValueKey syscall;}NtEnumerateValueKeyCALL;
  struct NtExtendSectionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtExtendSection syscall;}NtExtendSectionCALL;
  struct NtFilterBootOptionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFilterBootOption syscall;}NtFilterBootOptionCALL;
  struct NtFilterTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFilterToken syscall;}NtFilterTokenCALL;
  struct NtFindAtomCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFindAtom syscall;}NtFindAtomCALL;
  struct NtFlushBuffersFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFlushBuffersFile syscall;}NtFlushBuffersFileCALL;
  struct NtFlushBuffersFileExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFlushBuffersFileEx syscall;}NtFlushBuffersFileExCALL;
  struct NtFlushInstallUILanguageCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFlushInstallUILanguage syscall;}NtFlushInstallUILanguageCALL;
  struct NtFlushInstructionCacheCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFlushInstructionCache syscall;}NtFlushInstructionCacheCALL;
  struct NtFlushKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFlushKey syscall;}NtFlushKeyCALL;
  struct NtFlushProcessWriteBuffersCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFlushProcessWriteBuffers syscall;}NtFlushProcessWriteBuffersCALL;
  struct NtFlushVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFlushVirtualMemory syscall;}NtFlushVirtualMemoryCALL;
  struct NtFlushWriteBufferCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFlushWriteBuffer syscall;}NtFlushWriteBufferCALL;
  struct NtFreeVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFreeVirtualMemory syscall;}NtFreeVirtualMemoryCALL;
  struct NtFreezeRegistryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFreezeRegistry syscall;}NtFreezeRegistryCALL;
  struct NtFsControlFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtFsControlFile syscall;}NtFsControlFileCALL;
  struct NtGetCachedSigningLevelCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetCachedSigningLevel syscall;}NtGetCachedSigningLevelCALL;
  struct NtGetCompleteWnfStateSubscriptionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetCompleteWnfStateSubscription syscall;}NtGetCompleteWnfStateSubscriptionCALL;
  struct NtGetContextThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetContextThread syscall;}NtGetContextThreadCALL;
  struct NtGetCurrentProcessorNumberExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetCurrentProcessorNumberEx syscall;}NtGetCurrentProcessorNumberExCALL;
  struct NtGetDevicePowerStateCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetDevicePowerState syscall;}NtGetDevicePowerStateCALL;
  struct NtGetMUIRegistryInfoCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetMUIRegistryInfo syscall;}NtGetMUIRegistryInfoCALL;
  struct NtGetNextProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetNextProcess syscall;}NtGetNextProcessCALL;
  struct NtGetNextThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetNextThread syscall;}NtGetNextThreadCALL;
  struct NtGetNlsSectionPtrCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetNlsSectionPtr syscall;}NtGetNlsSectionPtrCALL;
  struct NtGetNotificationResourceManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetNotificationResourceManager syscall;}NtGetNotificationResourceManagerCALL;
  struct NtGetWriteWatchCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtGetWriteWatch syscall;}NtGetWriteWatchCALL;
  struct NtImpersonateAnonymousTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtImpersonateAnonymousToken syscall;}NtImpersonateAnonymousTokenCALL;
  struct NtImpersonateClientOfPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtImpersonateClientOfPort syscall;}NtImpersonateClientOfPortCALL;
  struct NtImpersonateThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtImpersonateThread syscall;}NtImpersonateThreadCALL;
  struct NtInitializeEnclaveCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtInitializeEnclave syscall;}NtInitializeEnclaveCALL;
  struct NtInitializeNlsFilesCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtInitializeNlsFiles syscall;}NtInitializeNlsFilesCALL;
  struct NtInitializeRegistryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtInitializeRegistry syscall;}NtInitializeRegistryCALL;
  struct NtInitiatePowerActionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtInitiatePowerAction syscall;}NtInitiatePowerActionCALL;
  struct NtIsProcessInJobCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtIsProcessInJob syscall;}NtIsProcessInJobCALL;
  struct NtListenPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtListenPort syscall;}NtListenPortCALL;
  struct NtLoadDriverCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLoadDriver syscall;}NtLoadDriverCALL;
  struct NtLoadEnclaveDataCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLoadEnclaveData syscall;}NtLoadEnclaveDataCALL;
  struct NtLoadKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLoadKey syscall;}NtLoadKeyCALL;
  struct NtLoadKey2CALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLoadKey2 syscall;}NtLoadKey2CALL;
  struct NtLoadKeyExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLoadKeyEx syscall;}NtLoadKeyExCALL;
  struct NtLockFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLockFile syscall;}NtLockFileCALL;
  struct NtLockProductActivationKeysCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLockProductActivationKeys syscall;}NtLockProductActivationKeysCALL;
  struct NtLockRegistryKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLockRegistryKey syscall;}NtLockRegistryKeyCALL;
  struct NtLockVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtLockVirtualMemory syscall;}NtLockVirtualMemoryCALL;
  struct NtMakePermanentObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtMakePermanentObject syscall;}NtMakePermanentObjectCALL;
  struct NtMakeTemporaryObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtMakeTemporaryObject syscall;}NtMakeTemporaryObjectCALL;
  struct NtManageHotPatchCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtManageHotPatch syscall;}NtManageHotPatchCALL;
  struct NtManagePartitionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtManagePartition syscall;}NtManagePartitionCALL;
  struct NtMapCMFModuleCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtMapCMFModule syscall;}NtMapCMFModuleCALL;
  struct NtMapUserPhysicalPagesCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtMapUserPhysicalPages syscall;}NtMapUserPhysicalPagesCALL;
  struct NtMapUserPhysicalPagesScatterCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtMapUserPhysicalPagesScatter syscall;}NtMapUserPhysicalPagesScatterCALL;
  struct NtMapViewOfSectionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtMapViewOfSection syscall;}NtMapViewOfSectionCALL;
  struct NtMapViewOfSectionExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtMapViewOfSectionEx syscall;}NtMapViewOfSectionExCALL;
  struct NtModifyBootEntryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtModifyBootEntry syscall;}NtModifyBootEntryCALL;
  struct NtModifyDriverEntryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtModifyDriverEntry syscall;}NtModifyDriverEntryCALL;
  struct NtNotifyChangeDirectoryFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtNotifyChangeDirectoryFile syscall;}NtNotifyChangeDirectoryFileCALL;
  struct NtNotifyChangeDirectoryFileExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtNotifyChangeDirectoryFileEx syscall;}NtNotifyChangeDirectoryFileExCALL;
  struct NtNotifyChangeKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtNotifyChangeKey syscall;}NtNotifyChangeKeyCALL;
  struct NtNotifyChangeMultipleKeysCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtNotifyChangeMultipleKeys syscall;}NtNotifyChangeMultipleKeysCALL;
  struct NtNotifyChangeSessionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtNotifyChangeSession syscall;}NtNotifyChangeSessionCALL;
  struct NtOpenDirectoryObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenDirectoryObject syscall;}NtOpenDirectoryObjectCALL;
  struct NtOpenEnlistmentCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenEnlistment syscall;}NtOpenEnlistmentCALL;
  struct NtOpenEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenEvent syscall;}NtOpenEventCALL;
  struct NtOpenEventPairCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenEventPair syscall;}NtOpenEventPairCALL;
  struct NtOpenFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenFile syscall;}NtOpenFileCALL;
  struct NtOpenIoCompletionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenIoCompletion syscall;}NtOpenIoCompletionCALL;
  struct NtOpenJobObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenJobObject syscall;}NtOpenJobObjectCALL;
  struct NtOpenKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenKey syscall;}NtOpenKeyCALL;
  struct NtOpenKeyExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenKeyEx syscall;}NtOpenKeyExCALL;
  struct NtOpenKeyTransactedCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenKeyTransacted syscall;}NtOpenKeyTransactedCALL;
  struct NtOpenKeyTransactedExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenKeyTransactedEx syscall;}NtOpenKeyTransactedExCALL;
  struct NtOpenKeyedEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenKeyedEvent syscall;}NtOpenKeyedEventCALL;
  struct NtOpenMutantCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenMutant syscall;}NtOpenMutantCALL;
  struct NtOpenObjectAuditAlarmCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenObjectAuditAlarm syscall;}NtOpenObjectAuditAlarmCALL;
  struct NtOpenPartitionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenPartition syscall;}NtOpenPartitionCALL;
  struct NtOpenPrivateNamespaceCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenPrivateNamespace syscall;}NtOpenPrivateNamespaceCALL;
  struct NtOpenProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenProcess syscall;}NtOpenProcessCALL;
  struct NtOpenProcessTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenProcessToken syscall;}NtOpenProcessTokenCALL;
  struct NtOpenProcessTokenExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenProcessTokenEx syscall;}NtOpenProcessTokenExCALL;
  struct NtOpenRegistryTransactionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenRegistryTransaction syscall;}NtOpenRegistryTransactionCALL;
  struct NtOpenResourceManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenResourceManager syscall;}NtOpenResourceManagerCALL;
  struct NtOpenSectionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenSection syscall;}NtOpenSectionCALL;
  struct NtOpenSemaphoreCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenSemaphore syscall;}NtOpenSemaphoreCALL;
  struct NtOpenSessionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenSession syscall;}NtOpenSessionCALL;
  struct NtOpenSymbolicLinkObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenSymbolicLinkObject syscall;}NtOpenSymbolicLinkObjectCALL;
  struct NtOpenThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenThread syscall;}NtOpenThreadCALL;
  struct NtOpenThreadTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenThreadToken syscall;}NtOpenThreadTokenCALL;
  struct NtOpenThreadTokenExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenThreadTokenEx syscall;}NtOpenThreadTokenExCALL;
  struct NtOpenTimerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenTimer syscall;}NtOpenTimerCALL;
  struct NtOpenTransactionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenTransaction syscall;}NtOpenTransactionCALL;
  struct NtOpenTransactionManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtOpenTransactionManager syscall;}NtOpenTransactionManagerCALL;
  struct NtPlugPlayControlCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPlugPlayControl syscall;}NtPlugPlayControlCALL;
  struct NtPowerInformationCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPowerInformation syscall;}NtPowerInformationCALL;
  struct NtPrePrepareCompleteCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPrePrepareComplete syscall;}NtPrePrepareCompleteCALL;
  struct NtPrePrepareEnlistmentCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPrePrepareEnlistment syscall;}NtPrePrepareEnlistmentCALL;
  struct NtPrepareCompleteCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPrepareComplete syscall;}NtPrepareCompleteCALL;
  struct NtPrepareEnlistmentCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPrepareEnlistment syscall;}NtPrepareEnlistmentCALL;
  struct NtPrivilegeCheckCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPrivilegeCheck syscall;}NtPrivilegeCheckCALL;
  struct NtPropagationCompleteCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPropagationComplete syscall;}NtPropagationCompleteCALL;
  struct NtPropagationFailedCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPropagationFailed syscall;}NtPropagationFailedCALL;
  struct NtProtectVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtProtectVirtualMemory syscall;}NtProtectVirtualMemoryCALL;
  struct NtPulseEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtPulseEvent syscall;}NtPulseEventCALL;
  struct NtQueryAttributesFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryAttributesFile syscall;}NtQueryAttributesFileCALL;
  struct NtQueryBootEntryOrderCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryBootEntryOrder syscall;}NtQueryBootEntryOrderCALL;
  struct NtQueryBootOptionsCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryBootOptions syscall;}NtQueryBootOptionsCALL;
  struct NtQueryDebugFilterStateCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryDebugFilterState syscall;}NtQueryDebugFilterStateCALL;
  struct NtQueryDefaultLocaleCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryDefaultLocale syscall;}NtQueryDefaultLocaleCALL;
  struct NtQueryDefaultUILanguageCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryDefaultUILanguage syscall;}NtQueryDefaultUILanguageCALL;
  struct NtQueryDirectoryFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryDirectoryFile syscall;}NtQueryDirectoryFileCALL;
  struct NtQueryDirectoryFileExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryDirectoryFileEx syscall;}NtQueryDirectoryFileExCALL;
  struct NtQueryDirectoryObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryDirectoryObject syscall;}NtQueryDirectoryObjectCALL;
  struct NtQueryDriverEntryOrderCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryDriverEntryOrder syscall;}NtQueryDriverEntryOrderCALL;
  struct NtQueryEaFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryEaFile syscall;}NtQueryEaFileCALL;
  struct NtQueryEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryEvent syscall;}NtQueryEventCALL;
  struct NtQueryFullAttributesFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryFullAttributesFile syscall;}NtQueryFullAttributesFileCALL;
  struct NtQueryInformationAtomCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationAtom syscall;}NtQueryInformationAtomCALL;
  struct NtQueryInformationByNameCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationByName syscall;}NtQueryInformationByNameCALL;
  struct NtQueryInformationEnlistmentCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationEnlistment syscall;}NtQueryInformationEnlistmentCALL;
  struct NtQueryInformationFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationFile syscall;}NtQueryInformationFileCALL;
  struct NtQueryInformationJobObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationJobObject syscall;}NtQueryInformationJobObjectCALL;
  struct NtQueryInformationPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationPort syscall;}NtQueryInformationPortCALL;
  struct NtQueryInformationProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationProcess syscall;}NtQueryInformationProcessCALL;
  struct NtQueryInformationResourceManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationResourceManager syscall;}NtQueryInformationResourceManagerCALL;
  struct NtQueryInformationThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationThread syscall;}NtQueryInformationThreadCALL;
  struct NtQueryInformationTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationToken syscall;}NtQueryInformationTokenCALL;
  struct NtQueryInformationTransactionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationTransaction syscall;}NtQueryInformationTransactionCALL;
  struct NtQueryInformationTransactionManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationTransactionManager syscall;}NtQueryInformationTransactionManagerCALL;
  struct NtQueryInformationWorkerFactoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInformationWorkerFactory syscall;}NtQueryInformationWorkerFactoryCALL;
  struct NtQueryInstallUILanguageCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryInstallUILanguage syscall;}NtQueryInstallUILanguageCALL;
  struct NtQueryIntervalProfileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryIntervalProfile syscall;}NtQueryIntervalProfileCALL;
  struct NtQueryIoCompletionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryIoCompletion syscall;}NtQueryIoCompletionCALL;
  struct NtQueryKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryKey syscall;}NtQueryKeyCALL;
  struct NtQueryLicenseValueCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryLicenseValue syscall;}NtQueryLicenseValueCALL;
  struct NtQueryMultipleValueKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryMultipleValueKey syscall;}NtQueryMultipleValueKeyCALL;
  struct NtQueryMutantCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryMutant syscall;}NtQueryMutantCALL;
  struct NtQueryObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryObject syscall;}NtQueryObjectCALL;
  struct NtQueryOpenSubKeysCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryOpenSubKeys syscall;}NtQueryOpenSubKeysCALL;
  struct NtQueryOpenSubKeysExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryOpenSubKeysEx syscall;}NtQueryOpenSubKeysExCALL;
  struct NtQueryPerformanceCounterCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryPerformanceCounter syscall;}NtQueryPerformanceCounterCALL;
  struct NtQueryPortInformationProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryPortInformationProcess syscall;}NtQueryPortInformationProcessCALL;
  struct NtQueryQuotaInformationFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryQuotaInformationFile syscall;}NtQueryQuotaInformationFileCALL;
  struct NtQuerySectionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySection syscall;}NtQuerySectionCALL;
  struct NtQuerySecurityAttributesTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySecurityAttributesToken syscall;}NtQuerySecurityAttributesTokenCALL;
  struct NtQuerySecurityObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySecurityObject syscall;}NtQuerySecurityObjectCALL;
  struct NtQuerySecurityPolicyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySecurityPolicy syscall;}NtQuerySecurityPolicyCALL;
  struct NtQuerySemaphoreCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySemaphore syscall;}NtQuerySemaphoreCALL;
  struct NtQuerySymbolicLinkObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySymbolicLinkObject syscall;}NtQuerySymbolicLinkObjectCALL;
  struct NtQuerySystemEnvironmentValueCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySystemEnvironmentValue syscall;}NtQuerySystemEnvironmentValueCALL;
  struct NtQuerySystemEnvironmentValueExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySystemEnvironmentValueEx syscall;}NtQuerySystemEnvironmentValueExCALL;
  struct NtQuerySystemInformationCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySystemInformation syscall;}NtQuerySystemInformationCALL;
  struct NtQuerySystemInformationExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySystemInformationEx syscall;}NtQuerySystemInformationExCALL;
  struct NtQuerySystemTimeCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQuerySystemTime syscall;}NtQuerySystemTimeCALL;
  struct NtQueryTimerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryTimer syscall;}NtQueryTimerCALL;
  struct NtQueryTimerResolutionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryTimerResolution syscall;}NtQueryTimerResolutionCALL;
  struct NtQueryValueKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryValueKey syscall;}NtQueryValueKeyCALL;
  struct NtQueryVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryVirtualMemory syscall;}NtQueryVirtualMemoryCALL;
  struct NtQueryVolumeInformationFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryVolumeInformationFile syscall;}NtQueryVolumeInformationFileCALL;
  struct NtQueryWnfStateDataCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryWnfStateData syscall;}NtQueryWnfStateDataCALL;
  struct NtQueryWnfStateNameInformationCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueryWnfStateNameInformation syscall;}NtQueryWnfStateNameInformationCALL;
  struct NtQueueApcThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueueApcThread syscall;}NtQueueApcThreadCALL;
  struct NtQueueApcThreadExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtQueueApcThreadEx syscall;}NtQueueApcThreadExCALL;
  struct NtRaiseExceptionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRaiseException syscall;}NtRaiseExceptionCALL;
  struct NtRaiseHardErrorCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRaiseHardError syscall;}NtRaiseHardErrorCALL;
  struct NtReadFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReadFile syscall;}NtReadFileCALL;
  struct NtReadFileScatterCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReadFileScatter syscall;}NtReadFileScatterCALL;
  struct NtReadOnlyEnlistmentCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReadOnlyEnlistment syscall;}NtReadOnlyEnlistmentCALL;
  struct NtReadRequestDataCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReadRequestData syscall;}NtReadRequestDataCALL;
  struct NtReadVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReadVirtualMemory syscall;}NtReadVirtualMemoryCALL;
  struct NtRegisterThreadTerminatePortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRegisterThreadTerminatePort syscall;}NtRegisterThreadTerminatePortCALL;
  struct NtReleaseKeyedEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReleaseKeyedEvent syscall;}NtReleaseKeyedEventCALL;
  struct NtReleaseMutantCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReleaseMutant syscall;}NtReleaseMutantCALL;
  struct NtReleaseSemaphoreCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReleaseSemaphore syscall;}NtReleaseSemaphoreCALL;
  struct NtReleaseWorkerFactoryWorkerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReleaseWorkerFactoryWorker syscall;}NtReleaseWorkerFactoryWorkerCALL;
  struct NtRemoveIoCompletionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRemoveIoCompletion syscall;}NtRemoveIoCompletionCALL;
  struct NtRemoveIoCompletionExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRemoveIoCompletionEx syscall;}NtRemoveIoCompletionExCALL;
  struct NtRenameKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRenameKey syscall;}NtRenameKeyCALL;
  struct NtReplaceKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReplaceKey syscall;}NtReplaceKeyCALL;
  struct NtReplacePartitionUnitCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReplacePartitionUnit syscall;}NtReplacePartitionUnitCALL;
  struct NtReplyPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReplyPort syscall;}NtReplyPortCALL;
  struct NtReplyWaitReceivePortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReplyWaitReceivePort syscall;}NtReplyWaitReceivePortCALL;
  struct NtReplyWaitReceivePortExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReplyWaitReceivePortEx syscall;}NtReplyWaitReceivePortExCALL;
  struct NtReplyWaitReplyPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtReplyWaitReplyPort syscall;}NtReplyWaitReplyPortCALL;
  struct NtRequestPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRequestPort syscall;}NtRequestPortCALL;
  struct NtRequestWaitReplyPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRequestWaitReplyPort syscall;}NtRequestWaitReplyPortCALL;
  struct NtResetEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtResetEvent syscall;}NtResetEventCALL;
  struct NtResetWriteWatchCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtResetWriteWatch syscall;}NtResetWriteWatchCALL;
  struct NtRestoreKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRestoreKey syscall;}NtRestoreKeyCALL;
  struct NtResumeProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtResumeProcess syscall;}NtResumeProcessCALL;
  struct NtResumeThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtResumeThread syscall;}NtResumeThreadCALL;
  struct NtRevertContainerImpersonationCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtRevertContainerImpersonation syscall;}NtRevertContainerImpersonationCALL;
  struct NtSaveKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSaveKey syscall;}NtSaveKeyCALL;
  struct NtSaveKeyExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSaveKeyEx syscall;}NtSaveKeyExCALL;
  struct NtSaveMergedKeysCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSaveMergedKeys syscall;}NtSaveMergedKeysCALL;
  struct NtSecureConnectPortCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSecureConnectPort syscall;}NtSecureConnectPortCALL;
  struct NtSerializeBootCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSerializeBoot syscall;}NtSerializeBootCALL;
  struct NtSetBootOptionsCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetBootOptions syscall;}NtSetBootOptionsCALL;
  struct NtSetCachedSigningLevelCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetCachedSigningLevel syscall;}NtSetCachedSigningLevelCALL;
  struct NtSetCachedSigningLevel2CALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetCachedSigningLevel2 syscall;}NtSetCachedSigningLevel2CALL;
  struct NtSetContextThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetContextThread syscall;}NtSetContextThreadCALL;
  struct NtSetDriverEntryOrderCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetDriverEntryOrder syscall;}NtSetDriverEntryOrderCALL;
  struct NtSetEaFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetEaFile syscall;}NtSetEaFileCALL;
  struct NtSetEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetEvent syscall;}NtSetEventCALL;
  struct NtSetHighEventPairCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetHighEventPair syscall;}NtSetHighEventPairCALL;
  struct NtSetHighWaitLowEventPairCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetHighWaitLowEventPair syscall;}NtSetHighWaitLowEventPairCALL;
  struct NtSetIRTimerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetIRTimer syscall;}NtSetIRTimerCALL;
  struct NtSetInformationEnlistmentCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationEnlistment syscall;}NtSetInformationEnlistmentCALL;
  struct NtSetInformationFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationFile syscall;}NtSetInformationFileCALL;
  struct NtSetInformationJobObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationJobObject syscall;}NtSetInformationJobObjectCALL;
  struct NtSetInformationKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationKey syscall;}NtSetInformationKeyCALL;
  struct NtSetInformationObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationObject syscall;}NtSetInformationObjectCALL;
  struct NtSetInformationProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationProcess syscall;}NtSetInformationProcessCALL;
  struct NtSetInformationResourceManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationResourceManager syscall;}NtSetInformationResourceManagerCALL;
  struct NtSetInformationSymbolicLinkCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationSymbolicLink syscall;}NtSetInformationSymbolicLinkCALL;
  struct NtSetInformationThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationThread syscall;}NtSetInformationThreadCALL;
  struct NtSetInformationTokenCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationToken syscall;}NtSetInformationTokenCALL;
  struct NtSetInformationTransactionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationTransaction syscall;}NtSetInformationTransactionCALL;
  struct NtSetInformationTransactionManagerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationTransactionManager syscall;}NtSetInformationTransactionManagerCALL;
  struct NtSetInformationVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationVirtualMemory syscall;}NtSetInformationVirtualMemoryCALL;
  struct NtSetInformationWorkerFactoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetInformationWorkerFactory syscall;}NtSetInformationWorkerFactoryCALL;
  struct NtSetIntervalProfileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetIntervalProfile syscall;}NtSetIntervalProfileCALL;
  struct NtSetIoCompletionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetIoCompletion syscall;}NtSetIoCompletionCALL;
  struct NtSetIoCompletionExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetIoCompletionEx syscall;}NtSetIoCompletionExCALL;
  struct NtSetLdtEntriesCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetLdtEntries syscall;}NtSetLdtEntriesCALL;
  struct NtSetLowEventPairCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetLowEventPair syscall;}NtSetLowEventPairCALL;
  struct NtSetLowWaitHighEventPairCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetLowWaitHighEventPair syscall;}NtSetLowWaitHighEventPairCALL;
  struct NtSetQuotaInformationFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetQuotaInformationFile syscall;}NtSetQuotaInformationFileCALL;
  struct NtSetSecurityObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetSecurityObject syscall;}NtSetSecurityObjectCALL;
  struct NtSetSystemEnvironmentValueCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetSystemEnvironmentValue syscall;}NtSetSystemEnvironmentValueCALL;
  struct NtSetSystemEnvironmentValueExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetSystemEnvironmentValueEx syscall;}NtSetSystemEnvironmentValueExCALL;
  struct NtSetSystemInformationCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetSystemInformation syscall;}NtSetSystemInformationCALL;
  struct NtSetSystemPowerStateCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetSystemPowerState syscall;}NtSetSystemPowerStateCALL;
  struct NtSetSystemTimeCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetSystemTime syscall;}NtSetSystemTimeCALL;
  struct NtSetThreadExecutionStateCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetThreadExecutionState syscall;}NtSetThreadExecutionStateCALL;
  struct NtSetTimerCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetTimer syscall;}NtSetTimerCALL;
  struct NtSetTimer2CALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetTimer2 syscall;}NtSetTimer2CALL;
  struct NtSetTimerExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetTimerEx syscall;}NtSetTimerExCALL;
  struct NtSetTimerResolutionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetTimerResolution syscall;}NtSetTimerResolutionCALL;
  struct NtSetUuidSeedCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetUuidSeed syscall;}NtSetUuidSeedCALL;
  struct NtSetValueKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetValueKey syscall;}NtSetValueKeyCALL;
  struct NtSetVolumeInformationFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetVolumeInformationFile syscall;}NtSetVolumeInformationFileCALL;
  struct NtSetWnfProcessNotificationEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSetWnfProcessNotificationEvent syscall;}NtSetWnfProcessNotificationEventCALL;
  struct NtShutdownSystemCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtShutdownSystem syscall;}NtShutdownSystemCALL;
  struct NtShutdownWorkerFactoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtShutdownWorkerFactory syscall;}NtShutdownWorkerFactoryCALL;
  struct NtSignalAndWaitForSingleObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSignalAndWaitForSingleObject syscall;}NtSignalAndWaitForSingleObjectCALL;
  struct NtSinglePhaseRejectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSinglePhaseReject syscall;}NtSinglePhaseRejectCALL;
  struct NtStartProfileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtStartProfile syscall;}NtStartProfileCALL;
  struct NtStopProfileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtStopProfile syscall;}NtStopProfileCALL;
  struct NtSubscribeWnfStateChangeCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSubscribeWnfStateChange syscall;}NtSubscribeWnfStateChangeCALL;
  struct NtSuspendProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSuspendProcess syscall;}NtSuspendProcessCALL;
  struct NtSuspendThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSuspendThread syscall;}NtSuspendThreadCALL;
  struct NtSystemDebugControlCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtSystemDebugControl syscall;}NtSystemDebugControlCALL;
  struct NtTerminateEnclaveCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtTerminateEnclave syscall;}NtTerminateEnclaveCALL;
  struct NtTerminateJobObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtTerminateJobObject syscall;}NtTerminateJobObjectCALL;
  struct NtTerminateProcessCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtTerminateProcess syscall;}NtTerminateProcessCALL;
  struct NtTerminateThreadCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtTerminateThread syscall;}NtTerminateThreadCALL;
  struct NtTestAlertCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtTestAlert syscall;}NtTestAlertCALL;
  struct NtTraceControlCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtTraceControl syscall;}NtTraceControlCALL;
  struct NtTraceEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtTraceEvent syscall;}NtTraceEventCALL;
  struct NtTranslateFilePathCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtTranslateFilePath syscall;}NtTranslateFilePathCALL;
  struct NtUnloadDriverCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnloadDriver syscall;}NtUnloadDriverCALL;
  struct NtUnloadKeyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnloadKey syscall;}NtUnloadKeyCALL;
  struct NtUnloadKey2CALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnloadKey2 syscall;}NtUnloadKey2CALL;
  struct NtUnloadKeyExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnloadKeyEx syscall;}NtUnloadKeyExCALL;
  struct NtUnlockFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnlockFile syscall;}NtUnlockFileCALL;
  struct NtUnlockVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnlockVirtualMemory syscall;}NtUnlockVirtualMemoryCALL;
  struct NtUnmapViewOfSectionCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnmapViewOfSection syscall;}NtUnmapViewOfSectionCALL;
  struct NtUnmapViewOfSectionExCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnmapViewOfSectionEx syscall;}NtUnmapViewOfSectionExCALL;
  struct NtUnsubscribeWnfStateChangeCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUnsubscribeWnfStateChange syscall;}NtUnsubscribeWnfStateChangeCALL;
  struct NtUpdateWnfStateDataCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtUpdateWnfStateData syscall;}NtUpdateWnfStateDataCALL;
  struct NtWaitForAlertByThreadIdCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWaitForAlertByThreadId syscall;}NtWaitForAlertByThreadIdCALL;
  struct NtWaitForDebugEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWaitForDebugEvent syscall;}NtWaitForDebugEventCALL;
  struct NtWaitForKeyedEventCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWaitForKeyedEvent syscall;}NtWaitForKeyedEventCALL;
  struct NtWaitForMultipleObjectsCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWaitForMultipleObjects syscall;}NtWaitForMultipleObjectsCALL;
  struct NtWaitForSingleObjectCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWaitForSingleObject syscall;}NtWaitForSingleObjectCALL;
  struct NtWaitHighEventPairCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWaitHighEventPair syscall;}NtWaitHighEventPairCALL;
  struct NtWaitLowEventPairCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWaitLowEventPair syscall;}NtWaitLowEventPairCALL;
  struct NtWorkerFactoryWorkerReadyCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWorkerFactoryWorkerReady syscall;}NtWorkerFactoryWorkerReadyCALL;
  struct NtWriteFileCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWriteFile syscall;}NtWriteFileCALL;
  struct NtWriteFileGatherCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWriteFileGather syscall;}NtWriteFileGatherCALL;
  struct NtWriteRequestDataCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWriteRequestData syscall;}NtWriteRequestDataCALL;
  struct NtWriteVirtualMemoryCALL{ BOOL syscallEntered; PEPROCESS EPROCESS; PETHREAD ETHREAD; PVOID caller;struct execimage imageFile; KPROCESSOR_MODE PreviousMode;PID pid;TID tid;BOOL impersonating; TOKEN* token; TOKEN_TYPE tokenType; INTEGRITY_LEVEL integrity ; struct NtWriteVirtualMemory syscall;}NtWriteVirtualMemoryCALL;
}syscalls;
uint64_t offsets[ string, string ];
BEGIN{
 offsets["NtAcceptConnectPort",""] = offsetof( union all , NtAcceptConnectPort ); 
 offsets["NtAcceptConnectPort","HANDLE"] = 1+offsetof( struct NtAcceptConnectPort_AS_TYPES,HANDLE );
 offsets["NtAcceptConnectPort","PVOID"] = 1+offsetof( struct NtAcceptConnectPort_AS_TYPES,PVOID );
 offsets["NtAcceptConnectPort","PORT_MESSAGE"] = 1+offsetof( struct NtAcceptConnectPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtAcceptConnectPort","BOOLEAN"] = 1+offsetof( struct NtAcceptConnectPort_AS_TYPES,BOOLEAN );
 offsets["NtAcceptConnectPort","PORT_VIEW"] = 1+offsetof( struct NtAcceptConnectPort_AS_TYPES,PORT_VIEW );
 offsets["NtAcceptConnectPort","REMOTE_PORT_VIEW"] = 1+offsetof( struct NtAcceptConnectPort_AS_TYPES,REMOTE_PORT_VIEW );
 offsets["NtAcceptConnectPort","NTSTATUS"] = 1+offsetof( struct NtAcceptConnectPort_AS_TYPES,NTSTATUS );
 offsets["NtAccessCheck",""] = offsetof( union all , NtAccessCheck );
 offsets["NtAccessCheck","SECURITY_DESCRIPTOR"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,SECURITY_DESCRIPTOR );
 offsets["NtAccessCheck","HANDLE"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,HANDLE );
 offsets["NtAccessCheck","ACCESS_MASK"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,ACCESS_MASK );
 offsets["NtAccessCheck","GENERIC_MAPPING"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,GENERIC_MAPPING );
 offsets["NtAccessCheck","PRIVILEGE_SET"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,PRIVILEGE_SET );
 offsets["NtAccessCheck","ULONG"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,ULONG );
 offsets["NtAccessCheck","ACCESS_MASK"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,ACCESS_MASK1);
 offsets["NtAccessCheck","NTSTATUS"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,NTSTATUS );
 offsets["NtAccessCheck","NTSTATUS"] = 1+offsetof( struct NtAccessCheck_AS_TYPES,NTSTATUS1);
 offsets["NtAccessCheckAndAuditAlarm",""] = offsetof( union all , NtAccessCheckAndAuditAlarm );
 offsets["NtAccessCheckAndAuditAlarm","UNICODE_STRING"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,UNICODE_STRING );
 offsets["NtAccessCheckAndAuditAlarm","PVOID"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,PVOID );
 offsets["NtAccessCheckAndAuditAlarm","UNICODE_STRING"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,UNICODE_STRING1);
 offsets["NtAccessCheckAndAuditAlarm","UNICODE_STRING"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,UNICODE_STRING2);
 offsets["NtAccessCheckAndAuditAlarm","SECURITY_DESCRIPTOR"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,SECURITY_DESCRIPTOR );
 offsets["NtAccessCheckAndAuditAlarm","ACCESS_MASK"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,ACCESS_MASK );
 offsets["NtAccessCheckAndAuditAlarm","GENERIC_MAPPING"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,GENERIC_MAPPING );
 offsets["NtAccessCheckAndAuditAlarm","BOOLEAN"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,BOOLEAN );
 offsets["NtAccessCheckAndAuditAlarm","ACCESS_MASK"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,ACCESS_MASK1);
 offsets["NtAccessCheckAndAuditAlarm","NTSTATUS"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,NTSTATUS );
 offsets["NtAccessCheckAndAuditAlarm","BOOLEAN"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,BOOLEAN1);
 offsets["NtAccessCheckAndAuditAlarm","NTSTATUS"] = 1+offsetof( struct NtAccessCheckAndAuditAlarm_AS_TYPES,NTSTATUS1);
 offsets["NtAccessCheckByType",""] = offsetof( union all , NtAccessCheckByType );
 offsets["NtAccessCheckByType","SECURITY_DESCRIPTOR"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,SECURITY_DESCRIPTOR );
 offsets["NtAccessCheckByType","SID"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,SID );
 offsets["NtAccessCheckByType","HANDLE"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,HANDLE );
 offsets["NtAccessCheckByType","ACCESS_MASK"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,ACCESS_MASK );
 offsets["NtAccessCheckByType","OBJECT_TYPE_LIST"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,OBJECT_TYPE_LIST );
 offsets["NtAccessCheckByType","ULONG"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,ULONG );
 offsets["NtAccessCheckByType","GENERIC_MAPPING"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,GENERIC_MAPPING );
 offsets["NtAccessCheckByType","PRIVILEGE_SET"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,PRIVILEGE_SET );
 offsets["NtAccessCheckByType","ULONG"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,ULONG1);
 offsets["NtAccessCheckByType","ACCESS_MASK"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,ACCESS_MASK1);
 offsets["NtAccessCheckByType","NTSTATUS"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,NTSTATUS );
 offsets["NtAccessCheckByType","NTSTATUS"] = 1+offsetof( struct NtAccessCheckByType_AS_TYPES,NTSTATUS1);
 offsets["NtAcquireCrossVmMutant",""] = offsetof( union all , NtAcquireCrossVmMutant );
 offsets["NtAcquireCrossVmMutant","HANDLE"] = 1+offsetof( struct NtAcquireCrossVmMutant_AS_TYPES,HANDLE );
 offsets["NtAcquireCrossVmMutant","LARGE_INTEGER"] = 1+offsetof( struct NtAcquireCrossVmMutant_AS_TYPES,LARGE_INTEGER );
 offsets["NtAcquireCrossVmMutant","NTSTATUS"] = 1+offsetof( struct NtAcquireCrossVmMutant_AS_TYPES,NTSTATUS );
 offsets["NtAcquireProcessActivityReference",""] = offsetof( union all , NtAcquireProcessActivityReference );
 offsets["NtAcquireProcessActivityReference","PHANDLE"] = 1+offsetof( struct NtAcquireProcessActivityReference_AS_TYPES,PHANDLE );
 offsets["NtAcquireProcessActivityReference","HANDLE"] = 1+offsetof( struct NtAcquireProcessActivityReference_AS_TYPES,HANDLE );
 offsets["NtAcquireProcessActivityReference","PROCESS_ACTIVITY_TYPE"] = 1+offsetof( struct NtAcquireProcessActivityReference_AS_TYPES,PROCESS_ACTIVITY_TYPE );
 offsets["NtAcquireProcessActivityReference","NTSTATUS"] = 1+offsetof( struct NtAcquireProcessActivityReference_AS_TYPES,NTSTATUS );
 offsets["NtAddAtom",""] = offsetof( union all , NtAddAtom );
 offsets["NtAddAtom","WSTR"] = 1+offsetof( struct NtAddAtom_AS_TYPES,WSTR );
 offsets["NtAddAtom","ULONG"] = 1+offsetof( struct NtAddAtom_AS_TYPES,ULONG );
 offsets["NtAddAtom","RTL_ATOM"] = 1+offsetof( struct NtAddAtom_AS_TYPES,RTL_ATOM );
 offsets["NtAddAtom","NTSTATUS"] = 1+offsetof( struct NtAddAtom_AS_TYPES,NTSTATUS );
 offsets["NtAddAtomEx",""] = offsetof( union all , NtAddAtomEx );
 offsets["NtAddAtomEx","WSTR"] = 1+offsetof( struct NtAddAtomEx_AS_TYPES,WSTR );
 offsets["NtAddAtomEx","ULONG"] = 1+offsetof( struct NtAddAtomEx_AS_TYPES,ULONG );
 offsets["NtAddAtomEx","RTL_ATOM"] = 1+offsetof( struct NtAddAtomEx_AS_TYPES,RTL_ATOM );
 offsets["NtAddAtomEx","ULONG"] = 1+offsetof( struct NtAddAtomEx_AS_TYPES,ULONG1);
 offsets["NtAddAtomEx","NTSTATUS"] = 1+offsetof( struct NtAddAtomEx_AS_TYPES,NTSTATUS );
 offsets["NtAddBootEntry",""] = offsetof( union all , NtAddBootEntry );
 offsets["NtAddBootEntry","BOOT_ENTRY"] = 1+offsetof( struct NtAddBootEntry_AS_TYPES,BOOT_ENTRY );
 offsets["NtAddBootEntry","ULONG"] = 1+offsetof( struct NtAddBootEntry_AS_TYPES,ULONG );
 offsets["NtAddBootEntry","NTSTATUS"] = 1+offsetof( struct NtAddBootEntry_AS_TYPES,NTSTATUS );
 offsets["NtAddDriverEntry",""] = offsetof( union all , NtAddDriverEntry );
 offsets["NtAddDriverEntry","EFI_DRIVER_ENTRY"] = 1+offsetof( struct NtAddDriverEntry_AS_TYPES,EFI_DRIVER_ENTRY );
 offsets["NtAddDriverEntry","ULONG"] = 1+offsetof( struct NtAddDriverEntry_AS_TYPES,ULONG );
 offsets["NtAddDriverEntry","NTSTATUS"] = 1+offsetof( struct NtAddDriverEntry_AS_TYPES,NTSTATUS );
 offsets["NtAdjustGroupsToken",""] = offsetof( union all , NtAdjustGroupsToken );
 offsets["NtAdjustGroupsToken","HANDLE"] = 1+offsetof( struct NtAdjustGroupsToken_AS_TYPES,HANDLE );
 offsets["NtAdjustGroupsToken","BOOLEAN"] = 1+offsetof( struct NtAdjustGroupsToken_AS_TYPES,BOOLEAN );
 offsets["NtAdjustGroupsToken","TOKEN_GROUPS"] = 1+offsetof( struct NtAdjustGroupsToken_AS_TYPES,TOKEN_GROUPS );
 offsets["NtAdjustGroupsToken","ULONG"] = 1+offsetof( struct NtAdjustGroupsToken_AS_TYPES,ULONG );
 offsets["NtAdjustGroupsToken","TOKEN_GROUPS"] = 1+offsetof( struct NtAdjustGroupsToken_AS_TYPES,TOKEN_GROUPS1);
 offsets["NtAdjustGroupsToken","ULONG"] = 1+offsetof( struct NtAdjustGroupsToken_AS_TYPES,ULONG1);
 offsets["NtAdjustGroupsToken","NTSTATUS"] = 1+offsetof( struct NtAdjustGroupsToken_AS_TYPES,NTSTATUS );
 offsets["NtAdjustPrivilegesToken",""] = offsetof( union all , NtAdjustPrivilegesToken );
 offsets["NtAdjustPrivilegesToken","HANDLE"] = 1+offsetof( struct NtAdjustPrivilegesToken_AS_TYPES,HANDLE );
 offsets["NtAdjustPrivilegesToken","BOOLEAN"] = 1+offsetof( struct NtAdjustPrivilegesToken_AS_TYPES,BOOLEAN );
 offsets["NtAdjustPrivilegesToken","TOKEN_PRIVILEGES"] = 1+offsetof( struct NtAdjustPrivilegesToken_AS_TYPES,TOKEN_PRIVILEGES );
 offsets["NtAdjustPrivilegesToken","ULONG"] = 1+offsetof( struct NtAdjustPrivilegesToken_AS_TYPES,ULONG );
 offsets["NtAdjustPrivilegesToken","TOKEN_PRIVILEGES"] = 1+offsetof( struct NtAdjustPrivilegesToken_AS_TYPES,TOKEN_PRIVILEGES1);
 offsets["NtAdjustPrivilegesToken","ULONG"] = 1+offsetof( struct NtAdjustPrivilegesToken_AS_TYPES,ULONG1);
 offsets["NtAdjustPrivilegesToken","NTSTATUS"] = 1+offsetof( struct NtAdjustPrivilegesToken_AS_TYPES,NTSTATUS );
 offsets["NtAlertResumeThread",""] = offsetof( union all , NtAlertResumeThread );
 offsets["NtAlertResumeThread","HANDLE"] = 1+offsetof( struct NtAlertResumeThread_AS_TYPES,HANDLE );
 offsets["NtAlertResumeThread","ULONG"] = 1+offsetof( struct NtAlertResumeThread_AS_TYPES,ULONG );
 offsets["NtAlertResumeThread","NTSTATUS"] = 1+offsetof( struct NtAlertResumeThread_AS_TYPES,NTSTATUS );
 offsets["NtAlertThread",""] = offsetof( union all , NtAlertThread );
 offsets["NtAlertThread","HANDLE"] = 1+offsetof( struct NtAlertThread_AS_TYPES,HANDLE );
 offsets["NtAlertThread","NTSTATUS"] = 1+offsetof( struct NtAlertThread_AS_TYPES,NTSTATUS );
 offsets["NtAlertThreadByThreadId",""] = offsetof( union all , NtAlertThreadByThreadId );
 offsets["NtAlertThreadByThreadId","HANDLE"] = 1+offsetof( struct NtAlertThreadByThreadId_AS_TYPES,HANDLE );
 offsets["NtAlertThreadByThreadId","NTSTATUS"] = 1+offsetof( struct NtAlertThreadByThreadId_AS_TYPES,NTSTATUS );
 offsets["NtAllocateLocallyUniqueId",""] = offsetof( union all , NtAllocateLocallyUniqueId );
 offsets["NtAllocateLocallyUniqueId","LUID"] = 1+offsetof( struct NtAllocateLocallyUniqueId_AS_TYPES,LUID );
 offsets["NtAllocateLocallyUniqueId","NTSTATUS"] = 1+offsetof( struct NtAllocateLocallyUniqueId_AS_TYPES,NTSTATUS );
 offsets["NtAllocateReserveObject",""] = offsetof( union all , NtAllocateReserveObject );
 offsets["NtAllocateReserveObject","PHANDLE"] = 1+offsetof( struct NtAllocateReserveObject_AS_TYPES,PHANDLE );
 offsets["NtAllocateReserveObject","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtAllocateReserveObject_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtAllocateReserveObject","MEMORY_RESERVE_TYPE"] = 1+offsetof( struct NtAllocateReserveObject_AS_TYPES,MEMORY_RESERVE_TYPE );
 offsets["NtAllocateReserveObject","NTSTATUS"] = 1+offsetof( struct NtAllocateReserveObject_AS_TYPES,NTSTATUS );
 offsets["NtAllocateUserPhysicalPages",""] = offsetof( union all , NtAllocateUserPhysicalPages );
 offsets["NtAllocateUserPhysicalPages","HANDLE"] = 1+offsetof( struct NtAllocateUserPhysicalPages_AS_TYPES,HANDLE );
 offsets["NtAllocateUserPhysicalPages","ULONG"] = 1+offsetof( struct NtAllocateUserPhysicalPages_AS_TYPES,ULONG );
 offsets["NtAllocateUserPhysicalPages","ULONG"] = 1+offsetof( struct NtAllocateUserPhysicalPages_AS_TYPES,ULONG1);
 offsets["NtAllocateUserPhysicalPages","NTSTATUS"] = 1+offsetof( struct NtAllocateUserPhysicalPages_AS_TYPES,NTSTATUS );
 offsets["NtAllocateUserPhysicalPagesEx",""] = offsetof( union all , NtAllocateUserPhysicalPagesEx );
 offsets["NtAllocateUserPhysicalPagesEx","HANDLE"] = 1+offsetof( struct NtAllocateUserPhysicalPagesEx_AS_TYPES,HANDLE );
 offsets["NtAllocateUserPhysicalPagesEx","ULONG"] = 1+offsetof( struct NtAllocateUserPhysicalPagesEx_AS_TYPES,ULONG );
 offsets["NtAllocateUserPhysicalPagesEx","ULONG"] = 1+offsetof( struct NtAllocateUserPhysicalPagesEx_AS_TYPES,ULONG1);
 offsets["NtAllocateUserPhysicalPagesEx","MEM_EXTENDED_PARAMETER"] = 1+offsetof( struct NtAllocateUserPhysicalPagesEx_AS_TYPES,MEM_EXTENDED_PARAMETER );
 offsets["NtAllocateUserPhysicalPagesEx","ULONG"] = 1+offsetof( struct NtAllocateUserPhysicalPagesEx_AS_TYPES,ULONG2);
 offsets["NtAllocateUserPhysicalPagesEx","NTSTATUS"] = 1+offsetof( struct NtAllocateUserPhysicalPagesEx_AS_TYPES,NTSTATUS );
 offsets["NtAllocateUuids",""] = offsetof( union all , NtAllocateUuids );
 offsets["NtAllocateUuids","LARGE_INTEGER"] = 1+offsetof( struct NtAllocateUuids_AS_TYPES,LARGE_INTEGER );
 offsets["NtAllocateUuids","ULONG"] = 1+offsetof( struct NtAllocateUuids_AS_TYPES,ULONG );
 offsets["NtAllocateUuids","ULONG"] = 1+offsetof( struct NtAllocateUuids_AS_TYPES,ULONG1);
 offsets["NtAllocateUuids","CHAR"] = 1+offsetof( struct NtAllocateUuids_AS_TYPES,CHAR );
 offsets["NtAllocateUuids","NTSTATUS"] = 1+offsetof( struct NtAllocateUuids_AS_TYPES,NTSTATUS );
 offsets["NtAllocateVirtualMemory",""] = offsetof( union all , NtAllocateVirtualMemory );
 offsets["NtAllocateVirtualMemory","HANDLE"] = 1+offsetof( struct NtAllocateVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtAllocateVirtualMemory","PVOID"] = 1+offsetof( struct NtAllocateVirtualMemory_AS_TYPES,PVOID );
 offsets["NtAllocateVirtualMemory","ULONG"] = 1+offsetof( struct NtAllocateVirtualMemory_AS_TYPES,ULONG );
 offsets["NtAllocateVirtualMemory","SIZE_T"] = 1+offsetof( struct NtAllocateVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtAllocateVirtualMemory","ALLOCATION_TYPE"] = 1+offsetof( struct NtAllocateVirtualMemory_AS_TYPES,ALLOCATION_TYPE );
 offsets["NtAllocateVirtualMemory","PAGE_PROTECT"] = 1+offsetof( struct NtAllocateVirtualMemory_AS_TYPES,PAGE_PROTECT );
 offsets["NtAllocateVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtAllocateVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtAllocateVirtualMemoryEx",""] = offsetof( union all , NtAllocateVirtualMemoryEx );
 offsets["NtAllocateVirtualMemoryEx","HANDLE"] = 1+offsetof( struct NtAllocateVirtualMemoryEx_AS_TYPES,HANDLE );
 offsets["NtAllocateVirtualMemoryEx","PVOID"] = 1+offsetof( struct NtAllocateVirtualMemoryEx_AS_TYPES,PVOID );
 offsets["NtAllocateVirtualMemoryEx","SIZE_T"] = 1+offsetof( struct NtAllocateVirtualMemoryEx_AS_TYPES,SIZE_T );
 offsets["NtAllocateVirtualMemoryEx","ALLOCATION_TYPE"] = 1+offsetof( struct NtAllocateVirtualMemoryEx_AS_TYPES,ALLOCATION_TYPE );
 offsets["NtAllocateVirtualMemoryEx","PAGE_PROTECT"] = 1+offsetof( struct NtAllocateVirtualMemoryEx_AS_TYPES,PAGE_PROTECT );
 offsets["NtAllocateVirtualMemoryEx","MEM_EXTENDED_PARAMETER"] = 1+offsetof( struct NtAllocateVirtualMemoryEx_AS_TYPES,MEM_EXTENDED_PARAMETER );
 offsets["NtAllocateVirtualMemoryEx","ULONG"] = 1+offsetof( struct NtAllocateVirtualMemoryEx_AS_TYPES,ULONG );
 offsets["NtAllocateVirtualMemoryEx","NTSTATUS"] = 1+offsetof( struct NtAllocateVirtualMemoryEx_AS_TYPES,NTSTATUS );
 offsets["NtAlpcAcceptConnectPort",""] = offsetof( union all , NtAlpcAcceptConnectPort );
 offsets["NtAlpcAcceptConnectPort","PHANDLE"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,PHANDLE );
 offsets["NtAlpcAcceptConnectPort","HANDLE"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,HANDLE );
 offsets["NtAlpcAcceptConnectPort","ULONG"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,ULONG );
 offsets["NtAlpcAcceptConnectPort","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtAlpcAcceptConnectPort","ALPC_PORT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,ALPC_PORT_ATTRIBUTES );
 offsets["NtAlpcAcceptConnectPort","PVOID"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,PVOID );
 offsets["NtAlpcAcceptConnectPort","PORT_MESSAGE"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtAlpcAcceptConnectPort","ALPC_MESSAGE_ATTRIBUTES"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,ALPC_MESSAGE_ATTRIBUTES );
 offsets["NtAlpcAcceptConnectPort","BOOLEAN"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,BOOLEAN );
 offsets["NtAlpcAcceptConnectPort","NTSTATUS"] = 1+offsetof( struct NtAlpcAcceptConnectPort_AS_TYPES,NTSTATUS );
 offsets["NtAlpcCancelMessage",""] = offsetof( union all , NtAlpcCancelMessage );
 offsets["NtAlpcCancelMessage","HANDLE"] = 1+offsetof( struct NtAlpcCancelMessage_AS_TYPES,HANDLE );
 offsets["NtAlpcCancelMessage","ULONG"] = 1+offsetof( struct NtAlpcCancelMessage_AS_TYPES,ULONG );
 offsets["NtAlpcCancelMessage","ALPC_CONTEXT_ATTR"] = 1+offsetof( struct NtAlpcCancelMessage_AS_TYPES,ALPC_CONTEXT_ATTR );
 offsets["NtAlpcCancelMessage","NTSTATUS"] = 1+offsetof( struct NtAlpcCancelMessage_AS_TYPES,NTSTATUS );
 offsets["NtAlpcConnectPort",""] = offsetof( union all , NtAlpcConnectPort );
 offsets["NtAlpcConnectPort","PHANDLE"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,PHANDLE );
 offsets["NtAlpcConnectPort","UNICODE_STRING"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,UNICODE_STRING );
 offsets["NtAlpcConnectPort","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtAlpcConnectPort","ALPC_PORT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,ALPC_PORT_ATTRIBUTES );
 offsets["NtAlpcConnectPort","ULONG"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,ULONG );
 offsets["NtAlpcConnectPort","SID"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,SID );
 offsets["NtAlpcConnectPort","PORT_MESSAGE"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtAlpcConnectPort","SIZE_T"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,SIZE_T );
 offsets["NtAlpcConnectPort","ALPC_MESSAGE_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,ALPC_MESSAGE_ATTRIBUTES );
 offsets["NtAlpcConnectPort","ALPC_MESSAGE_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,ALPC_MESSAGE_ATTRIBUTES1);
 offsets["NtAlpcConnectPort","LARGE_INTEGER"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,LARGE_INTEGER );
 offsets["NtAlpcConnectPort","NTSTATUS"] = 1+offsetof( struct NtAlpcConnectPort_AS_TYPES,NTSTATUS );
 offsets["NtAlpcConnectPortEx",""] = offsetof( union all , NtAlpcConnectPortEx );
 offsets["NtAlpcConnectPortEx","PHANDLE"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,PHANDLE );
 offsets["NtAlpcConnectPortEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtAlpcConnectPortEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,OBJECT_ATTRIBUTES1);
 offsets["NtAlpcConnectPortEx","ALPC_PORT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,ALPC_PORT_ATTRIBUTES );
 offsets["NtAlpcConnectPortEx","ULONG"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,ULONG );
 offsets["NtAlpcConnectPortEx","SECURITY_DESCRIPTOR"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,SECURITY_DESCRIPTOR );
 offsets["NtAlpcConnectPortEx","PORT_MESSAGE"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,PORT_MESSAGE );
 offsets["NtAlpcConnectPortEx","SIZE_T"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,SIZE_T );
 offsets["NtAlpcConnectPortEx","ALPC_MESSAGE_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,ALPC_MESSAGE_ATTRIBUTES );
 offsets["NtAlpcConnectPortEx","ALPC_MESSAGE_ATTRIBUTES"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,ALPC_MESSAGE_ATTRIBUTES1);
 offsets["NtAlpcConnectPortEx","LARGE_INTEGER"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,LARGE_INTEGER );
 offsets["NtAlpcConnectPortEx","NTSTATUS"] = 1+offsetof( struct NtAlpcConnectPortEx_AS_TYPES,NTSTATUS );
 offsets["NtAlpcCreatePort",""] = offsetof( union all , NtAlpcCreatePort );
 offsets["NtAlpcCreatePort","PHANDLE"] = 1+offsetof( struct NtAlpcCreatePort_AS_TYPES,PHANDLE );
 offsets["NtAlpcCreatePort","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcCreatePort_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtAlpcCreatePort","ALPC_PORT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcCreatePort_AS_TYPES,ALPC_PORT_ATTRIBUTES );
 offsets["NtAlpcCreatePort","NTSTATUS"] = 1+offsetof( struct NtAlpcCreatePort_AS_TYPES,NTSTATUS );
 offsets["NtAlpcCreatePortSection",""] = offsetof( union all , NtAlpcCreatePortSection );
 offsets["NtAlpcCreatePortSection","HANDLE"] = 1+offsetof( struct NtAlpcCreatePortSection_AS_TYPES,HANDLE );
 offsets["NtAlpcCreatePortSection","ULONG"] = 1+offsetof( struct NtAlpcCreatePortSection_AS_TYPES,ULONG );
 offsets["NtAlpcCreatePortSection","HANDLE"] = 1+offsetof( struct NtAlpcCreatePortSection_AS_TYPES,HANDLE1);
 offsets["NtAlpcCreatePortSection","SIZE_T"] = 1+offsetof( struct NtAlpcCreatePortSection_AS_TYPES,SIZE_T );
 offsets["NtAlpcCreatePortSection","PHANDLE"] = 1+offsetof( struct NtAlpcCreatePortSection_AS_TYPES,PHANDLE );
 offsets["NtAlpcCreatePortSection","SIZE_T"] = 1+offsetof( struct NtAlpcCreatePortSection_AS_TYPES,SIZE_T1);
 offsets["NtAlpcCreatePortSection","NTSTATUS"] = 1+offsetof( struct NtAlpcCreatePortSection_AS_TYPES,NTSTATUS );
 offsets["NtAlpcCreateResourceReserve",""] = offsetof( union all , NtAlpcCreateResourceReserve );
 offsets["NtAlpcCreateResourceReserve","HANDLE"] = 1+offsetof( struct NtAlpcCreateResourceReserve_AS_TYPES,HANDLE );
 offsets["NtAlpcCreateResourceReserve","ULONG"] = 1+offsetof( struct NtAlpcCreateResourceReserve_AS_TYPES,ULONG );
 offsets["NtAlpcCreateResourceReserve","SIZE_T"] = 1+offsetof( struct NtAlpcCreateResourceReserve_AS_TYPES,SIZE_T );
 offsets["NtAlpcCreateResourceReserve","ULONG"] = 1+offsetof( struct NtAlpcCreateResourceReserve_AS_TYPES,ULONG1);
 offsets["NtAlpcCreateResourceReserve","NTSTATUS"] = 1+offsetof( struct NtAlpcCreateResourceReserve_AS_TYPES,NTSTATUS );
 offsets["NtAlpcCreateSectionView",""] = offsetof( union all , NtAlpcCreateSectionView );
 offsets["NtAlpcCreateSectionView","HANDLE"] = 1+offsetof( struct NtAlpcCreateSectionView_AS_TYPES,HANDLE );
 offsets["NtAlpcCreateSectionView","ULONG"] = 1+offsetof( struct NtAlpcCreateSectionView_AS_TYPES,ULONG );
 offsets["NtAlpcCreateSectionView","ALPC_DATA_VIEW_ATTR"] = 1+offsetof( struct NtAlpcCreateSectionView_AS_TYPES,ALPC_DATA_VIEW_ATTR );
 offsets["NtAlpcCreateSectionView","NTSTATUS"] = 1+offsetof( struct NtAlpcCreateSectionView_AS_TYPES,NTSTATUS );
 offsets["NtAlpcCreateSecurityContext",""] = offsetof( union all , NtAlpcCreateSecurityContext );
 offsets["NtAlpcCreateSecurityContext","HANDLE"] = 1+offsetof( struct NtAlpcCreateSecurityContext_AS_TYPES,HANDLE );
 offsets["NtAlpcCreateSecurityContext","ULONG"] = 1+offsetof( struct NtAlpcCreateSecurityContext_AS_TYPES,ULONG );
 offsets["NtAlpcCreateSecurityContext","ALPC_SECURITY_ATTR"] = 1+offsetof( struct NtAlpcCreateSecurityContext_AS_TYPES,ALPC_SECURITY_ATTR );
 offsets["NtAlpcCreateSecurityContext","NTSTATUS"] = 1+offsetof( struct NtAlpcCreateSecurityContext_AS_TYPES,NTSTATUS );
 offsets["NtAlpcDeletePortSection",""] = offsetof( union all , NtAlpcDeletePortSection );
 offsets["NtAlpcDeletePortSection","HANDLE"] = 1+offsetof( struct NtAlpcDeletePortSection_AS_TYPES,HANDLE );
 offsets["NtAlpcDeletePortSection","ULONG"] = 1+offsetof( struct NtAlpcDeletePortSection_AS_TYPES,ULONG );
 offsets["NtAlpcDeletePortSection","HANDLE"] = 1+offsetof( struct NtAlpcDeletePortSection_AS_TYPES,HANDLE1);
 offsets["NtAlpcDeletePortSection","NTSTATUS"] = 1+offsetof( struct NtAlpcDeletePortSection_AS_TYPES,NTSTATUS );
 offsets["NtAlpcDeleteResourceReserve",""] = offsetof( union all , NtAlpcDeleteResourceReserve );
 offsets["NtAlpcDeleteResourceReserve","HANDLE"] = 1+offsetof( struct NtAlpcDeleteResourceReserve_AS_TYPES,HANDLE );
 offsets["NtAlpcDeleteResourceReserve","ULONG"] = 1+offsetof( struct NtAlpcDeleteResourceReserve_AS_TYPES,ULONG );
 offsets["NtAlpcDeleteResourceReserve","ULONG"] = 1+offsetof( struct NtAlpcDeleteResourceReserve_AS_TYPES,ULONG1);
 offsets["NtAlpcDeleteResourceReserve","NTSTATUS"] = 1+offsetof( struct NtAlpcDeleteResourceReserve_AS_TYPES,NTSTATUS );
 offsets["NtAlpcDeleteSectionView",""] = offsetof( union all , NtAlpcDeleteSectionView );
 offsets["NtAlpcDeleteSectionView","HANDLE"] = 1+offsetof( struct NtAlpcDeleteSectionView_AS_TYPES,HANDLE );
 offsets["NtAlpcDeleteSectionView","ULONG"] = 1+offsetof( struct NtAlpcDeleteSectionView_AS_TYPES,ULONG );
 offsets["NtAlpcDeleteSectionView","PVOID"] = 1+offsetof( struct NtAlpcDeleteSectionView_AS_TYPES,PVOID );
 offsets["NtAlpcDeleteSectionView","NTSTATUS"] = 1+offsetof( struct NtAlpcDeleteSectionView_AS_TYPES,NTSTATUS );
 offsets["NtAlpcDeleteSecurityContext",""] = offsetof( union all , NtAlpcDeleteSecurityContext );
 offsets["NtAlpcDeleteSecurityContext","HANDLE"] = 1+offsetof( struct NtAlpcDeleteSecurityContext_AS_TYPES,HANDLE );
 offsets["NtAlpcDeleteSecurityContext","ULONG"] = 1+offsetof( struct NtAlpcDeleteSecurityContext_AS_TYPES,ULONG );
 offsets["NtAlpcDeleteSecurityContext","HANDLE"] = 1+offsetof( struct NtAlpcDeleteSecurityContext_AS_TYPES,HANDLE1);
 offsets["NtAlpcDeleteSecurityContext","NTSTATUS"] = 1+offsetof( struct NtAlpcDeleteSecurityContext_AS_TYPES,NTSTATUS );
 offsets["NtAlpcDisconnectPort",""] = offsetof( union all , NtAlpcDisconnectPort );
 offsets["NtAlpcDisconnectPort","HANDLE"] = 1+offsetof( struct NtAlpcDisconnectPort_AS_TYPES,HANDLE );
 offsets["NtAlpcDisconnectPort","ULONG"] = 1+offsetof( struct NtAlpcDisconnectPort_AS_TYPES,ULONG );
 offsets["NtAlpcDisconnectPort","NTSTATUS"] = 1+offsetof( struct NtAlpcDisconnectPort_AS_TYPES,NTSTATUS );
 offsets["NtAlpcImpersonateClientContainerOfPort",""] = offsetof( union all , NtAlpcImpersonateClientContainerOfPort );
 offsets["NtAlpcImpersonateClientContainerOfPort","HANDLE"] = 1+offsetof( struct NtAlpcImpersonateClientContainerOfPort_AS_TYPES,HANDLE );
 offsets["NtAlpcImpersonateClientContainerOfPort","PORT_MESSAGE"] = 1+offsetof( struct NtAlpcImpersonateClientContainerOfPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtAlpcImpersonateClientContainerOfPort","ULONG"] = 1+offsetof( struct NtAlpcImpersonateClientContainerOfPort_AS_TYPES,ULONG );
 offsets["NtAlpcImpersonateClientContainerOfPort","NTSTATUS"] = 1+offsetof( struct NtAlpcImpersonateClientContainerOfPort_AS_TYPES,NTSTATUS );
 offsets["NtAlpcImpersonateClientOfPort",""] = offsetof( union all , NtAlpcImpersonateClientOfPort );
 offsets["NtAlpcImpersonateClientOfPort","HANDLE"] = 1+offsetof( struct NtAlpcImpersonateClientOfPort_AS_TYPES,HANDLE );
 offsets["NtAlpcImpersonateClientOfPort","PORT_MESSAGE"] = 1+offsetof( struct NtAlpcImpersonateClientOfPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtAlpcImpersonateClientOfPort","PVOID"] = 1+offsetof( struct NtAlpcImpersonateClientOfPort_AS_TYPES,PVOID );
 offsets["NtAlpcImpersonateClientOfPort","NTSTATUS"] = 1+offsetof( struct NtAlpcImpersonateClientOfPort_AS_TYPES,NTSTATUS );
 offsets["NtAlpcOpenSenderProcess",""] = offsetof( union all , NtAlpcOpenSenderProcess );
 offsets["NtAlpcOpenSenderProcess","PHANDLE"] = 1+offsetof( struct NtAlpcOpenSenderProcess_AS_TYPES,PHANDLE );
 offsets["NtAlpcOpenSenderProcess","HANDLE"] = 1+offsetof( struct NtAlpcOpenSenderProcess_AS_TYPES,HANDLE );
 offsets["NtAlpcOpenSenderProcess","PORT_MESSAGE"] = 1+offsetof( struct NtAlpcOpenSenderProcess_AS_TYPES,PORT_MESSAGE );
 offsets["NtAlpcOpenSenderProcess","ULONG"] = 1+offsetof( struct NtAlpcOpenSenderProcess_AS_TYPES,ULONG );
 offsets["NtAlpcOpenSenderProcess","ACCESS_MASK_PROCESS"] = 1+offsetof( struct NtAlpcOpenSenderProcess_AS_TYPES,ACCESS_MASK_PROCESS );
 offsets["NtAlpcOpenSenderProcess","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcOpenSenderProcess_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtAlpcOpenSenderProcess","NTSTATUS"] = 1+offsetof( struct NtAlpcOpenSenderProcess_AS_TYPES,NTSTATUS );
 offsets["NtAlpcOpenSenderThread",""] = offsetof( union all , NtAlpcOpenSenderThread );
 offsets["NtAlpcOpenSenderThread","PHANDLE"] = 1+offsetof( struct NtAlpcOpenSenderThread_AS_TYPES,PHANDLE );
 offsets["NtAlpcOpenSenderThread","HANDLE"] = 1+offsetof( struct NtAlpcOpenSenderThread_AS_TYPES,HANDLE );
 offsets["NtAlpcOpenSenderThread","PORT_MESSAGE"] = 1+offsetof( struct NtAlpcOpenSenderThread_AS_TYPES,PORT_MESSAGE );
 offsets["NtAlpcOpenSenderThread","ULONG"] = 1+offsetof( struct NtAlpcOpenSenderThread_AS_TYPES,ULONG );
 offsets["NtAlpcOpenSenderThread","ACCESS_MASK_THREAD"] = 1+offsetof( struct NtAlpcOpenSenderThread_AS_TYPES,ACCESS_MASK_THREAD );
 offsets["NtAlpcOpenSenderThread","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtAlpcOpenSenderThread_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtAlpcOpenSenderThread","NTSTATUS"] = 1+offsetof( struct NtAlpcOpenSenderThread_AS_TYPES,NTSTATUS );
 offsets["NtAlpcQueryInformation",""] = offsetof( union all , NtAlpcQueryInformation );
 offsets["NtAlpcQueryInformation","HANDLE"] = 1+offsetof( struct NtAlpcQueryInformation_AS_TYPES,HANDLE );
 offsets["NtAlpcQueryInformation","ALPC_PORT_INFORMATION_CLASS"] = 1+offsetof( struct NtAlpcQueryInformation_AS_TYPES,ALPC_PORT_INFORMATION_CLASS );
 offsets["NtAlpcQueryInformation","PVOID"] = 1+offsetof( struct NtAlpcQueryInformation_AS_TYPES,PVOID );
 offsets["NtAlpcQueryInformation","ULONG"] = 1+offsetof( struct NtAlpcQueryInformation_AS_TYPES,ULONG );
 offsets["NtAlpcQueryInformation","ULONG"] = 1+offsetof( struct NtAlpcQueryInformation_AS_TYPES,ULONG1);
 offsets["NtAlpcQueryInformation","NTSTATUS"] = 1+offsetof( struct NtAlpcQueryInformation_AS_TYPES,NTSTATUS );
 offsets["NtAlpcQueryInformationMessage",""] = offsetof( union all , NtAlpcQueryInformationMessage );
 offsets["NtAlpcQueryInformationMessage","HANDLE"] = 1+offsetof( struct NtAlpcQueryInformationMessage_AS_TYPES,HANDLE );
 offsets["NtAlpcQueryInformationMessage","PORT_MESSAGE"] = 1+offsetof( struct NtAlpcQueryInformationMessage_AS_TYPES,PORT_MESSAGE );
 offsets["NtAlpcQueryInformationMessage","ALPC_MESSAGE_INFORMATION_CLASS"] = 1+offsetof( struct NtAlpcQueryInformationMessage_AS_TYPES,ALPC_MESSAGE_INFORMATION_CLASS );
 offsets["NtAlpcQueryInformationMessage","PVOID"] = 1+offsetof( struct NtAlpcQueryInformationMessage_AS_TYPES,PVOID );
 offsets["NtAlpcQueryInformationMessage","ULONG"] = 1+offsetof( struct NtAlpcQueryInformationMessage_AS_TYPES,ULONG );
 offsets["NtAlpcQueryInformationMessage","RETLEN"] = 1+offsetof( struct NtAlpcQueryInformationMessage_AS_TYPES,RETLEN );
 offsets["NtAlpcQueryInformationMessage","NTSTATUS"] = 1+offsetof( struct NtAlpcQueryInformationMessage_AS_TYPES,NTSTATUS );
 offsets["NtAlpcRevokeSecurityContext",""] = offsetof( union all , NtAlpcRevokeSecurityContext );
 offsets["NtAlpcRevokeSecurityContext","HANDLE"] = 1+offsetof( struct NtAlpcRevokeSecurityContext_AS_TYPES,HANDLE );
 offsets["NtAlpcRevokeSecurityContext","ULONG"] = 1+offsetof( struct NtAlpcRevokeSecurityContext_AS_TYPES,ULONG );
 offsets["NtAlpcRevokeSecurityContext","HANDLE"] = 1+offsetof( struct NtAlpcRevokeSecurityContext_AS_TYPES,HANDLE1);
 offsets["NtAlpcRevokeSecurityContext","NTSTATUS"] = 1+offsetof( struct NtAlpcRevokeSecurityContext_AS_TYPES,NTSTATUS );
 offsets["NtAlpcSetInformation",""] = offsetof( union all , NtAlpcSetInformation );
 offsets["NtAlpcSetInformation","HANDLE"] = 1+offsetof( struct NtAlpcSetInformation_AS_TYPES,HANDLE );
 offsets["NtAlpcSetInformation","ALPC_PORT_INFORMATION_CLASS"] = 1+offsetof( struct NtAlpcSetInformation_AS_TYPES,ALPC_PORT_INFORMATION_CLASS );
 offsets["NtAlpcSetInformation","PVOID"] = 1+offsetof( struct NtAlpcSetInformation_AS_TYPES,PVOID );
 offsets["NtAlpcSetInformation","ULONG"] = 1+offsetof( struct NtAlpcSetInformation_AS_TYPES,ULONG );
 offsets["NtAlpcSetInformation","NTSTATUS"] = 1+offsetof( struct NtAlpcSetInformation_AS_TYPES,NTSTATUS );
 offsets["NtAreMappedFilesTheSame",""] = offsetof( union all , NtAreMappedFilesTheSame );
 offsets["NtAreMappedFilesTheSame","PVOID"] = 1+offsetof( struct NtAreMappedFilesTheSame_AS_TYPES,PVOID );
 offsets["NtAreMappedFilesTheSame","PVOID"] = 1+offsetof( struct NtAreMappedFilesTheSame_AS_TYPES,PVOID1);
 offsets["NtAreMappedFilesTheSame","NTSTATUS"] = 1+offsetof( struct NtAreMappedFilesTheSame_AS_TYPES,NTSTATUS );
 offsets["NtAssignProcessToJobObject",""] = offsetof( union all , NtAssignProcessToJobObject );
 offsets["NtAssignProcessToJobObject","HANDLE"] = 1+offsetof( struct NtAssignProcessToJobObject_AS_TYPES,HANDLE );
 offsets["NtAssignProcessToJobObject","HANDLE"] = 1+offsetof( struct NtAssignProcessToJobObject_AS_TYPES,HANDLE1);
 offsets["NtAssignProcessToJobObject","NTSTATUS"] = 1+offsetof( struct NtAssignProcessToJobObject_AS_TYPES,NTSTATUS );
 offsets["NtAssociateWaitCompletionPacket",""] = offsetof( union all , NtAssociateWaitCompletionPacket );
 offsets["NtAssociateWaitCompletionPacket","HANDLE"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,HANDLE );
 offsets["NtAssociateWaitCompletionPacket","HANDLE"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,HANDLE1);
 offsets["NtAssociateWaitCompletionPacket","HANDLE"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,HANDLE2);
 offsets["NtAssociateWaitCompletionPacket","PVOID"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,PVOID );
 offsets["NtAssociateWaitCompletionPacket","PVOID"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,PVOID1);
 offsets["NtAssociateWaitCompletionPacket","NTSTATUS"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,NTSTATUS );
 offsets["NtAssociateWaitCompletionPacket","ULONG"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,ULONG );
 offsets["NtAssociateWaitCompletionPacket","BOOLEAN"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,BOOLEAN );
 offsets["NtAssociateWaitCompletionPacket","NTSTATUS"] = 1+offsetof( struct NtAssociateWaitCompletionPacket_AS_TYPES,NTSTATUS1);
 offsets["NtCallEnclave",""] = offsetof( union all , NtCallEnclave );
 offsets["NtCallEnclave","ULONG"] = 1+offsetof( struct NtCallEnclave_AS_TYPES,ULONG );
 offsets["NtCallEnclave","ULONG"] = 1+offsetof( struct NtCallEnclave_AS_TYPES,ULONG1);
 offsets["NtCallEnclave","NTSTATUS"] = 1+offsetof( struct NtCallEnclave_AS_TYPES,NTSTATUS );
 offsets["NtCallbackReturn",""] = offsetof( union all , NtCallbackReturn );
 offsets["NtCallbackReturn","PVOID"] = 1+offsetof( struct NtCallbackReturn_AS_TYPES,PVOID );
 offsets["NtCallbackReturn","ULONG"] = 1+offsetof( struct NtCallbackReturn_AS_TYPES,ULONG );
 offsets["NtCallbackReturn","NTSTATUS"] = 1+offsetof( struct NtCallbackReturn_AS_TYPES,NTSTATUS );
 offsets["NtCallbackReturn","NTSTATUS"] = 1+offsetof( struct NtCallbackReturn_AS_TYPES,NTSTATUS1);
 offsets["NtCancelIoFile",""] = offsetof( union all , NtCancelIoFile );
 offsets["NtCancelIoFile","HANDLE"] = 1+offsetof( struct NtCancelIoFile_AS_TYPES,HANDLE );
 offsets["NtCancelIoFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtCancelIoFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtCancelIoFile","NTSTATUS"] = 1+offsetof( struct NtCancelIoFile_AS_TYPES,NTSTATUS );
 offsets["NtCancelIoFileEx",""] = offsetof( union all , NtCancelIoFileEx );
 offsets["NtCancelIoFileEx","HANDLE"] = 1+offsetof( struct NtCancelIoFileEx_AS_TYPES,HANDLE );
 offsets["NtCancelIoFileEx","IO_STATUS_BLOCK"] = 1+offsetof( struct NtCancelIoFileEx_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtCancelIoFileEx","IO_STATUS_BLOCK"] = 1+offsetof( struct NtCancelIoFileEx_AS_TYPES,IO_STATUS_BLOCK1);
 offsets["NtCancelIoFileEx","NTSTATUS"] = 1+offsetof( struct NtCancelIoFileEx_AS_TYPES,NTSTATUS );
 offsets["NtCancelSynchronousIoFile",""] = offsetof( union all , NtCancelSynchronousIoFile );
 offsets["NtCancelSynchronousIoFile","HANDLE"] = 1+offsetof( struct NtCancelSynchronousIoFile_AS_TYPES,HANDLE );
 offsets["NtCancelSynchronousIoFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtCancelSynchronousIoFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtCancelSynchronousIoFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtCancelSynchronousIoFile_AS_TYPES,IO_STATUS_BLOCK1);
 offsets["NtCancelSynchronousIoFile","NTSTATUS"] = 1+offsetof( struct NtCancelSynchronousIoFile_AS_TYPES,NTSTATUS );
 offsets["NtCancelTimer",""] = offsetof( union all , NtCancelTimer );
 offsets["NtCancelTimer","HANDLE"] = 1+offsetof( struct NtCancelTimer_AS_TYPES,HANDLE );
 offsets["NtCancelTimer","BOOLEAN"] = 1+offsetof( struct NtCancelTimer_AS_TYPES,BOOLEAN );
 offsets["NtCancelTimer","NTSTATUS"] = 1+offsetof( struct NtCancelTimer_AS_TYPES,NTSTATUS );
 offsets["NtCancelTimer2",""] = offsetof( union all , NtCancelTimer2 );
 offsets["NtCancelTimer2","HANDLE"] = 1+offsetof( struct NtCancelTimer2_AS_TYPES,HANDLE );
 offsets["NtCancelTimer2","T2_CANCEL_PARAMETERS"] = 1+offsetof( struct NtCancelTimer2_AS_TYPES,T2_CANCEL_PARAMETERS );
 offsets["NtCancelTimer2","NTSTATUS"] = 1+offsetof( struct NtCancelTimer2_AS_TYPES,NTSTATUS );
 offsets["NtCancelWaitCompletionPacket",""] = offsetof( union all , NtCancelWaitCompletionPacket );
 offsets["NtCancelWaitCompletionPacket","HANDLE"] = 1+offsetof( struct NtCancelWaitCompletionPacket_AS_TYPES,HANDLE );
 offsets["NtCancelWaitCompletionPacket","BOOLEAN"] = 1+offsetof( struct NtCancelWaitCompletionPacket_AS_TYPES,BOOLEAN );
 offsets["NtCancelWaitCompletionPacket","NTSTATUS"] = 1+offsetof( struct NtCancelWaitCompletionPacket_AS_TYPES,NTSTATUS );
 offsets["NtClearEvent",""] = offsetof( union all , NtClearEvent );
 offsets["NtClearEvent","HANDLE"] = 1+offsetof( struct NtClearEvent_AS_TYPES,HANDLE );
 offsets["NtClearEvent","NTSTATUS"] = 1+offsetof( struct NtClearEvent_AS_TYPES,NTSTATUS );
 offsets["NtClose",""] = offsetof( union all , NtClose );
 offsets["NtClose","HANDLE"] = 1+offsetof( struct NtClose_AS_TYPES,HANDLE );
 offsets["NtClose","NTSTATUS"] = 1+offsetof( struct NtClose_AS_TYPES,NTSTATUS );
 offsets["NtCloseObjectAuditAlarm",""] = offsetof( union all , NtCloseObjectAuditAlarm );
 offsets["NtCloseObjectAuditAlarm","UNICODE_STRING"] = 1+offsetof( struct NtCloseObjectAuditAlarm_AS_TYPES,UNICODE_STRING );
 offsets["NtCloseObjectAuditAlarm","PVOID"] = 1+offsetof( struct NtCloseObjectAuditAlarm_AS_TYPES,PVOID );
 offsets["NtCloseObjectAuditAlarm","BOOLEAN"] = 1+offsetof( struct NtCloseObjectAuditAlarm_AS_TYPES,BOOLEAN );
 offsets["NtCloseObjectAuditAlarm","NTSTATUS"] = 1+offsetof( struct NtCloseObjectAuditAlarm_AS_TYPES,NTSTATUS );
 offsets["NtCommitComplete",""] = offsetof( union all , NtCommitComplete );
 offsets["NtCommitComplete","HANDLE"] = 1+offsetof( struct NtCommitComplete_AS_TYPES,HANDLE );
 offsets["NtCommitComplete","LARGE_INTEGER"] = 1+offsetof( struct NtCommitComplete_AS_TYPES,LARGE_INTEGER );
 offsets["NtCommitComplete","NTSTATUS"] = 1+offsetof( struct NtCommitComplete_AS_TYPES,NTSTATUS );
 offsets["NtCommitEnlistment",""] = offsetof( union all , NtCommitEnlistment );
 offsets["NtCommitEnlistment","HANDLE"] = 1+offsetof( struct NtCommitEnlistment_AS_TYPES,HANDLE );
 offsets["NtCommitEnlistment","LARGE_INTEGER"] = 1+offsetof( struct NtCommitEnlistment_AS_TYPES,LARGE_INTEGER );
 offsets["NtCommitEnlistment","NTSTATUS"] = 1+offsetof( struct NtCommitEnlistment_AS_TYPES,NTSTATUS );
 offsets["NtCommitRegistryTransaction",""] = offsetof( union all , NtCommitRegistryTransaction );
 offsets["NtCommitRegistryTransaction","HANDLE"] = 1+offsetof( struct NtCommitRegistryTransaction_AS_TYPES,HANDLE );
 offsets["NtCommitRegistryTransaction","ULONG"] = 1+offsetof( struct NtCommitRegistryTransaction_AS_TYPES,ULONG );
 offsets["NtCommitRegistryTransaction","NTSTATUS"] = 1+offsetof( struct NtCommitRegistryTransaction_AS_TYPES,NTSTATUS );
 offsets["NtCommitTransaction",""] = offsetof( union all , NtCommitTransaction );
 offsets["NtCommitTransaction","HANDLE"] = 1+offsetof( struct NtCommitTransaction_AS_TYPES,HANDLE );
 offsets["NtCommitTransaction","BOOLEAN"] = 1+offsetof( struct NtCommitTransaction_AS_TYPES,BOOLEAN );
 offsets["NtCommitTransaction","NTSTATUS"] = 1+offsetof( struct NtCommitTransaction_AS_TYPES,NTSTATUS );
 offsets["NtCompactKeys",""] = offsetof( union all , NtCompactKeys );
 offsets["NtCompactKeys","ULONG"] = 1+offsetof( struct NtCompactKeys_AS_TYPES,ULONG );
 offsets["NtCompactKeys","PHANDLE"] = 1+offsetof( struct NtCompactKeys_AS_TYPES,PHANDLE );
 offsets["NtCompactKeys","NTSTATUS"] = 1+offsetof( struct NtCompactKeys_AS_TYPES,NTSTATUS );
 offsets["NtCompareObjects",""] = offsetof( union all , NtCompareObjects );
 offsets["NtCompareObjects","HANDLE"] = 1+offsetof( struct NtCompareObjects_AS_TYPES,HANDLE );
 offsets["NtCompareObjects","HANDLE"] = 1+offsetof( struct NtCompareObjects_AS_TYPES,HANDLE1);
 offsets["NtCompareObjects","NTSTATUS"] = 1+offsetof( struct NtCompareObjects_AS_TYPES,NTSTATUS );
 offsets["NtCompareSigningLevels",""] = offsetof( union all , NtCompareSigningLevels );
 offsets["NtCompareSigningLevels","SE_SIGNING_LEVEL"] = 1+offsetof( struct NtCompareSigningLevels_AS_TYPES,SE_SIGNING_LEVEL );
 offsets["NtCompareSigningLevels","SE_SIGNING_LEVEL"] = 1+offsetof( struct NtCompareSigningLevels_AS_TYPES,SE_SIGNING_LEVEL1);
 offsets["NtCompareSigningLevels","NTSTATUS"] = 1+offsetof( struct NtCompareSigningLevels_AS_TYPES,NTSTATUS );
 offsets["NtCompareTokens",""] = offsetof( union all , NtCompareTokens );
 offsets["NtCompareTokens","HANDLE"] = 1+offsetof( struct NtCompareTokens_AS_TYPES,HANDLE );
 offsets["NtCompareTokens","HANDLE"] = 1+offsetof( struct NtCompareTokens_AS_TYPES,HANDLE1);
 offsets["NtCompareTokens","BOOLEAN"] = 1+offsetof( struct NtCompareTokens_AS_TYPES,BOOLEAN );
 offsets["NtCompareTokens","NTSTATUS"] = 1+offsetof( struct NtCompareTokens_AS_TYPES,NTSTATUS );
 offsets["NtCompleteConnectPort",""] = offsetof( union all , NtCompleteConnectPort );
 offsets["NtCompleteConnectPort","HANDLE"] = 1+offsetof( struct NtCompleteConnectPort_AS_TYPES,HANDLE );
 offsets["NtCompleteConnectPort","NTSTATUS"] = 1+offsetof( struct NtCompleteConnectPort_AS_TYPES,NTSTATUS );
 offsets["NtCompressKey",""] = offsetof( union all , NtCompressKey );
 offsets["NtCompressKey","HANDLE"] = 1+offsetof( struct NtCompressKey_AS_TYPES,HANDLE );
 offsets["NtCompressKey","NTSTATUS"] = 1+offsetof( struct NtCompressKey_AS_TYPES,NTSTATUS );
 offsets["NtConnectPort",""] = offsetof( union all , NtConnectPort );
 offsets["NtConnectPort","PHANDLE"] = 1+offsetof( struct NtConnectPort_AS_TYPES,PHANDLE );
 offsets["NtConnectPort","UNICODE_STRING"] = 1+offsetof( struct NtConnectPort_AS_TYPES,UNICODE_STRING );
 offsets["NtConnectPort","SECURITY_QUALITY_OF_SERVICE"] = 1+offsetof( struct NtConnectPort_AS_TYPES,SECURITY_QUALITY_OF_SERVICE );
 offsets["NtConnectPort","PORT_VIEW"] = 1+offsetof( struct NtConnectPort_AS_TYPES,PORT_VIEW );
 offsets["NtConnectPort","REMOTE_PORT_VIEW"] = 1+offsetof( struct NtConnectPort_AS_TYPES,REMOTE_PORT_VIEW );
 offsets["NtConnectPort","ULONG"] = 1+offsetof( struct NtConnectPort_AS_TYPES,ULONG );
 offsets["NtConnectPort","PVOID"] = 1+offsetof( struct NtConnectPort_AS_TYPES,PVOID );
 offsets["NtConnectPort","ULONG"] = 1+offsetof( struct NtConnectPort_AS_TYPES,ULONG1);
 offsets["NtConnectPort","NTSTATUS"] = 1+offsetof( struct NtConnectPort_AS_TYPES,NTSTATUS );
 offsets["NtContinue",""] = offsetof( union all , NtContinue );
 offsets["NtContinue","CONTEXT"] = 1+offsetof( struct NtContinue_AS_TYPES,CONTEXT );
 offsets["NtContinue","BOOLEAN"] = 1+offsetof( struct NtContinue_AS_TYPES,BOOLEAN );
 offsets["NtContinue","NTSTATUS"] = 1+offsetof( struct NtContinue_AS_TYPES,NTSTATUS );
 offsets["NtContinueEx",""] = offsetof( union all , NtContinueEx );
 offsets["NtContinueEx","CONTEXT"] = 1+offsetof( struct NtContinueEx_AS_TYPES,CONTEXT );
 offsets["NtContinueEx","KCONTINUE_ARGUMENT"] = 1+offsetof( struct NtContinueEx_AS_TYPES,KCONTINUE_ARGUMENT );
 offsets["NtContinueEx","NTSTATUS"] = 1+offsetof( struct NtContinueEx_AS_TYPES,NTSTATUS );
 offsets["NtConvertBetweenAuxiliaryCounterAndPerformanceCounter",""] = offsetof( union all , NtConvertBetweenAuxiliaryCounterAndPerformanceCounter );
 offsets["NtConvertBetweenAuxiliaryCounterAndPerformanceCounter","BOOLEAN"] = 1+offsetof( struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter_AS_TYPES,BOOLEAN );
 offsets["NtConvertBetweenAuxiliaryCounterAndPerformanceCounter","ULONG"] = 1+offsetof( struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter_AS_TYPES,ULONG );
 offsets["NtConvertBetweenAuxiliaryCounterAndPerformanceCounter","ULONG"] = 1+offsetof( struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter_AS_TYPES,ULONG1);
 offsets["NtConvertBetweenAuxiliaryCounterAndPerformanceCounter","ULONG"] = 1+offsetof( struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter_AS_TYPES,ULONG2);
 offsets["NtConvertBetweenAuxiliaryCounterAndPerformanceCounter","NTSTATUS"] = 1+offsetof( struct NtConvertBetweenAuxiliaryCounterAndPerformanceCounter_AS_TYPES,NTSTATUS );
 offsets["NtCreateCrossVmEvent",""] = offsetof( union all , NtCreateCrossVmEvent );
 offsets["NtCreateCrossVmEvent","PHANDLE"] = 1+offsetof( struct NtCreateCrossVmEvent_AS_TYPES,PHANDLE );
 offsets["NtCreateCrossVmEvent","ACCESS_MASK"] = 1+offsetof( struct NtCreateCrossVmEvent_AS_TYPES,ACCESS_MASK );
 offsets["NtCreateCrossVmEvent","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateCrossVmEvent_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateCrossVmEvent","ULONG"] = 1+offsetof( struct NtCreateCrossVmEvent_AS_TYPES,ULONG );
 offsets["NtCreateCrossVmEvent","GUID"] = 1+offsetof( struct NtCreateCrossVmEvent_AS_TYPES,GUID );
 offsets["NtCreateCrossVmEvent","GUID"] = 1+offsetof( struct NtCreateCrossVmEvent_AS_TYPES,GUID1);
 offsets["NtCreateCrossVmEvent","NTSTATUS"] = 1+offsetof( struct NtCreateCrossVmEvent_AS_TYPES,NTSTATUS );
 offsets["NtCreateCrossVmMutant",""] = offsetof( union all , NtCreateCrossVmMutant );
 offsets["NtCreateCrossVmMutant","PHANDLE"] = 1+offsetof( struct NtCreateCrossVmMutant_AS_TYPES,PHANDLE );
 offsets["NtCreateCrossVmMutant","ACCESS_MASK_MUTANT"] = 1+offsetof( struct NtCreateCrossVmMutant_AS_TYPES,ACCESS_MASK_MUTANT );
 offsets["NtCreateCrossVmMutant","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateCrossVmMutant_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateCrossVmMutant","ULONG"] = 1+offsetof( struct NtCreateCrossVmMutant_AS_TYPES,ULONG );
 offsets["NtCreateCrossVmMutant","GUID"] = 1+offsetof( struct NtCreateCrossVmMutant_AS_TYPES,GUID );
 offsets["NtCreateCrossVmMutant","GUID"] = 1+offsetof( struct NtCreateCrossVmMutant_AS_TYPES,GUID1);
 offsets["NtCreateCrossVmMutant","NTSTATUS"] = 1+offsetof( struct NtCreateCrossVmMutant_AS_TYPES,NTSTATUS );
 offsets["NtCreateDirectoryObject",""] = offsetof( union all , NtCreateDirectoryObject );
 offsets["NtCreateDirectoryObject","PHANDLE"] = 1+offsetof( struct NtCreateDirectoryObject_AS_TYPES,PHANDLE );
 offsets["NtCreateDirectoryObject","ACCESS_MASK_DIRECTORY"] = 1+offsetof( struct NtCreateDirectoryObject_AS_TYPES,ACCESS_MASK_DIRECTORY );
 offsets["NtCreateDirectoryObject","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateDirectoryObject_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateDirectoryObject","NTSTATUS"] = 1+offsetof( struct NtCreateDirectoryObject_AS_TYPES,NTSTATUS );
 offsets["NtCreateDirectoryObjectEx",""] = offsetof( union all , NtCreateDirectoryObjectEx );
 offsets["NtCreateDirectoryObjectEx","PHANDLE"] = 1+offsetof( struct NtCreateDirectoryObjectEx_AS_TYPES,PHANDLE );
 offsets["NtCreateDirectoryObjectEx","ACCESS_MASK_DIRECTORY"] = 1+offsetof( struct NtCreateDirectoryObjectEx_AS_TYPES,ACCESS_MASK_DIRECTORY );
 offsets["NtCreateDirectoryObjectEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateDirectoryObjectEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateDirectoryObjectEx","HANDLE"] = 1+offsetof( struct NtCreateDirectoryObjectEx_AS_TYPES,HANDLE );
 offsets["NtCreateDirectoryObjectEx","ULONG"] = 1+offsetof( struct NtCreateDirectoryObjectEx_AS_TYPES,ULONG );
 offsets["NtCreateDirectoryObjectEx","NTSTATUS"] = 1+offsetof( struct NtCreateDirectoryObjectEx_AS_TYPES,NTSTATUS );
 offsets["NtCreateEnclave",""] = offsetof( union all , NtCreateEnclave );
 offsets["NtCreateEnclave","PHANDLE"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,PHANDLE );
 offsets["NtCreateEnclave","PVOID"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,PVOID );
 offsets["NtCreateEnclave","ULONG"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,ULONG );
 offsets["NtCreateEnclave","SIZE_T"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,SIZE_T );
 offsets["NtCreateEnclave","SIZE_T"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,SIZE_T1);
 offsets["NtCreateEnclave","ULONG"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,ULONG1);
 offsets["NtCreateEnclave","PVOID"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,PVOID1);
 offsets["NtCreateEnclave","ULONG"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,ULONG2);
 offsets["NtCreateEnclave","ULONG"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,ULONG3);
 offsets["NtCreateEnclave","NTSTATUS"] = 1+offsetof( struct NtCreateEnclave_AS_TYPES,NTSTATUS );
 offsets["NtCreateEnlistment",""] = offsetof( union all , NtCreateEnlistment );
 offsets["NtCreateEnlistment","PHANDLE"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,PHANDLE );
 offsets["NtCreateEnlistment","ACCESS_MASK_ENLISTMENT"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,ACCESS_MASK_ENLISTMENT );
 offsets["NtCreateEnlistment","HANDLE"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,HANDLE );
 offsets["NtCreateEnlistment","HANDLE"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,HANDLE1);
 offsets["NtCreateEnlistment","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateEnlistment","ULONG"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,ULONG );
 offsets["NtCreateEnlistment","NOTIFICATION_MASK"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,NOTIFICATION_MASK );
 offsets["NtCreateEnlistment","PVOID"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,PVOID );
 offsets["NtCreateEnlistment","NTSTATUS"] = 1+offsetof( struct NtCreateEnlistment_AS_TYPES,NTSTATUS );
 offsets["NtCreateEvent",""] = offsetof( union all , NtCreateEvent );
 offsets["NtCreateEvent","PHANDLE"] = 1+offsetof( struct NtCreateEvent_AS_TYPES,PHANDLE );
 offsets["NtCreateEvent","ACCESS_MASK_EVENT"] = 1+offsetof( struct NtCreateEvent_AS_TYPES,ACCESS_MASK_EVENT );
 offsets["NtCreateEvent","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateEvent_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateEvent","EVENT_TYPE"] = 1+offsetof( struct NtCreateEvent_AS_TYPES,EVENT_TYPE );
 offsets["NtCreateEvent","BOOLEAN"] = 1+offsetof( struct NtCreateEvent_AS_TYPES,BOOLEAN );
 offsets["NtCreateEvent","NTSTATUS"] = 1+offsetof( struct NtCreateEvent_AS_TYPES,NTSTATUS );
 offsets["NtCreateEventPair",""] = offsetof( union all , NtCreateEventPair );
 offsets["NtCreateEventPair","PHANDLE"] = 1+offsetof( struct NtCreateEventPair_AS_TYPES,PHANDLE );
 offsets["NtCreateEventPair","ACCESS_MASK_EVENTPAIR"] = 1+offsetof( struct NtCreateEventPair_AS_TYPES,ACCESS_MASK_EVENTPAIR );
 offsets["NtCreateEventPair","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateEventPair_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateEventPair","NTSTATUS"] = 1+offsetof( struct NtCreateEventPair_AS_TYPES,NTSTATUS );
 offsets["NtCreateFile",""] = offsetof( union all , NtCreateFile );
 offsets["NtCreateFile","PHANDLE"] = 1+offsetof( struct NtCreateFile_AS_TYPES,PHANDLE );
 offsets["NtCreateFile","ACCESS_MASK_FILE"] = 1+offsetof( struct NtCreateFile_AS_TYPES,ACCESS_MASK_FILE );
 offsets["NtCreateFile","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateFile_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtCreateFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtCreateFile","LARGE_INTEGER"] = 1+offsetof( struct NtCreateFile_AS_TYPES,LARGE_INTEGER );
 offsets["NtCreateFile","FILE_ATTRIBUTES"] = 1+offsetof( struct NtCreateFile_AS_TYPES,FILE_ATTRIBUTES );
 offsets["NtCreateFile","FILE_SHARE_ACCESS"] = 1+offsetof( struct NtCreateFile_AS_TYPES,FILE_SHARE_ACCESS );
 offsets["NtCreateFile","FILE_DISPOSITION"] = 1+offsetof( struct NtCreateFile_AS_TYPES,FILE_DISPOSITION );
 offsets["NtCreateFile","FILE_OPTIONS"] = 1+offsetof( struct NtCreateFile_AS_TYPES,FILE_OPTIONS );
 offsets["NtCreateFile","PVOID"] = 1+offsetof( struct NtCreateFile_AS_TYPES,PVOID );
 offsets["NtCreateFile","ULONG"] = 1+offsetof( struct NtCreateFile_AS_TYPES,ULONG );
 offsets["NtCreateFile","NTSTATUS"] = 1+offsetof( struct NtCreateFile_AS_TYPES,NTSTATUS );
 offsets["NtCreateIRTimer",""] = offsetof( union all , NtCreateIRTimer );
 offsets["NtCreateIRTimer","PHANDLE"] = 1+offsetof( struct NtCreateIRTimer_AS_TYPES,PHANDLE );
 offsets["NtCreateIRTimer","IR_TIMER_EXTRA_CREATE_PARAMETER"] = 1+offsetof( struct NtCreateIRTimer_AS_TYPES,IR_TIMER_EXTRA_CREATE_PARAMETER );
 offsets["NtCreateIRTimer","ACCESS_MASK_TIMER"] = 1+offsetof( struct NtCreateIRTimer_AS_TYPES,ACCESS_MASK_TIMER );
 offsets["NtCreateIRTimer","NTSTATUS"] = 1+offsetof( struct NtCreateIRTimer_AS_TYPES,NTSTATUS );
 offsets["NtCreateIoCompletion",""] = offsetof( union all , NtCreateIoCompletion );
 offsets["NtCreateIoCompletion","PHANDLE"] = 1+offsetof( struct NtCreateIoCompletion_AS_TYPES,PHANDLE );
 offsets["NtCreateIoCompletion","ACCESS_MASK_IOCOMPLETION"] = 1+offsetof( struct NtCreateIoCompletion_AS_TYPES,ACCESS_MASK_IOCOMPLETION );
 offsets["NtCreateIoCompletion","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateIoCompletion_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateIoCompletion","ULONG"] = 1+offsetof( struct NtCreateIoCompletion_AS_TYPES,ULONG );
 offsets["NtCreateIoCompletion","NTSTATUS"] = 1+offsetof( struct NtCreateIoCompletion_AS_TYPES,NTSTATUS );
 offsets["NtCreateJobObject",""] = offsetof( union all , NtCreateJobObject );
 offsets["NtCreateJobObject","PHANDLE"] = 1+offsetof( struct NtCreateJobObject_AS_TYPES,PHANDLE );
 offsets["NtCreateJobObject","ACCESS_MASK_JOB"] = 1+offsetof( struct NtCreateJobObject_AS_TYPES,ACCESS_MASK_JOB );
 offsets["NtCreateJobObject","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateJobObject_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateJobObject","NTSTATUS"] = 1+offsetof( struct NtCreateJobObject_AS_TYPES,NTSTATUS );
 offsets["NtCreateJobSet",""] = offsetof( union all , NtCreateJobSet );
 offsets["NtCreateJobSet","ULONG"] = 1+offsetof( struct NtCreateJobSet_AS_TYPES,ULONG );
 offsets["NtCreateJobSet","JOB_SET_ARRAY"] = 1+offsetof( struct NtCreateJobSet_AS_TYPES,JOB_SET_ARRAY );
 offsets["NtCreateJobSet","ULONG"] = 1+offsetof( struct NtCreateJobSet_AS_TYPES,ULONG1);
 offsets["NtCreateJobSet","NTSTATUS"] = 1+offsetof( struct NtCreateJobSet_AS_TYPES,NTSTATUS );
 offsets["NtCreateKey",""] = offsetof( union all , NtCreateKey );
 offsets["NtCreateKey","PHANDLE"] = 1+offsetof( struct NtCreateKey_AS_TYPES,PHANDLE );
 offsets["NtCreateKey","ACCESS_MASK_KEY"] = 1+offsetof( struct NtCreateKey_AS_TYPES,ACCESS_MASK_KEY );
 offsets["NtCreateKey","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateKey_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateKey","ULONG"] = 1+offsetof( struct NtCreateKey_AS_TYPES,ULONG );
 offsets["NtCreateKey","UNICODE_STRING"] = 1+offsetof( struct NtCreateKey_AS_TYPES,UNICODE_STRING );
 offsets["NtCreateKey","ULONG"] = 1+offsetof( struct NtCreateKey_AS_TYPES,ULONG1);
 offsets["NtCreateKey","ULONG"] = 1+offsetof( struct NtCreateKey_AS_TYPES,ULONG2);
 offsets["NtCreateKey","NTSTATUS"] = 1+offsetof( struct NtCreateKey_AS_TYPES,NTSTATUS );
 offsets["NtCreateKeyTransacted",""] = offsetof( union all , NtCreateKeyTransacted );
 offsets["NtCreateKeyTransacted","PHANDLE"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,PHANDLE );
 offsets["NtCreateKeyTransacted","ACCESS_MASK_KEY"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,ACCESS_MASK_KEY );
 offsets["NtCreateKeyTransacted","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateKeyTransacted","ULONG"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,ULONG );
 offsets["NtCreateKeyTransacted","UNICODE_STRING"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,UNICODE_STRING );
 offsets["NtCreateKeyTransacted","ULONG"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,ULONG1);
 offsets["NtCreateKeyTransacted","HANDLE"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,HANDLE );
 offsets["NtCreateKeyTransacted","ULONG"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,ULONG2);
 offsets["NtCreateKeyTransacted","NTSTATUS"] = 1+offsetof( struct NtCreateKeyTransacted_AS_TYPES,NTSTATUS );
 offsets["NtCreateKeyedEvent",""] = offsetof( union all , NtCreateKeyedEvent );
 offsets["NtCreateKeyedEvent","PHANDLE"] = 1+offsetof( struct NtCreateKeyedEvent_AS_TYPES,PHANDLE );
 offsets["NtCreateKeyedEvent","ACCESS_MASK_KEYEDEVENT"] = 1+offsetof( struct NtCreateKeyedEvent_AS_TYPES,ACCESS_MASK_KEYEDEVENT );
 offsets["NtCreateKeyedEvent","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateKeyedEvent_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateKeyedEvent","ULONG"] = 1+offsetof( struct NtCreateKeyedEvent_AS_TYPES,ULONG );
 offsets["NtCreateKeyedEvent","NTSTATUS"] = 1+offsetof( struct NtCreateKeyedEvent_AS_TYPES,NTSTATUS );
 offsets["NtCreateLowBoxToken",""] = offsetof( union all , NtCreateLowBoxToken );
 offsets["NtCreateLowBoxToken","PHANDLE"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,PHANDLE );
 offsets["NtCreateLowBoxToken","HANDLE"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,HANDLE );
 offsets["NtCreateLowBoxToken","ACCESS_MASK_TOKEN"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,ACCESS_MASK_TOKEN );
 offsets["NtCreateLowBoxToken","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateLowBoxToken","SID"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,SID );
 offsets["NtCreateLowBoxToken","ULONG"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,ULONG );
 offsets["NtCreateLowBoxToken","SID_AND_ATTRIBUTES"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,SID_AND_ATTRIBUTES );
 offsets["NtCreateLowBoxToken","ULONG"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,ULONG1);
 offsets["NtCreateLowBoxToken","PHANDLE"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,PHANDLE1);
 offsets["NtCreateLowBoxToken","NTSTATUS"] = 1+offsetof( struct NtCreateLowBoxToken_AS_TYPES,NTSTATUS );
 offsets["NtCreateMailslotFile",""] = offsetof( union all , NtCreateMailslotFile );
 offsets["NtCreateMailslotFile","PHANDLE"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,PHANDLE );
 offsets["NtCreateMailslotFile","ULONG"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,ULONG );
 offsets["NtCreateMailslotFile","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateMailslotFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtCreateMailslotFile","ULONG"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,ULONG1);
 offsets["NtCreateMailslotFile","ULONG"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,ULONG2);
 offsets["NtCreateMailslotFile","ULONG"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,ULONG3);
 offsets["NtCreateMailslotFile","LARGE_INTEGER"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,LARGE_INTEGER );
 offsets["NtCreateMailslotFile","NTSTATUS"] = 1+offsetof( struct NtCreateMailslotFile_AS_TYPES,NTSTATUS );
 offsets["NtCreateMutant",""] = offsetof( union all , NtCreateMutant );
 offsets["NtCreateMutant","PHANDLE"] = 1+offsetof( struct NtCreateMutant_AS_TYPES,PHANDLE );
 offsets["NtCreateMutant","ACCESS_MASK_MUTANT"] = 1+offsetof( struct NtCreateMutant_AS_TYPES,ACCESS_MASK_MUTANT );
 offsets["NtCreateMutant","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateMutant_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateMutant","BOOLEAN"] = 1+offsetof( struct NtCreateMutant_AS_TYPES,BOOLEAN );
 offsets["NtCreateMutant","NTSTATUS"] = 1+offsetof( struct NtCreateMutant_AS_TYPES,NTSTATUS );
 offsets["NtCreateNamedPipeFile",""] = offsetof( union all , NtCreateNamedPipeFile );
 offsets["NtCreateNamedPipeFile","PHANDLE"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,PHANDLE );
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG );
 offsets["NtCreateNamedPipeFile","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateNamedPipeFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG1);
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG2);
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG3);
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG4);
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG5);
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG6);
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG7);
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG8);
 offsets["NtCreateNamedPipeFile","ULONG"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,ULONG9);
 offsets["NtCreateNamedPipeFile","LARGE_INTEGER"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,LARGE_INTEGER );
 offsets["NtCreateNamedPipeFile","NTSTATUS"] = 1+offsetof( struct NtCreateNamedPipeFile_AS_TYPES,NTSTATUS );
 offsets["NtCreatePagingFile",""] = offsetof( union all , NtCreatePagingFile );
 offsets["NtCreatePagingFile","UNICODE_STRING"] = 1+offsetof( struct NtCreatePagingFile_AS_TYPES,UNICODE_STRING );
 offsets["NtCreatePagingFile","LARGE_INTEGER"] = 1+offsetof( struct NtCreatePagingFile_AS_TYPES,LARGE_INTEGER );
 offsets["NtCreatePagingFile","LARGE_INTEGER"] = 1+offsetof( struct NtCreatePagingFile_AS_TYPES,LARGE_INTEGER1);
 offsets["NtCreatePagingFile","ULONG"] = 1+offsetof( struct NtCreatePagingFile_AS_TYPES,ULONG );
 offsets["NtCreatePagingFile","NTSTATUS"] = 1+offsetof( struct NtCreatePagingFile_AS_TYPES,NTSTATUS );
 offsets["NtCreatePartition",""] = offsetof( union all , NtCreatePartition );
 offsets["NtCreatePartition","PHANDLE"] = 1+offsetof( struct NtCreatePartition_AS_TYPES,PHANDLE );
 offsets["NtCreatePartition","PHANDLE"] = 1+offsetof( struct NtCreatePartition_AS_TYPES,PHANDLE1);
 offsets["NtCreatePartition","ACCESS_MASK_PARTITION"] = 1+offsetof( struct NtCreatePartition_AS_TYPES,ACCESS_MASK_PARTITION );
 offsets["NtCreatePartition","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreatePartition_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreatePartition","NTSTATUS"] = 1+offsetof( struct NtCreatePartition_AS_TYPES,NTSTATUS );
 offsets["NtCreatePort",""] = offsetof( union all , NtCreatePort );
 offsets["NtCreatePort","PHANDLE"] = 1+offsetof( struct NtCreatePort_AS_TYPES,PHANDLE );
 offsets["NtCreatePort","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreatePort_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreatePort","ULONG"] = 1+offsetof( struct NtCreatePort_AS_TYPES,ULONG );
 offsets["NtCreatePort","ULONG"] = 1+offsetof( struct NtCreatePort_AS_TYPES,ULONG1);
 offsets["NtCreatePort","ULONG"] = 1+offsetof( struct NtCreatePort_AS_TYPES,ULONG2);
 offsets["NtCreatePort","NTSTATUS"] = 1+offsetof( struct NtCreatePort_AS_TYPES,NTSTATUS );
 offsets["NtCreatePrivateNamespace",""] = offsetof( union all , NtCreatePrivateNamespace );
 offsets["NtCreatePrivateNamespace","PHANDLE"] = 1+offsetof( struct NtCreatePrivateNamespace_AS_TYPES,PHANDLE );
 offsets["NtCreatePrivateNamespace","ACCESS_MASK"] = 1+offsetof( struct NtCreatePrivateNamespace_AS_TYPES,ACCESS_MASK );
 offsets["NtCreatePrivateNamespace","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreatePrivateNamespace_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreatePrivateNamespace","PVOID"] = 1+offsetof( struct NtCreatePrivateNamespace_AS_TYPES,PVOID );
 offsets["NtCreatePrivateNamespace","NTSTATUS"] = 1+offsetof( struct NtCreatePrivateNamespace_AS_TYPES,NTSTATUS );
 offsets["NtCreateProcess",""] = offsetof( union all , NtCreateProcess );
 offsets["NtCreateProcess","PHANDLE"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,PHANDLE );
 offsets["NtCreateProcess","ACCESS_MASK_PROCESS"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,ACCESS_MASK_PROCESS );
 offsets["NtCreateProcess","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateProcess","HANDLE"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,HANDLE );
 offsets["NtCreateProcess","BOOLEAN"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,BOOLEAN );
 offsets["NtCreateProcess","HANDLE"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,HANDLE1);
 offsets["NtCreateProcess","HANDLE"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,HANDLE2);
 offsets["NtCreateProcess","HANDLE"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,HANDLE3);
 offsets["NtCreateProcess","NTSTATUS"] = 1+offsetof( struct NtCreateProcess_AS_TYPES,NTSTATUS );
 offsets["NtCreateProcessEx",""] = offsetof( union all , NtCreateProcessEx );
 offsets["NtCreateProcessEx","PHANDLE"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,PHANDLE );
 offsets["NtCreateProcessEx","ACCESS_MASK_PROCESS"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,ACCESS_MASK_PROCESS );
 offsets["NtCreateProcessEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateProcessEx","HANDLE"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,HANDLE );
 offsets["NtCreateProcessEx","ULONG"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,ULONG );
 offsets["NtCreateProcessEx","HANDLE"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,HANDLE1);
 offsets["NtCreateProcessEx","HANDLE"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,HANDLE2);
 offsets["NtCreateProcessEx","HANDLE"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,HANDLE3);
 offsets["NtCreateProcessEx","ULONG"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,ULONG1);
 offsets["NtCreateProcessEx","NTSTATUS"] = 1+offsetof( struct NtCreateProcessEx_AS_TYPES,NTSTATUS );
 offsets["NtCreateProfile",""] = offsetof( union all , NtCreateProfile );
 offsets["NtCreateProfile","PHANDLE"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,PHANDLE );
 offsets["NtCreateProfile","HANDLE"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,HANDLE );
 offsets["NtCreateProfile","PVOID"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,PVOID );
 offsets["NtCreateProfile","SIZE_T"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,SIZE_T );
 offsets["NtCreateProfile","ULONG"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,ULONG );
 offsets["NtCreateProfile","ULONG"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,ULONG1);
 offsets["NtCreateProfile","ULONG"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,ULONG2);
 offsets["NtCreateProfile","KPROFILE_SOURCE"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,KPROFILE_SOURCE );
 offsets["NtCreateProfile","KAFFINITY"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,KAFFINITY );
 offsets["NtCreateProfile","NTSTATUS"] = 1+offsetof( struct NtCreateProfile_AS_TYPES,NTSTATUS );
 offsets["NtCreateProfileEx",""] = offsetof( union all , NtCreateProfileEx );
 offsets["NtCreateProfileEx","PHANDLE"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,PHANDLE );
 offsets["NtCreateProfileEx","HANDLE"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,HANDLE );
 offsets["NtCreateProfileEx","PVOID"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,PVOID );
 offsets["NtCreateProfileEx","SIZE_T"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,SIZE_T );
 offsets["NtCreateProfileEx","ULONG"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,ULONG );
 offsets["NtCreateProfileEx","ULONG"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,ULONG1);
 offsets["NtCreateProfileEx","ULONG"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,ULONG2);
 offsets["NtCreateProfileEx","KPROFILE_SOURCE"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,KPROFILE_SOURCE );
 offsets["NtCreateProfileEx","USHORT"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,USHORT );
 offsets["NtCreateProfileEx","GROUP_AFFINITY"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,GROUP_AFFINITY );
 offsets["NtCreateProfileEx","NTSTATUS"] = 1+offsetof( struct NtCreateProfileEx_AS_TYPES,NTSTATUS );
 offsets["NtCreateRegistryTransaction",""] = offsetof( union all , NtCreateRegistryTransaction );
 offsets["NtCreateRegistryTransaction","PHANDLE"] = 1+offsetof( struct NtCreateRegistryTransaction_AS_TYPES,PHANDLE );
 offsets["NtCreateRegistryTransaction","ACCESS_MASK_TRANSACTION"] = 1+offsetof( struct NtCreateRegistryTransaction_AS_TYPES,ACCESS_MASK_TRANSACTION );
 offsets["NtCreateRegistryTransaction","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateRegistryTransaction_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateRegistryTransaction","ULONG"] = 1+offsetof( struct NtCreateRegistryTransaction_AS_TYPES,ULONG );
 offsets["NtCreateRegistryTransaction","NTSTATUS"] = 1+offsetof( struct NtCreateRegistryTransaction_AS_TYPES,NTSTATUS );
 offsets["NtCreateResourceManager",""] = offsetof( union all , NtCreateResourceManager );
 offsets["NtCreateResourceManager","PHANDLE"] = 1+offsetof( struct NtCreateResourceManager_AS_TYPES,PHANDLE );
 offsets["NtCreateResourceManager","ACCESS_MASK_RESOURCEMANAGER"] = 1+offsetof( struct NtCreateResourceManager_AS_TYPES,ACCESS_MASK_RESOURCEMANAGER );
 offsets["NtCreateResourceManager","HANDLE"] = 1+offsetof( struct NtCreateResourceManager_AS_TYPES,HANDLE );
 offsets["NtCreateResourceManager","GUID"] = 1+offsetof( struct NtCreateResourceManager_AS_TYPES,GUID );
 offsets["NtCreateResourceManager","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateResourceManager_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateResourceManager","ULONG"] = 1+offsetof( struct NtCreateResourceManager_AS_TYPES,ULONG );
 offsets["NtCreateResourceManager","UNICODE_STRING"] = 1+offsetof( struct NtCreateResourceManager_AS_TYPES,UNICODE_STRING );
 offsets["NtCreateResourceManager","NTSTATUS"] = 1+offsetof( struct NtCreateResourceManager_AS_TYPES,NTSTATUS );
 offsets["NtCreateSection",""] = offsetof( union all , NtCreateSection );
 offsets["NtCreateSection","PHANDLE"] = 1+offsetof( struct NtCreateSection_AS_TYPES,PHANDLE );
 offsets["NtCreateSection","ACCESS_MASK_SECTION"] = 1+offsetof( struct NtCreateSection_AS_TYPES,ACCESS_MASK_SECTION );
 offsets["NtCreateSection","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateSection_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateSection","LARGE_INTEGER"] = 1+offsetof( struct NtCreateSection_AS_TYPES,LARGE_INTEGER );
 offsets["NtCreateSection","ULONG"] = 1+offsetof( struct NtCreateSection_AS_TYPES,ULONG );
 offsets["NtCreateSection","ULONG"] = 1+offsetof( struct NtCreateSection_AS_TYPES,ULONG1);
 offsets["NtCreateSection","HANDLE"] = 1+offsetof( struct NtCreateSection_AS_TYPES,HANDLE );
 offsets["NtCreateSection","NTSTATUS"] = 1+offsetof( struct NtCreateSection_AS_TYPES,NTSTATUS );
 offsets["NtCreateSectionEx",""] = offsetof( union all , NtCreateSectionEx );
 offsets["NtCreateSectionEx","PHANDLE"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,PHANDLE );
 offsets["NtCreateSectionEx","ACCESS_MASK_SECTION"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,ACCESS_MASK_SECTION );
 offsets["NtCreateSectionEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateSectionEx","LARGE_INTEGER"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,LARGE_INTEGER );
 offsets["NtCreateSectionEx","ULONG"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,ULONG );
 offsets["NtCreateSectionEx","ULONG"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,ULONG1);
 offsets["NtCreateSectionEx","HANDLE"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,HANDLE );
 offsets["NtCreateSectionEx","MEM_EXTENDED_PARAMETER"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,MEM_EXTENDED_PARAMETER );
 offsets["NtCreateSectionEx","ULONG"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,ULONG2);
 offsets["NtCreateSectionEx","NTSTATUS"] = 1+offsetof( struct NtCreateSectionEx_AS_TYPES,NTSTATUS );
 offsets["NtCreateSemaphore",""] = offsetof( union all , NtCreateSemaphore );
 offsets["NtCreateSemaphore","PHANDLE"] = 1+offsetof( struct NtCreateSemaphore_AS_TYPES,PHANDLE );
 offsets["NtCreateSemaphore","ACCESS_MASK_SEMAPHORE"] = 1+offsetof( struct NtCreateSemaphore_AS_TYPES,ACCESS_MASK_SEMAPHORE );
 offsets["NtCreateSemaphore","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateSemaphore_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateSemaphore","LONG"] = 1+offsetof( struct NtCreateSemaphore_AS_TYPES,LONG );
 offsets["NtCreateSemaphore","LONG"] = 1+offsetof( struct NtCreateSemaphore_AS_TYPES,LONG1);
 offsets["NtCreateSemaphore","NTSTATUS"] = 1+offsetof( struct NtCreateSemaphore_AS_TYPES,NTSTATUS );
 offsets["NtCreateSymbolicLinkObject",""] = offsetof( union all , NtCreateSymbolicLinkObject );
 offsets["NtCreateSymbolicLinkObject","PHANDLE"] = 1+offsetof( struct NtCreateSymbolicLinkObject_AS_TYPES,PHANDLE );
 offsets["NtCreateSymbolicLinkObject","ACCESS_MASK_LINK"] = 1+offsetof( struct NtCreateSymbolicLinkObject_AS_TYPES,ACCESS_MASK_LINK );
 offsets["NtCreateSymbolicLinkObject","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateSymbolicLinkObject_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateSymbolicLinkObject","UNICODE_STRING"] = 1+offsetof( struct NtCreateSymbolicLinkObject_AS_TYPES,UNICODE_STRING );
 offsets["NtCreateSymbolicLinkObject","NTSTATUS"] = 1+offsetof( struct NtCreateSymbolicLinkObject_AS_TYPES,NTSTATUS );
 offsets["NtCreateThread",""] = offsetof( union all , NtCreateThread );
 offsets["NtCreateThread","PHANDLE"] = 1+offsetof( struct NtCreateThread_AS_TYPES,PHANDLE );
 offsets["NtCreateThread","ACCESS_MASK_THREAD"] = 1+offsetof( struct NtCreateThread_AS_TYPES,ACCESS_MASK_THREAD );
 offsets["NtCreateThread","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateThread_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateThread","HANDLE"] = 1+offsetof( struct NtCreateThread_AS_TYPES,HANDLE );
 offsets["NtCreateThread","CLIENT_ID"] = 1+offsetof( struct NtCreateThread_AS_TYPES,CLIENT_ID );
 offsets["NtCreateThread","CONTEXT"] = 1+offsetof( struct NtCreateThread_AS_TYPES,CONTEXT );
 offsets["NtCreateThread","INITIAL_TEB"] = 1+offsetof( struct NtCreateThread_AS_TYPES,INITIAL_TEB );
 offsets["NtCreateThread","BOOLEAN"] = 1+offsetof( struct NtCreateThread_AS_TYPES,BOOLEAN );
 offsets["NtCreateThread","NTSTATUS"] = 1+offsetof( struct NtCreateThread_AS_TYPES,NTSTATUS );
 offsets["NtCreateTimer",""] = offsetof( union all , NtCreateTimer );
 offsets["NtCreateTimer","PHANDLE"] = 1+offsetof( struct NtCreateTimer_AS_TYPES,PHANDLE );
 offsets["NtCreateTimer","ACCESS_MASK_TIMER"] = 1+offsetof( struct NtCreateTimer_AS_TYPES,ACCESS_MASK_TIMER );
 offsets["NtCreateTimer","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateTimer_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateTimer","TIMER_TYPE"] = 1+offsetof( struct NtCreateTimer_AS_TYPES,TIMER_TYPE );
 offsets["NtCreateTimer","NTSTATUS"] = 1+offsetof( struct NtCreateTimer_AS_TYPES,NTSTATUS );
 offsets["NtCreateTimer2",""] = offsetof( union all , NtCreateTimer2 );
 offsets["NtCreateTimer2","PHANDLE"] = 1+offsetof( struct NtCreateTimer2_AS_TYPES,PHANDLE );
 offsets["NtCreateTimer2","PVOID"] = 1+offsetof( struct NtCreateTimer2_AS_TYPES,PVOID );
 offsets["NtCreateTimer2","PVOID"] = 1+offsetof( struct NtCreateTimer2_AS_TYPES,PVOID1);
 offsets["NtCreateTimer2","ULONG"] = 1+offsetof( struct NtCreateTimer2_AS_TYPES,ULONG );
 offsets["NtCreateTimer2","ACCESS_MASK_TIMER"] = 1+offsetof( struct NtCreateTimer2_AS_TYPES,ACCESS_MASK_TIMER );
 offsets["NtCreateTimer2","NTSTATUS"] = 1+offsetof( struct NtCreateTimer2_AS_TYPES,NTSTATUS );
 offsets["NtCreateToken",""] = offsetof( union all , NtCreateToken );
 offsets["NtCreateToken","PHANDLE"] = 1+offsetof( struct NtCreateToken_AS_TYPES,PHANDLE );
 offsets["NtCreateToken","ACCESS_MASK_TOKEN"] = 1+offsetof( struct NtCreateToken_AS_TYPES,ACCESS_MASK_TOKEN );
 offsets["NtCreateToken","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateToken_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateToken","TOKEN_TYPE"] = 1+offsetof( struct NtCreateToken_AS_TYPES,TOKEN_TYPE );
 offsets["NtCreateToken","LUID"] = 1+offsetof( struct NtCreateToken_AS_TYPES,LUID );
 offsets["NtCreateToken","LARGE_INTEGER"] = 1+offsetof( struct NtCreateToken_AS_TYPES,LARGE_INTEGER );
 offsets["NtCreateToken","TOKEN_USER"] = 1+offsetof( struct NtCreateToken_AS_TYPES,TOKEN_USER );
 offsets["NtCreateToken","TOKEN_GROUPS"] = 1+offsetof( struct NtCreateToken_AS_TYPES,TOKEN_GROUPS );
 offsets["NtCreateToken","TOKEN_PRIVILEGES"] = 1+offsetof( struct NtCreateToken_AS_TYPES,TOKEN_PRIVILEGES );
 offsets["NtCreateToken","TOKEN_OWNER"] = 1+offsetof( struct NtCreateToken_AS_TYPES,TOKEN_OWNER );
 offsets["NtCreateToken","TOKEN_PRIMARY_GROUP"] = 1+offsetof( struct NtCreateToken_AS_TYPES,TOKEN_PRIMARY_GROUP );
 offsets["NtCreateToken","TOKEN_DEFAULT_DACL"] = 1+offsetof( struct NtCreateToken_AS_TYPES,TOKEN_DEFAULT_DACL );
 offsets["NtCreateToken","TOKEN_SOURCE"] = 1+offsetof( struct NtCreateToken_AS_TYPES,TOKEN_SOURCE );
 offsets["NtCreateToken","NTSTATUS"] = 1+offsetof( struct NtCreateToken_AS_TYPES,NTSTATUS );
 offsets["NtCreateTransaction",""] = offsetof( union all , NtCreateTransaction );
 offsets["NtCreateTransaction","PHANDLE"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,PHANDLE );
 offsets["NtCreateTransaction","ACCESS_MASK_TRANSACTION"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,ACCESS_MASK_TRANSACTION );
 offsets["NtCreateTransaction","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateTransaction","GUID"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,GUID );
 offsets["NtCreateTransaction","HANDLE"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,HANDLE );
 offsets["NtCreateTransaction","ULONG"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,ULONG );
 offsets["NtCreateTransaction","ULONG"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,ULONG1);
 offsets["NtCreateTransaction","ULONG"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,ULONG2);
 offsets["NtCreateTransaction","LARGE_INTEGER"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,LARGE_INTEGER );
 offsets["NtCreateTransaction","UNICODE_STRING"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,UNICODE_STRING );
 offsets["NtCreateTransaction","NTSTATUS"] = 1+offsetof( struct NtCreateTransaction_AS_TYPES,NTSTATUS );
 offsets["NtCreateTransactionManager",""] = offsetof( union all , NtCreateTransactionManager );
 offsets["NtCreateTransactionManager","PHANDLE"] = 1+offsetof( struct NtCreateTransactionManager_AS_TYPES,PHANDLE );
 offsets["NtCreateTransactionManager","ACCESS_MASK_TM"] = 1+offsetof( struct NtCreateTransactionManager_AS_TYPES,ACCESS_MASK_TM );
 offsets["NtCreateTransactionManager","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateTransactionManager_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateTransactionManager","UNICODE_STRING"] = 1+offsetof( struct NtCreateTransactionManager_AS_TYPES,UNICODE_STRING );
 offsets["NtCreateTransactionManager","ULONG"] = 1+offsetof( struct NtCreateTransactionManager_AS_TYPES,ULONG );
 offsets["NtCreateTransactionManager","ULONG"] = 1+offsetof( struct NtCreateTransactionManager_AS_TYPES,ULONG1);
 offsets["NtCreateTransactionManager","NTSTATUS"] = 1+offsetof( struct NtCreateTransactionManager_AS_TYPES,NTSTATUS );
 offsets["NtCreateWaitCompletionPacket",""] = offsetof( union all , NtCreateWaitCompletionPacket );
 offsets["NtCreateWaitCompletionPacket","PHANDLE"] = 1+offsetof( struct NtCreateWaitCompletionPacket_AS_TYPES,PHANDLE );
 offsets["NtCreateWaitCompletionPacket","ACCESS_MASK"] = 1+offsetof( struct NtCreateWaitCompletionPacket_AS_TYPES,ACCESS_MASK );
 offsets["NtCreateWaitCompletionPacket","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateWaitCompletionPacket_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateWaitCompletionPacket","NTSTATUS"] = 1+offsetof( struct NtCreateWaitCompletionPacket_AS_TYPES,NTSTATUS );
 offsets["NtCreateWaitablePort",""] = offsetof( union all , NtCreateWaitablePort );
 offsets["NtCreateWaitablePort","PHANDLE"] = 1+offsetof( struct NtCreateWaitablePort_AS_TYPES,PHANDLE );
 offsets["NtCreateWaitablePort","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateWaitablePort_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateWaitablePort","ULONG"] = 1+offsetof( struct NtCreateWaitablePort_AS_TYPES,ULONG );
 offsets["NtCreateWaitablePort","ULONG"] = 1+offsetof( struct NtCreateWaitablePort_AS_TYPES,ULONG1);
 offsets["NtCreateWaitablePort","ULONG"] = 1+offsetof( struct NtCreateWaitablePort_AS_TYPES,ULONG2);
 offsets["NtCreateWaitablePort","NTSTATUS"] = 1+offsetof( struct NtCreateWaitablePort_AS_TYPES,NTSTATUS );
 offsets["NtCreateWnfStateName",""] = offsetof( union all , NtCreateWnfStateName );
 offsets["NtCreateWnfStateName","WNF_STATE_NAME"] = 1+offsetof( struct NtCreateWnfStateName_AS_TYPES,WNF_STATE_NAME );
 offsets["NtCreateWnfStateName","WNF_STATE_NAME_LIFETIME"] = 1+offsetof( struct NtCreateWnfStateName_AS_TYPES,WNF_STATE_NAME_LIFETIME );
 offsets["NtCreateWnfStateName","WNF_DATA_SCOPE"] = 1+offsetof( struct NtCreateWnfStateName_AS_TYPES,WNF_DATA_SCOPE );
 offsets["NtCreateWnfStateName","BOOLEAN"] = 1+offsetof( struct NtCreateWnfStateName_AS_TYPES,BOOLEAN );
 offsets["NtCreateWnfStateName","WNF_TYPE_ID"] = 1+offsetof( struct NtCreateWnfStateName_AS_TYPES,WNF_TYPE_ID );
 offsets["NtCreateWnfStateName","ULONG"] = 1+offsetof( struct NtCreateWnfStateName_AS_TYPES,ULONG );
 offsets["NtCreateWnfStateName","SECURITY_DESCRIPTOR"] = 1+offsetof( struct NtCreateWnfStateName_AS_TYPES,SECURITY_DESCRIPTOR );
 offsets["NtCreateWnfStateName","NTSTATUS"] = 1+offsetof( struct NtCreateWnfStateName_AS_TYPES,NTSTATUS );
 offsets["NtCreateWorkerFactory",""] = offsetof( union all , NtCreateWorkerFactory );
 offsets["NtCreateWorkerFactory","PHANDLE"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,PHANDLE );
 offsets["NtCreateWorkerFactory","ACCESS_MASK"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,ACCESS_MASK );
 offsets["NtCreateWorkerFactory","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtCreateWorkerFactory","HANDLE"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,HANDLE );
 offsets["NtCreateWorkerFactory","HANDLE"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,HANDLE1);
 offsets["NtCreateWorkerFactory","PTPP_START_ROUTINE"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,PTPP_START_ROUTINE );
 offsets["NtCreateWorkerFactory","PVOID"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,PVOID );
 offsets["NtCreateWorkerFactory","ULONG"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,ULONG );
 offsets["NtCreateWorkerFactory","SIZE_T"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,SIZE_T );
 offsets["NtCreateWorkerFactory","SIZE_T"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,SIZE_T1);
 offsets["NtCreateWorkerFactory","NTSTATUS"] = 1+offsetof( struct NtCreateWorkerFactory_AS_TYPES,NTSTATUS );
 offsets["NtDelayExecution",""] = offsetof( union all , NtDelayExecution );
 offsets["NtDelayExecution","BOOLEAN"] = 1+offsetof( struct NtDelayExecution_AS_TYPES,BOOLEAN );
 offsets["NtDelayExecution","LARGE_INTEGER"] = 1+offsetof( struct NtDelayExecution_AS_TYPES,LARGE_INTEGER );
 offsets["NtDelayExecution","NTSTATUS"] = 1+offsetof( struct NtDelayExecution_AS_TYPES,NTSTATUS );
 offsets["NtDeleteAtom",""] = offsetof( union all , NtDeleteAtom );
 offsets["NtDeleteAtom","RTL_ATOM"] = 1+offsetof( struct NtDeleteAtom_AS_TYPES,RTL_ATOM );
 offsets["NtDeleteAtom","NTSTATUS"] = 1+offsetof( struct NtDeleteAtom_AS_TYPES,NTSTATUS );
 offsets["NtDeleteBootEntry",""] = offsetof( union all , NtDeleteBootEntry );
 offsets["NtDeleteBootEntry","ULONG"] = 1+offsetof( struct NtDeleteBootEntry_AS_TYPES,ULONG );
 offsets["NtDeleteBootEntry","NTSTATUS"] = 1+offsetof( struct NtDeleteBootEntry_AS_TYPES,NTSTATUS );
 offsets["NtDeleteDriverEntry",""] = offsetof( union all , NtDeleteDriverEntry );
 offsets["NtDeleteDriverEntry","ULONG"] = 1+offsetof( struct NtDeleteDriverEntry_AS_TYPES,ULONG );
 offsets["NtDeleteDriverEntry","NTSTATUS"] = 1+offsetof( struct NtDeleteDriverEntry_AS_TYPES,NTSTATUS );
 offsets["NtDeleteFile",""] = offsetof( union all , NtDeleteFile );
 offsets["NtDeleteFile","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtDeleteFile_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtDeleteFile","NTSTATUS"] = 1+offsetof( struct NtDeleteFile_AS_TYPES,NTSTATUS );
 offsets["NtDeleteKey",""] = offsetof( union all , NtDeleteKey );
 offsets["NtDeleteKey","HANDLE"] = 1+offsetof( struct NtDeleteKey_AS_TYPES,HANDLE );
 offsets["NtDeleteKey","NTSTATUS"] = 1+offsetof( struct NtDeleteKey_AS_TYPES,NTSTATUS );
 offsets["NtDeleteObjectAuditAlarm",""] = offsetof( union all , NtDeleteObjectAuditAlarm );
 offsets["NtDeleteObjectAuditAlarm","UNICODE_STRING"] = 1+offsetof( struct NtDeleteObjectAuditAlarm_AS_TYPES,UNICODE_STRING );
 offsets["NtDeleteObjectAuditAlarm","PVOID"] = 1+offsetof( struct NtDeleteObjectAuditAlarm_AS_TYPES,PVOID );
 offsets["NtDeleteObjectAuditAlarm","BOOLEAN"] = 1+offsetof( struct NtDeleteObjectAuditAlarm_AS_TYPES,BOOLEAN );
 offsets["NtDeleteObjectAuditAlarm","NTSTATUS"] = 1+offsetof( struct NtDeleteObjectAuditAlarm_AS_TYPES,NTSTATUS );
 offsets["NtDeletePrivateNamespace",""] = offsetof( union all , NtDeletePrivateNamespace );
 offsets["NtDeletePrivateNamespace","HANDLE"] = 1+offsetof( struct NtDeletePrivateNamespace_AS_TYPES,HANDLE );
 offsets["NtDeletePrivateNamespace","NTSTATUS"] = 1+offsetof( struct NtDeletePrivateNamespace_AS_TYPES,NTSTATUS );
 offsets["NtDeleteValueKey",""] = offsetof( union all , NtDeleteValueKey );
 offsets["NtDeleteValueKey","HANDLE"] = 1+offsetof( struct NtDeleteValueKey_AS_TYPES,HANDLE );
 offsets["NtDeleteValueKey","UNICODE_STRING"] = 1+offsetof( struct NtDeleteValueKey_AS_TYPES,UNICODE_STRING );
 offsets["NtDeleteValueKey","NTSTATUS"] = 1+offsetof( struct NtDeleteValueKey_AS_TYPES,NTSTATUS );
 offsets["NtDeleteWnfStateData",""] = offsetof( union all , NtDeleteWnfStateData );
 offsets["NtDeleteWnfStateData","WNF_STATE_NAME"] = 1+offsetof( struct NtDeleteWnfStateData_AS_TYPES,WNF_STATE_NAME );
 offsets["NtDeleteWnfStateData","PVOID"] = 1+offsetof( struct NtDeleteWnfStateData_AS_TYPES,PVOID );
 offsets["NtDeleteWnfStateData","NTSTATUS"] = 1+offsetof( struct NtDeleteWnfStateData_AS_TYPES,NTSTATUS );
 offsets["NtDeleteWnfStateName",""] = offsetof( union all , NtDeleteWnfStateName );
 offsets["NtDeleteWnfStateName","WNF_STATE_NAME"] = 1+offsetof( struct NtDeleteWnfStateName_AS_TYPES,WNF_STATE_NAME );
 offsets["NtDeleteWnfStateName","NTSTATUS"] = 1+offsetof( struct NtDeleteWnfStateName_AS_TYPES,NTSTATUS );
 offsets["NtDeviceIoControlFile",""] = offsetof( union all , NtDeviceIoControlFile );
 offsets["NtDeviceIoControlFile","HANDLE"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,HANDLE );
 offsets["NtDeviceIoControlFile","HANDLE"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,HANDLE1);
 offsets["NtDeviceIoControlFile","PIO_APC_ROUTINE"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtDeviceIoControlFile","PVOID"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,PVOID );
 offsets["NtDeviceIoControlFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtDeviceIoControlFile","IO_CTRL_CODE"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,IO_CTRL_CODE );
 offsets["NtDeviceIoControlFile","INBUF"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,INBUF );
 offsets["NtDeviceIoControlFile","INLEN"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,INLEN );
 offsets["NtDeviceIoControlFile","OUTBUF"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,OUTBUF );
 offsets["NtDeviceIoControlFile","OUTLEN"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,OUTLEN );
 offsets["NtDeviceIoControlFile","NTSTATUS"] = 1+offsetof( struct NtDeviceIoControlFile_AS_TYPES,NTSTATUS );
 offsets["NtDirectGraphicsCall",""] = offsetof( union all , NtDirectGraphicsCall );
 offsets["NtDirectGraphicsCall","ULONG"] = 1+offsetof( struct NtDirectGraphicsCall_AS_TYPES,ULONG );
 offsets["NtDirectGraphicsCall","PVOID"] = 1+offsetof( struct NtDirectGraphicsCall_AS_TYPES,PVOID );
 offsets["NtDirectGraphicsCall","ULONG"] = 1+offsetof( struct NtDirectGraphicsCall_AS_TYPES,ULONG1);
 offsets["NtDirectGraphicsCall","PVOID"] = 1+offsetof( struct NtDirectGraphicsCall_AS_TYPES,PVOID1);
 offsets["NtDirectGraphicsCall","ULONG"] = 1+offsetof( struct NtDirectGraphicsCall_AS_TYPES,ULONG2);
 offsets["NtDirectGraphicsCall","NTSTATUS"] = 1+offsetof( struct NtDirectGraphicsCall_AS_TYPES,NTSTATUS );
 offsets["NtDisableLastKnownGood",""] = offsetof( union all , NtDisableLastKnownGood );
 offsets["NtDisableLastKnownGood","NTSTATUS"] = 1+offsetof( struct NtDisableLastKnownGood_AS_TYPES,NTSTATUS );
 offsets["NtDisplayString",""] = offsetof( union all , NtDisplayString );
 offsets["NtDisplayString","UNICODE_STRING"] = 1+offsetof( struct NtDisplayString_AS_TYPES,UNICODE_STRING );
 offsets["NtDisplayString","NTSTATUS"] = 1+offsetof( struct NtDisplayString_AS_TYPES,NTSTATUS );
 offsets["NtDrawText",""] = offsetof( union all , NtDrawText );
 offsets["NtDrawText","UNICODE_STRING"] = 1+offsetof( struct NtDrawText_AS_TYPES,UNICODE_STRING );
 offsets["NtDrawText","NTSTATUS"] = 1+offsetof( struct NtDrawText_AS_TYPES,NTSTATUS );
 offsets["NtDuplicateObject",""] = offsetof( union all , NtDuplicateObject );
 offsets["NtDuplicateObject","HANDLE"] = 1+offsetof( struct NtDuplicateObject_AS_TYPES,HANDLE );
 offsets["NtDuplicateObject","HANDLE"] = 1+offsetof( struct NtDuplicateObject_AS_TYPES,HANDLE1);
 offsets["NtDuplicateObject","HANDLE"] = 1+offsetof( struct NtDuplicateObject_AS_TYPES,HANDLE2);
 offsets["NtDuplicateObject","HANDLE"] = 1+offsetof( struct NtDuplicateObject_AS_TYPES,HANDLE3);
 offsets["NtDuplicateObject","ACCESS_MASK"] = 1+offsetof( struct NtDuplicateObject_AS_TYPES,ACCESS_MASK );
 offsets["NtDuplicateObject","ULONG"] = 1+offsetof( struct NtDuplicateObject_AS_TYPES,ULONG );
 offsets["NtDuplicateObject","ULONG"] = 1+offsetof( struct NtDuplicateObject_AS_TYPES,ULONG1);
 offsets["NtDuplicateObject","NTSTATUS"] = 1+offsetof( struct NtDuplicateObject_AS_TYPES,NTSTATUS );
 offsets["NtDuplicateToken",""] = offsetof( union all , NtDuplicateToken );
 offsets["NtDuplicateToken","HANDLE"] = 1+offsetof( struct NtDuplicateToken_AS_TYPES,HANDLE );
 offsets["NtDuplicateToken","ACCESS_MASK_TOKEN"] = 1+offsetof( struct NtDuplicateToken_AS_TYPES,ACCESS_MASK_TOKEN );
 offsets["NtDuplicateToken","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtDuplicateToken_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtDuplicateToken","BOOLEAN"] = 1+offsetof( struct NtDuplicateToken_AS_TYPES,BOOLEAN );
 offsets["NtDuplicateToken","TOKEN_TYPE"] = 1+offsetof( struct NtDuplicateToken_AS_TYPES,TOKEN_TYPE );
 offsets["NtDuplicateToken","PHANDLE"] = 1+offsetof( struct NtDuplicateToken_AS_TYPES,PHANDLE );
 offsets["NtDuplicateToken","NTSTATUS"] = 1+offsetof( struct NtDuplicateToken_AS_TYPES,NTSTATUS );
 offsets["NtEnableLastKnownGood",""] = offsetof( union all , NtEnableLastKnownGood );
 offsets["NtEnableLastKnownGood","NTSTATUS"] = 1+offsetof( struct NtEnableLastKnownGood_AS_TYPES,NTSTATUS );
 offsets["NtEnumerateBootEntries",""] = offsetof( union all , NtEnumerateBootEntries );
 offsets["NtEnumerateBootEntries","PVOID"] = 1+offsetof( struct NtEnumerateBootEntries_AS_TYPES,PVOID );
 offsets["NtEnumerateBootEntries","ULONG"] = 1+offsetof( struct NtEnumerateBootEntries_AS_TYPES,ULONG );
 offsets["NtEnumerateBootEntries","NTSTATUS"] = 1+offsetof( struct NtEnumerateBootEntries_AS_TYPES,NTSTATUS );
 offsets["NtEnumerateDriverEntries",""] = offsetof( union all , NtEnumerateDriverEntries );
 offsets["NtEnumerateDriverEntries","PVOID"] = 1+offsetof( struct NtEnumerateDriverEntries_AS_TYPES,PVOID );
 offsets["NtEnumerateDriverEntries","ULONG"] = 1+offsetof( struct NtEnumerateDriverEntries_AS_TYPES,ULONG );
 offsets["NtEnumerateDriverEntries","NTSTATUS"] = 1+offsetof( struct NtEnumerateDriverEntries_AS_TYPES,NTSTATUS );
 offsets["NtEnumerateKey",""] = offsetof( union all , NtEnumerateKey );
 offsets["NtEnumerateKey","HANDLE"] = 1+offsetof( struct NtEnumerateKey_AS_TYPES,HANDLE );
 offsets["NtEnumerateKey","ULONG"] = 1+offsetof( struct NtEnumerateKey_AS_TYPES,ULONG );
 offsets["NtEnumerateKey","KEY_INFORMATION_CLASS"] = 1+offsetof( struct NtEnumerateKey_AS_TYPES,KEY_INFORMATION_CLASS );
 offsets["NtEnumerateKey","PVOID"] = 1+offsetof( struct NtEnumerateKey_AS_TYPES,PVOID );
 offsets["NtEnumerateKey","ULONG"] = 1+offsetof( struct NtEnumerateKey_AS_TYPES,ULONG1);
 offsets["NtEnumerateKey","ULONG"] = 1+offsetof( struct NtEnumerateKey_AS_TYPES,ULONG2);
 offsets["NtEnumerateKey","NTSTATUS"] = 1+offsetof( struct NtEnumerateKey_AS_TYPES,NTSTATUS );
 offsets["NtEnumerateSystemEnvironmentValuesEx",""] = offsetof( union all , NtEnumerateSystemEnvironmentValuesEx );
 offsets["NtEnumerateSystemEnvironmentValuesEx","ULONG"] = 1+offsetof( struct NtEnumerateSystemEnvironmentValuesEx_AS_TYPES,ULONG );
 offsets["NtEnumerateSystemEnvironmentValuesEx","PVOID"] = 1+offsetof( struct NtEnumerateSystemEnvironmentValuesEx_AS_TYPES,PVOID );
 offsets["NtEnumerateSystemEnvironmentValuesEx","ULONG"] = 1+offsetof( struct NtEnumerateSystemEnvironmentValuesEx_AS_TYPES,ULONG1);
 offsets["NtEnumerateSystemEnvironmentValuesEx","NTSTATUS"] = 1+offsetof( struct NtEnumerateSystemEnvironmentValuesEx_AS_TYPES,NTSTATUS );
 offsets["NtEnumerateTransactionObject",""] = offsetof( union all , NtEnumerateTransactionObject );
 offsets["NtEnumerateTransactionObject","HANDLE"] = 1+offsetof( struct NtEnumerateTransactionObject_AS_TYPES,HANDLE );
 offsets["NtEnumerateTransactionObject","KTMOBJECT_TYPE"] = 1+offsetof( struct NtEnumerateTransactionObject_AS_TYPES,KTMOBJECT_TYPE );
 offsets["NtEnumerateTransactionObject","KTMOBJECT_CURSOR"] = 1+offsetof( struct NtEnumerateTransactionObject_AS_TYPES,KTMOBJECT_CURSOR );
 offsets["NtEnumerateTransactionObject","ULONG"] = 1+offsetof( struct NtEnumerateTransactionObject_AS_TYPES,ULONG );
 offsets["NtEnumerateTransactionObject","ULONG"] = 1+offsetof( struct NtEnumerateTransactionObject_AS_TYPES,ULONG1);
 offsets["NtEnumerateTransactionObject","NTSTATUS"] = 1+offsetof( struct NtEnumerateTransactionObject_AS_TYPES,NTSTATUS );
 offsets["NtEnumerateValueKey",""] = offsetof( union all , NtEnumerateValueKey );
 offsets["NtEnumerateValueKey","HANDLE"] = 1+offsetof( struct NtEnumerateValueKey_AS_TYPES,HANDLE );
 offsets["NtEnumerateValueKey","ULONG"] = 1+offsetof( struct NtEnumerateValueKey_AS_TYPES,ULONG );
 offsets["NtEnumerateValueKey","KEY_VALUE_INFORMATION_CLASS"] = 1+offsetof( struct NtEnumerateValueKey_AS_TYPES,KEY_VALUE_INFORMATION_CLASS );
 offsets["NtEnumerateValueKey","PVOID"] = 1+offsetof( struct NtEnumerateValueKey_AS_TYPES,PVOID );
 offsets["NtEnumerateValueKey","ULONG"] = 1+offsetof( struct NtEnumerateValueKey_AS_TYPES,ULONG1);
 offsets["NtEnumerateValueKey","ULONG"] = 1+offsetof( struct NtEnumerateValueKey_AS_TYPES,ULONG2);
 offsets["NtEnumerateValueKey","NTSTATUS"] = 1+offsetof( struct NtEnumerateValueKey_AS_TYPES,NTSTATUS );
 offsets["NtExtendSection",""] = offsetof( union all , NtExtendSection );
 offsets["NtExtendSection","HANDLE"] = 1+offsetof( struct NtExtendSection_AS_TYPES,HANDLE );
 offsets["NtExtendSection","LARGE_INTEGER"] = 1+offsetof( struct NtExtendSection_AS_TYPES,LARGE_INTEGER );
 offsets["NtExtendSection","NTSTATUS"] = 1+offsetof( struct NtExtendSection_AS_TYPES,NTSTATUS );
 offsets["NtFilterBootOption",""] = offsetof( union all , NtFilterBootOption );
 offsets["NtFilterBootOption","FILTER_BOOT_OPTION_OPERATION"] = 1+offsetof( struct NtFilterBootOption_AS_TYPES,FILTER_BOOT_OPTION_OPERATION );
 offsets["NtFilterBootOption","ULONG"] = 1+offsetof( struct NtFilterBootOption_AS_TYPES,ULONG );
 offsets["NtFilterBootOption","ULONG"] = 1+offsetof( struct NtFilterBootOption_AS_TYPES,ULONG1);
 offsets["NtFilterBootOption","PVOID"] = 1+offsetof( struct NtFilterBootOption_AS_TYPES,PVOID );
 offsets["NtFilterBootOption","ULONG"] = 1+offsetof( struct NtFilterBootOption_AS_TYPES,ULONG2);
 offsets["NtFilterBootOption","NTSTATUS"] = 1+offsetof( struct NtFilterBootOption_AS_TYPES,NTSTATUS );
 offsets["NtFilterToken",""] = offsetof( union all , NtFilterToken );
 offsets["NtFilterToken","HANDLE"] = 1+offsetof( struct NtFilterToken_AS_TYPES,HANDLE );
 offsets["NtFilterToken","ULONG"] = 1+offsetof( struct NtFilterToken_AS_TYPES,ULONG );
 offsets["NtFilterToken","TOKEN_GROUPS"] = 1+offsetof( struct NtFilterToken_AS_TYPES,TOKEN_GROUPS );
 offsets["NtFilterToken","TOKEN_PRIVILEGES"] = 1+offsetof( struct NtFilterToken_AS_TYPES,TOKEN_PRIVILEGES );
 offsets["NtFilterToken","TOKEN_GROUPS"] = 1+offsetof( struct NtFilterToken_AS_TYPES,TOKEN_GROUPS1);
 offsets["NtFilterToken","PHANDLE"] = 1+offsetof( struct NtFilterToken_AS_TYPES,PHANDLE );
 offsets["NtFilterToken","NTSTATUS"] = 1+offsetof( struct NtFilterToken_AS_TYPES,NTSTATUS );
 offsets["NtFindAtom",""] = offsetof( union all , NtFindAtom );
 offsets["NtFindAtom","WSTR"] = 1+offsetof( struct NtFindAtom_AS_TYPES,WSTR );
 offsets["NtFindAtom","ULONG"] = 1+offsetof( struct NtFindAtom_AS_TYPES,ULONG );
 offsets["NtFindAtom","RTL_ATOM"] = 1+offsetof( struct NtFindAtom_AS_TYPES,RTL_ATOM );
 offsets["NtFindAtom","NTSTATUS"] = 1+offsetof( struct NtFindAtom_AS_TYPES,NTSTATUS );
 offsets["NtFlushBuffersFile",""] = offsetof( union all , NtFlushBuffersFile );
 offsets["NtFlushBuffersFile","HANDLE"] = 1+offsetof( struct NtFlushBuffersFile_AS_TYPES,HANDLE );
 offsets["NtFlushBuffersFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtFlushBuffersFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtFlushBuffersFile","NTSTATUS"] = 1+offsetof( struct NtFlushBuffersFile_AS_TYPES,NTSTATUS );
 offsets["NtFlushBuffersFileEx",""] = offsetof( union all , NtFlushBuffersFileEx );
 offsets["NtFlushBuffersFileEx","HANDLE"] = 1+offsetof( struct NtFlushBuffersFileEx_AS_TYPES,HANDLE );
 offsets["NtFlushBuffersFileEx","ULONG"] = 1+offsetof( struct NtFlushBuffersFileEx_AS_TYPES,ULONG );
 offsets["NtFlushBuffersFileEx","PVOID"] = 1+offsetof( struct NtFlushBuffersFileEx_AS_TYPES,PVOID );
 offsets["NtFlushBuffersFileEx","ULONG"] = 1+offsetof( struct NtFlushBuffersFileEx_AS_TYPES,ULONG1);
 offsets["NtFlushBuffersFileEx","IO_STATUS_BLOCK"] = 1+offsetof( struct NtFlushBuffersFileEx_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtFlushBuffersFileEx","NTSTATUS"] = 1+offsetof( struct NtFlushBuffersFileEx_AS_TYPES,NTSTATUS );
 offsets["NtFlushInstallUILanguage",""] = offsetof( union all , NtFlushInstallUILanguage );
 offsets["NtFlushInstallUILanguage","ULONG"] = 1+offsetof( struct NtFlushInstallUILanguage_AS_TYPES,ULONG );
 offsets["NtFlushInstallUILanguage","ULONG"] = 1+offsetof( struct NtFlushInstallUILanguage_AS_TYPES,ULONG1);
 offsets["NtFlushInstallUILanguage","NTSTATUS"] = 1+offsetof( struct NtFlushInstallUILanguage_AS_TYPES,NTSTATUS );
 offsets["NtFlushInstructionCache",""] = offsetof( union all , NtFlushInstructionCache );
 offsets["NtFlushInstructionCache","HANDLE"] = 1+offsetof( struct NtFlushInstructionCache_AS_TYPES,HANDLE );
 offsets["NtFlushInstructionCache","PVOID"] = 1+offsetof( struct NtFlushInstructionCache_AS_TYPES,PVOID );
 offsets["NtFlushInstructionCache","SIZE_T"] = 1+offsetof( struct NtFlushInstructionCache_AS_TYPES,SIZE_T );
 offsets["NtFlushInstructionCache","NTSTATUS"] = 1+offsetof( struct NtFlushInstructionCache_AS_TYPES,NTSTATUS );
 offsets["NtFlushKey",""] = offsetof( union all , NtFlushKey );
 offsets["NtFlushKey","HANDLE"] = 1+offsetof( struct NtFlushKey_AS_TYPES,HANDLE );
 offsets["NtFlushKey","NTSTATUS"] = 1+offsetof( struct NtFlushKey_AS_TYPES,NTSTATUS );
 offsets["NtFlushProcessWriteBuffers",""] = offsetof( union all , NtFlushProcessWriteBuffers );
 offsets["NtFlushProcessWriteBuffers","NTSTATUS"] = 1+offsetof( struct NtFlushProcessWriteBuffers_AS_TYPES,NTSTATUS );
 offsets["NtFlushVirtualMemory",""] = offsetof( union all , NtFlushVirtualMemory );
 offsets["NtFlushVirtualMemory","HANDLE"] = 1+offsetof( struct NtFlushVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtFlushVirtualMemory","PVOID"] = 1+offsetof( struct NtFlushVirtualMemory_AS_TYPES,PVOID );
 offsets["NtFlushVirtualMemory","SIZE_T"] = 1+offsetof( struct NtFlushVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtFlushVirtualMemory","IO_STATUS_BLOCK"] = 1+offsetof( struct NtFlushVirtualMemory_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtFlushVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtFlushVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtFlushWriteBuffer",""] = offsetof( union all , NtFlushWriteBuffer );
 offsets["NtFlushWriteBuffer","NTSTATUS"] = 1+offsetof( struct NtFlushWriteBuffer_AS_TYPES,NTSTATUS );
 offsets["NtFreeVirtualMemory",""] = offsetof( union all , NtFreeVirtualMemory );
 offsets["NtFreeVirtualMemory","HANDLE"] = 1+offsetof( struct NtFreeVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtFreeVirtualMemory","PVOID"] = 1+offsetof( struct NtFreeVirtualMemory_AS_TYPES,PVOID );
 offsets["NtFreeVirtualMemory","SIZE_T"] = 1+offsetof( struct NtFreeVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtFreeVirtualMemory","ULONG"] = 1+offsetof( struct NtFreeVirtualMemory_AS_TYPES,ULONG );
 offsets["NtFreeVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtFreeVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtFreezeRegistry",""] = offsetof( union all , NtFreezeRegistry );
 offsets["NtFreezeRegistry","ULONG"] = 1+offsetof( struct NtFreezeRegistry_AS_TYPES,ULONG );
 offsets["NtFreezeRegistry","NTSTATUS"] = 1+offsetof( struct NtFreezeRegistry_AS_TYPES,NTSTATUS );
 offsets["NtFsControlFile",""] = offsetof( union all , NtFsControlFile );
 offsets["NtFsControlFile","HANDLE"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,HANDLE );
 offsets["NtFsControlFile","HANDLE"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,HANDLE1);
 offsets["NtFsControlFile","PIO_APC_ROUTINE"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtFsControlFile","PVOID"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,PVOID );
 offsets["NtFsControlFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtFsControlFile","IO_CTRL_CODE"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,IO_CTRL_CODE );
 offsets["NtFsControlFile","INBUF"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,INBUF );
 offsets["NtFsControlFile","INLEN"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,INLEN );
 offsets["NtFsControlFile","OUTBUF"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,OUTBUF );
 offsets["NtFsControlFile","OUTLEN"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,OUTLEN );
 offsets["NtFsControlFile","NTSTATUS"] = 1+offsetof( struct NtFsControlFile_AS_TYPES,NTSTATUS );
 offsets["NtGetCachedSigningLevel",""] = offsetof( union all , NtGetCachedSigningLevel );
 offsets["NtGetCachedSigningLevel","HANDLE"] = 1+offsetof( struct NtGetCachedSigningLevel_AS_TYPES,HANDLE );
 offsets["NtGetCachedSigningLevel","ULONG"] = 1+offsetof( struct NtGetCachedSigningLevel_AS_TYPES,ULONG );
 offsets["NtGetCachedSigningLevel","SE_SIGNING_LEVEL"] = 1+offsetof( struct NtGetCachedSigningLevel_AS_TYPES,SE_SIGNING_LEVEL );
 offsets["NtGetCachedSigningLevel","UCHAR"] = 1+offsetof( struct NtGetCachedSigningLevel_AS_TYPES,UCHAR );
 offsets["NtGetCachedSigningLevel","ULONG"] = 1+offsetof( struct NtGetCachedSigningLevel_AS_TYPES,ULONG1);
 offsets["NtGetCachedSigningLevel","ULONG"] = 1+offsetof( struct NtGetCachedSigningLevel_AS_TYPES,ULONG2);
 offsets["NtGetCachedSigningLevel","NTSTATUS"] = 1+offsetof( struct NtGetCachedSigningLevel_AS_TYPES,NTSTATUS );
 offsets["NtGetCompleteWnfStateSubscription",""] = offsetof( union all , NtGetCompleteWnfStateSubscription );
 offsets["NtGetCompleteWnfStateSubscription","WNF_STATE_NAME"] = 1+offsetof( struct NtGetCompleteWnfStateSubscription_AS_TYPES,WNF_STATE_NAME );
 offsets["NtGetCompleteWnfStateSubscription","ULONG"] = 1+offsetof( struct NtGetCompleteWnfStateSubscription_AS_TYPES,ULONG );
 offsets["NtGetCompleteWnfStateSubscription","ULONG"] = 1+offsetof( struct NtGetCompleteWnfStateSubscription_AS_TYPES,ULONG1);
 offsets["NtGetCompleteWnfStateSubscription","ULONG"] = 1+offsetof( struct NtGetCompleteWnfStateSubscription_AS_TYPES,ULONG2);
 offsets["NtGetCompleteWnfStateSubscription","WNF_DELIVERY_DESCRIPTOR"] = 1+offsetof( struct NtGetCompleteWnfStateSubscription_AS_TYPES,WNF_DELIVERY_DESCRIPTOR );
 offsets["NtGetCompleteWnfStateSubscription","ULONG"] = 1+offsetof( struct NtGetCompleteWnfStateSubscription_AS_TYPES,ULONG3);
 offsets["NtGetCompleteWnfStateSubscription","NTSTATUS"] = 1+offsetof( struct NtGetCompleteWnfStateSubscription_AS_TYPES,NTSTATUS );
 offsets["NtGetContextThread",""] = offsetof( union all , NtGetContextThread );
 offsets["NtGetContextThread","HANDLE"] = 1+offsetof( struct NtGetContextThread_AS_TYPES,HANDLE );
 offsets["NtGetContextThread","CONTEXT"] = 1+offsetof( struct NtGetContextThread_AS_TYPES,CONTEXT );
 offsets["NtGetContextThread","NTSTATUS"] = 1+offsetof( struct NtGetContextThread_AS_TYPES,NTSTATUS );
 offsets["NtGetCurrentProcessorNumberEx",""] = offsetof( union all , NtGetCurrentProcessorNumberEx );
 offsets["NtGetCurrentProcessorNumberEx","PROCESSOR_NUMBER"] = 1+offsetof( struct NtGetCurrentProcessorNumberEx_AS_TYPES,PROCESSOR_NUMBER );
 offsets["NtGetCurrentProcessorNumberEx","NTSTATUS"] = 1+offsetof( struct NtGetCurrentProcessorNumberEx_AS_TYPES,NTSTATUS );
 offsets["NtGetDevicePowerState",""] = offsetof( union all , NtGetDevicePowerState );
 offsets["NtGetDevicePowerState","HANDLE"] = 1+offsetof( struct NtGetDevicePowerState_AS_TYPES,HANDLE );
 offsets["NtGetDevicePowerState","DEVICE_POWER_STATE"] = 1+offsetof( struct NtGetDevicePowerState_AS_TYPES,DEVICE_POWER_STATE );
 offsets["NtGetDevicePowerState","NTSTATUS"] = 1+offsetof( struct NtGetDevicePowerState_AS_TYPES,NTSTATUS );
 offsets["NtGetMUIRegistryInfo",""] = offsetof( union all , NtGetMUIRegistryInfo );
 offsets["NtGetMUIRegistryInfo","ULONG"] = 1+offsetof( struct NtGetMUIRegistryInfo_AS_TYPES,ULONG );
 offsets["NtGetMUIRegistryInfo","ULONG"] = 1+offsetof( struct NtGetMUIRegistryInfo_AS_TYPES,ULONG1);
 offsets["NtGetMUIRegistryInfo","PVOID"] = 1+offsetof( struct NtGetMUIRegistryInfo_AS_TYPES,PVOID );
 offsets["NtGetMUIRegistryInfo","NTSTATUS"] = 1+offsetof( struct NtGetMUIRegistryInfo_AS_TYPES,NTSTATUS );
 offsets["NtGetNextProcess",""] = offsetof( union all , NtGetNextProcess );
 offsets["NtGetNextProcess","HANDLE"] = 1+offsetof( struct NtGetNextProcess_AS_TYPES,HANDLE );
 offsets["NtGetNextProcess","ACCESS_MASK_PROCESS"] = 1+offsetof( struct NtGetNextProcess_AS_TYPES,ACCESS_MASK_PROCESS );
 offsets["NtGetNextProcess","ULONG"] = 1+offsetof( struct NtGetNextProcess_AS_TYPES,ULONG );
 offsets["NtGetNextProcess","ULONG"] = 1+offsetof( struct NtGetNextProcess_AS_TYPES,ULONG1);
 offsets["NtGetNextProcess","PHANDLE"] = 1+offsetof( struct NtGetNextProcess_AS_TYPES,PHANDLE );
 offsets["NtGetNextProcess","NTSTATUS"] = 1+offsetof( struct NtGetNextProcess_AS_TYPES,NTSTATUS );
 offsets["NtGetNextThread",""] = offsetof( union all , NtGetNextThread );
 offsets["NtGetNextThread","HANDLE"] = 1+offsetof( struct NtGetNextThread_AS_TYPES,HANDLE );
 offsets["NtGetNextThread","HANDLE"] = 1+offsetof( struct NtGetNextThread_AS_TYPES,HANDLE1);
 offsets["NtGetNextThread","ACCESS_MASK_PROCESS"] = 1+offsetof( struct NtGetNextThread_AS_TYPES,ACCESS_MASK_PROCESS );
 offsets["NtGetNextThread","ULONG"] = 1+offsetof( struct NtGetNextThread_AS_TYPES,ULONG );
 offsets["NtGetNextThread","ULONG"] = 1+offsetof( struct NtGetNextThread_AS_TYPES,ULONG1);
 offsets["NtGetNextThread","PHANDLE"] = 1+offsetof( struct NtGetNextThread_AS_TYPES,PHANDLE );
 offsets["NtGetNextThread","NTSTATUS"] = 1+offsetof( struct NtGetNextThread_AS_TYPES,NTSTATUS );
 offsets["NtGetNlsSectionPtr",""] = offsetof( union all , NtGetNlsSectionPtr );
 offsets["NtGetNlsSectionPtr","ULONG"] = 1+offsetof( struct NtGetNlsSectionPtr_AS_TYPES,ULONG );
 offsets["NtGetNlsSectionPtr","ULONG"] = 1+offsetof( struct NtGetNlsSectionPtr_AS_TYPES,ULONG1);
 offsets["NtGetNlsSectionPtr","PVOID"] = 1+offsetof( struct NtGetNlsSectionPtr_AS_TYPES,PVOID );
 offsets["NtGetNlsSectionPtr","PVOID"] = 1+offsetof( struct NtGetNlsSectionPtr_AS_TYPES,PVOID1);
 offsets["NtGetNlsSectionPtr","SIZE_T"] = 1+offsetof( struct NtGetNlsSectionPtr_AS_TYPES,SIZE_T );
 offsets["NtGetNlsSectionPtr","NTSTATUS"] = 1+offsetof( struct NtGetNlsSectionPtr_AS_TYPES,NTSTATUS );
 offsets["NtGetNotificationResourceManager",""] = offsetof( union all , NtGetNotificationResourceManager );
 offsets["NtGetNotificationResourceManager","HANDLE"] = 1+offsetof( struct NtGetNotificationResourceManager_AS_TYPES,HANDLE );
 offsets["NtGetNotificationResourceManager","TRANSACTION_NOTIFICATION"] = 1+offsetof( struct NtGetNotificationResourceManager_AS_TYPES,TRANSACTION_NOTIFICATION );
 offsets["NtGetNotificationResourceManager","ULONG"] = 1+offsetof( struct NtGetNotificationResourceManager_AS_TYPES,ULONG );
 offsets["NtGetNotificationResourceManager","LARGE_INTEGER"] = 1+offsetof( struct NtGetNotificationResourceManager_AS_TYPES,LARGE_INTEGER );
 offsets["NtGetNotificationResourceManager","ULONG"] = 1+offsetof( struct NtGetNotificationResourceManager_AS_TYPES,ULONG1);
 offsets["NtGetNotificationResourceManager","ULONG"] = 1+offsetof( struct NtGetNotificationResourceManager_AS_TYPES,ULONG2);
 offsets["NtGetNotificationResourceManager","ULONG"] = 1+offsetof( struct NtGetNotificationResourceManager_AS_TYPES,ULONG3);
 offsets["NtGetNotificationResourceManager","NTSTATUS"] = 1+offsetof( struct NtGetNotificationResourceManager_AS_TYPES,NTSTATUS );
 offsets["NtGetWriteWatch",""] = offsetof( union all , NtGetWriteWatch );
 offsets["NtGetWriteWatch","HANDLE"] = 1+offsetof( struct NtGetWriteWatch_AS_TYPES,HANDLE );
 offsets["NtGetWriteWatch","ULONG"] = 1+offsetof( struct NtGetWriteWatch_AS_TYPES,ULONG );
 offsets["NtGetWriteWatch","PVOID"] = 1+offsetof( struct NtGetWriteWatch_AS_TYPES,PVOID );
 offsets["NtGetWriteWatch","SIZE_T"] = 1+offsetof( struct NtGetWriteWatch_AS_TYPES,SIZE_T );
 offsets["NtGetWriteWatch","PVOID"] = 1+offsetof( struct NtGetWriteWatch_AS_TYPES,PVOID1);
 offsets["NtGetWriteWatch","ULONG"] = 1+offsetof( struct NtGetWriteWatch_AS_TYPES,ULONG1);
 offsets["NtGetWriteWatch","ULONG"] = 1+offsetof( struct NtGetWriteWatch_AS_TYPES,ULONG2);
 offsets["NtGetWriteWatch","NTSTATUS"] = 1+offsetof( struct NtGetWriteWatch_AS_TYPES,NTSTATUS );
 offsets["NtImpersonateAnonymousToken",""] = offsetof( union all , NtImpersonateAnonymousToken );
 offsets["NtImpersonateAnonymousToken","HANDLE"] = 1+offsetof( struct NtImpersonateAnonymousToken_AS_TYPES,HANDLE );
 offsets["NtImpersonateAnonymousToken","NTSTATUS"] = 1+offsetof( struct NtImpersonateAnonymousToken_AS_TYPES,NTSTATUS );
 offsets["NtImpersonateClientOfPort",""] = offsetof( union all , NtImpersonateClientOfPort );
 offsets["NtImpersonateClientOfPort","HANDLE"] = 1+offsetof( struct NtImpersonateClientOfPort_AS_TYPES,HANDLE );
 offsets["NtImpersonateClientOfPort","PORT_MESSAGE"] = 1+offsetof( struct NtImpersonateClientOfPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtImpersonateClientOfPort","NTSTATUS"] = 1+offsetof( struct NtImpersonateClientOfPort_AS_TYPES,NTSTATUS );
 offsets["NtImpersonateThread",""] = offsetof( union all , NtImpersonateThread );
 offsets["NtImpersonateThread","HANDLE"] = 1+offsetof( struct NtImpersonateThread_AS_TYPES,HANDLE );
 offsets["NtImpersonateThread","HANDLE"] = 1+offsetof( struct NtImpersonateThread_AS_TYPES,HANDLE1);
 offsets["NtImpersonateThread","SECURITY_QUALITY_OF_SERVICE"] = 1+offsetof( struct NtImpersonateThread_AS_TYPES,SECURITY_QUALITY_OF_SERVICE );
 offsets["NtImpersonateThread","NTSTATUS"] = 1+offsetof( struct NtImpersonateThread_AS_TYPES,NTSTATUS );
 offsets["NtInitializeEnclave",""] = offsetof( union all , NtInitializeEnclave );
 offsets["NtInitializeEnclave","HANDLE"] = 1+offsetof( struct NtInitializeEnclave_AS_TYPES,HANDLE );
 offsets["NtInitializeEnclave","PVOID"] = 1+offsetof( struct NtInitializeEnclave_AS_TYPES,PVOID );
 offsets["NtInitializeEnclave","PVOID"] = 1+offsetof( struct NtInitializeEnclave_AS_TYPES,PVOID1);
 offsets["NtInitializeEnclave","ULONG"] = 1+offsetof( struct NtInitializeEnclave_AS_TYPES,ULONG );
 offsets["NtInitializeEnclave","ULONG"] = 1+offsetof( struct NtInitializeEnclave_AS_TYPES,ULONG1);
 offsets["NtInitializeEnclave","NTSTATUS"] = 1+offsetof( struct NtInitializeEnclave_AS_TYPES,NTSTATUS );
 offsets["NtInitializeNlsFiles",""] = offsetof( union all , NtInitializeNlsFiles );
 offsets["NtInitializeNlsFiles","PVOID"] = 1+offsetof( struct NtInitializeNlsFiles_AS_TYPES,PVOID );
 offsets["NtInitializeNlsFiles","LCID"] = 1+offsetof( struct NtInitializeNlsFiles_AS_TYPES,LCID );
 offsets["NtInitializeNlsFiles","LARGE_INTEGER"] = 1+offsetof( struct NtInitializeNlsFiles_AS_TYPES,LARGE_INTEGER );
 offsets["NtInitializeNlsFiles","NTSTATUS"] = 1+offsetof( struct NtInitializeNlsFiles_AS_TYPES,NTSTATUS );
 offsets["NtInitializeRegistry",""] = offsetof( union all , NtInitializeRegistry );
 offsets["NtInitializeRegistry","USHORT"] = 1+offsetof( struct NtInitializeRegistry_AS_TYPES,USHORT );
 offsets["NtInitializeRegistry","NTSTATUS"] = 1+offsetof( struct NtInitializeRegistry_AS_TYPES,NTSTATUS );
 offsets["NtInitiatePowerAction",""] = offsetof( union all , NtInitiatePowerAction );
 offsets["NtInitiatePowerAction","POWER_ACTION"] = 1+offsetof( struct NtInitiatePowerAction_AS_TYPES,POWER_ACTION );
 offsets["NtInitiatePowerAction","SYSTEM_POWER_STATE"] = 1+offsetof( struct NtInitiatePowerAction_AS_TYPES,SYSTEM_POWER_STATE );
 offsets["NtInitiatePowerAction","ULONG"] = 1+offsetof( struct NtInitiatePowerAction_AS_TYPES,ULONG );
 offsets["NtInitiatePowerAction","BOOLEAN"] = 1+offsetof( struct NtInitiatePowerAction_AS_TYPES,BOOLEAN );
 offsets["NtInitiatePowerAction","NTSTATUS"] = 1+offsetof( struct NtInitiatePowerAction_AS_TYPES,NTSTATUS );
 offsets["NtIsProcessInJob",""] = offsetof( union all , NtIsProcessInJob );
 offsets["NtIsProcessInJob","HANDLE"] = 1+offsetof( struct NtIsProcessInJob_AS_TYPES,HANDLE );
 offsets["NtIsProcessInJob","HANDLE"] = 1+offsetof( struct NtIsProcessInJob_AS_TYPES,HANDLE1);
 offsets["NtIsProcessInJob","NTSTATUS"] = 1+offsetof( struct NtIsProcessInJob_AS_TYPES,NTSTATUS );
 offsets["NtListenPort",""] = offsetof( union all , NtListenPort );
 offsets["NtListenPort","HANDLE"] = 1+offsetof( struct NtListenPort_AS_TYPES,HANDLE );
 offsets["NtListenPort","PORT_MESSAGE"] = 1+offsetof( struct NtListenPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtListenPort","NTSTATUS"] = 1+offsetof( struct NtListenPort_AS_TYPES,NTSTATUS );
 offsets["NtLoadDriver",""] = offsetof( union all , NtLoadDriver );
 offsets["NtLoadDriver","UNICODE_STRING"] = 1+offsetof( struct NtLoadDriver_AS_TYPES,UNICODE_STRING );
 offsets["NtLoadDriver","NTSTATUS"] = 1+offsetof( struct NtLoadDriver_AS_TYPES,NTSTATUS );
 offsets["NtLoadEnclaveData",""] = offsetof( union all , NtLoadEnclaveData );
 offsets["NtLoadEnclaveData","HANDLE"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,HANDLE );
 offsets["NtLoadEnclaveData","PVOID"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,PVOID );
 offsets["NtLoadEnclaveData","PVOID"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,PVOID1);
 offsets["NtLoadEnclaveData","SIZE_T"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,SIZE_T );
 offsets["NtLoadEnclaveData","ULONG"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,ULONG );
 offsets["NtLoadEnclaveData","PVOID"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,PVOID2);
 offsets["NtLoadEnclaveData","ULONG"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,ULONG1);
 offsets["NtLoadEnclaveData","SIZE_T"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,SIZE_T1);
 offsets["NtLoadEnclaveData","ULONG"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,ULONG2);
 offsets["NtLoadEnclaveData","NTSTATUS"] = 1+offsetof( struct NtLoadEnclaveData_AS_TYPES,NTSTATUS );
 offsets["NtLoadKey",""] = offsetof( union all , NtLoadKey );
 offsets["NtLoadKey","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtLoadKey_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtLoadKey","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtLoadKey_AS_TYPES,OBJECT_ATTRIBUTES1);
 offsets["NtLoadKey","NTSTATUS"] = 1+offsetof( struct NtLoadKey_AS_TYPES,NTSTATUS );
 offsets["NtLoadKey2",""] = offsetof( union all , NtLoadKey2 );
 offsets["NtLoadKey2","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtLoadKey2_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtLoadKey2","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtLoadKey2_AS_TYPES,OBJECT_ATTRIBUTES1);
 offsets["NtLoadKey2","ULONG"] = 1+offsetof( struct NtLoadKey2_AS_TYPES,ULONG );
 offsets["NtLoadKey2","NTSTATUS"] = 1+offsetof( struct NtLoadKey2_AS_TYPES,NTSTATUS );
 offsets["NtLoadKeyEx",""] = offsetof( union all , NtLoadKeyEx );
 offsets["NtLoadKeyEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtLoadKeyEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,OBJECT_ATTRIBUTES1);
 offsets["NtLoadKeyEx","ULONG"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,ULONG );
 offsets["NtLoadKeyEx","HANDLE"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,HANDLE );
 offsets["NtLoadKeyEx","HANDLE"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,HANDLE1);
 offsets["NtLoadKeyEx","ACCESS_MASK"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,ACCESS_MASK );
 offsets["NtLoadKeyEx","PHANDLE"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,PHANDLE );
 offsets["NtLoadKeyEx","IO_STATUS_BLOCK"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtLoadKeyEx","NTSTATUS"] = 1+offsetof( struct NtLoadKeyEx_AS_TYPES,NTSTATUS );
 offsets["NtLockFile",""] = offsetof( union all , NtLockFile );
 offsets["NtLockFile","HANDLE"] = 1+offsetof( struct NtLockFile_AS_TYPES,HANDLE );
 offsets["NtLockFile","HANDLE"] = 1+offsetof( struct NtLockFile_AS_TYPES,HANDLE1);
 offsets["NtLockFile","PIO_APC_ROUTINE"] = 1+offsetof( struct NtLockFile_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtLockFile","PVOID"] = 1+offsetof( struct NtLockFile_AS_TYPES,PVOID );
 offsets["NtLockFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtLockFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtLockFile","LARGE_INTEGER"] = 1+offsetof( struct NtLockFile_AS_TYPES,LARGE_INTEGER );
 offsets["NtLockFile","LARGE_INTEGER"] = 1+offsetof( struct NtLockFile_AS_TYPES,LARGE_INTEGER1);
 offsets["NtLockFile","ULONG"] = 1+offsetof( struct NtLockFile_AS_TYPES,ULONG );
 offsets["NtLockFile","BOOLEAN"] = 1+offsetof( struct NtLockFile_AS_TYPES,BOOLEAN );
 offsets["NtLockFile","BOOLEAN"] = 1+offsetof( struct NtLockFile_AS_TYPES,BOOLEAN1);
 offsets["NtLockFile","NTSTATUS"] = 1+offsetof( struct NtLockFile_AS_TYPES,NTSTATUS );
 offsets["NtLockProductActivationKeys",""] = offsetof( union all , NtLockProductActivationKeys );
 offsets["NtLockProductActivationKeys","ULONG"] = 1+offsetof( struct NtLockProductActivationKeys_AS_TYPES,ULONG );
 offsets["NtLockProductActivationKeys","ULONG"] = 1+offsetof( struct NtLockProductActivationKeys_AS_TYPES,ULONG1);
 offsets["NtLockProductActivationKeys","NTSTATUS"] = 1+offsetof( struct NtLockProductActivationKeys_AS_TYPES,NTSTATUS );
 offsets["NtLockRegistryKey",""] = offsetof( union all , NtLockRegistryKey );
 offsets["NtLockRegistryKey","HANDLE"] = 1+offsetof( struct NtLockRegistryKey_AS_TYPES,HANDLE );
 offsets["NtLockRegistryKey","NTSTATUS"] = 1+offsetof( struct NtLockRegistryKey_AS_TYPES,NTSTATUS );
 offsets["NtLockVirtualMemory",""] = offsetof( union all , NtLockVirtualMemory );
 offsets["NtLockVirtualMemory","HANDLE"] = 1+offsetof( struct NtLockVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtLockVirtualMemory","PVOID"] = 1+offsetof( struct NtLockVirtualMemory_AS_TYPES,PVOID );
 offsets["NtLockVirtualMemory","SIZE_T"] = 1+offsetof( struct NtLockVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtLockVirtualMemory","ULONG"] = 1+offsetof( struct NtLockVirtualMemory_AS_TYPES,ULONG );
 offsets["NtLockVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtLockVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtMakePermanentObject",""] = offsetof( union all , NtMakePermanentObject );
 offsets["NtMakePermanentObject","HANDLE"] = 1+offsetof( struct NtMakePermanentObject_AS_TYPES,HANDLE );
 offsets["NtMakePermanentObject","NTSTATUS"] = 1+offsetof( struct NtMakePermanentObject_AS_TYPES,NTSTATUS );
 offsets["NtMakeTemporaryObject",""] = offsetof( union all , NtMakeTemporaryObject );
 offsets["NtMakeTemporaryObject","HANDLE"] = 1+offsetof( struct NtMakeTemporaryObject_AS_TYPES,HANDLE );
 offsets["NtMakeTemporaryObject","NTSTATUS"] = 1+offsetof( struct NtMakeTemporaryObject_AS_TYPES,NTSTATUS );
 offsets["NtManageHotPatch",""] = offsetof( union all , NtManageHotPatch );
 offsets["NtManageHotPatch","HOT_PATCH_INFORMATION_CLASS"] = 1+offsetof( struct NtManageHotPatch_AS_TYPES,HOT_PATCH_INFORMATION_CLASS );
 offsets["NtManageHotPatch","PVOID"] = 1+offsetof( struct NtManageHotPatch_AS_TYPES,PVOID );
 offsets["NtManageHotPatch","ULONG"] = 1+offsetof( struct NtManageHotPatch_AS_TYPES,ULONG );
 offsets["NtManageHotPatch","ULONG"] = 1+offsetof( struct NtManageHotPatch_AS_TYPES,ULONG1);
 offsets["NtManageHotPatch","NTSTATUS"] = 1+offsetof( struct NtManageHotPatch_AS_TYPES,NTSTATUS );
 offsets["NtManagePartition",""] = offsetof( union all , NtManagePartition );
 offsets["NtManagePartition","HANDLE"] = 1+offsetof( struct NtManagePartition_AS_TYPES,HANDLE );
 offsets["NtManagePartition","HANDLE"] = 1+offsetof( struct NtManagePartition_AS_TYPES,HANDLE1);
 offsets["NtManagePartition","PARTITION_INFORMATION_CLASS"] = 1+offsetof( struct NtManagePartition_AS_TYPES,PARTITION_INFORMATION_CLASS );
 offsets["NtManagePartition","PVOID"] = 1+offsetof( struct NtManagePartition_AS_TYPES,PVOID );
 offsets["NtManagePartition","ULONG"] = 1+offsetof( struct NtManagePartition_AS_TYPES,ULONG );
 offsets["NtManagePartition","NTSTATUS"] = 1+offsetof( struct NtManagePartition_AS_TYPES,NTSTATUS );
 offsets["NtMapCMFModule",""] = offsetof( union all , NtMapCMFModule );
 offsets["NtMapCMFModule","ULONG"] = 1+offsetof( struct NtMapCMFModule_AS_TYPES,ULONG );
 offsets["NtMapCMFModule","ULONG"] = 1+offsetof( struct NtMapCMFModule_AS_TYPES,ULONG1);
 offsets["NtMapCMFModule","ULONG"] = 1+offsetof( struct NtMapCMFModule_AS_TYPES,ULONG2);
 offsets["NtMapCMFModule","ULONG"] = 1+offsetof( struct NtMapCMFModule_AS_TYPES,ULONG3);
 offsets["NtMapCMFModule","ULONG"] = 1+offsetof( struct NtMapCMFModule_AS_TYPES,ULONG4);
 offsets["NtMapCMFModule","PVOID"] = 1+offsetof( struct NtMapCMFModule_AS_TYPES,PVOID );
 offsets["NtMapCMFModule","NTSTATUS"] = 1+offsetof( struct NtMapCMFModule_AS_TYPES,NTSTATUS );
 offsets["NtMapUserPhysicalPages",""] = offsetof( union all , NtMapUserPhysicalPages );
 offsets["NtMapUserPhysicalPages","PVOID"] = 1+offsetof( struct NtMapUserPhysicalPages_AS_TYPES,PVOID );
 offsets["NtMapUserPhysicalPages","ULONG"] = 1+offsetof( struct NtMapUserPhysicalPages_AS_TYPES,ULONG );
 offsets["NtMapUserPhysicalPages","ULONG"] = 1+offsetof( struct NtMapUserPhysicalPages_AS_TYPES,ULONG1);
 offsets["NtMapUserPhysicalPages","NTSTATUS"] = 1+offsetof( struct NtMapUserPhysicalPages_AS_TYPES,NTSTATUS );
 offsets["NtMapUserPhysicalPagesScatter",""] = offsetof( union all , NtMapUserPhysicalPagesScatter );
 offsets["NtMapUserPhysicalPagesScatter","PVOID"] = 1+offsetof( struct NtMapUserPhysicalPagesScatter_AS_TYPES,PVOID );
 offsets["NtMapUserPhysicalPagesScatter","ULONG"] = 1+offsetof( struct NtMapUserPhysicalPagesScatter_AS_TYPES,ULONG );
 offsets["NtMapUserPhysicalPagesScatter","ULONG"] = 1+offsetof( struct NtMapUserPhysicalPagesScatter_AS_TYPES,ULONG1);
 offsets["NtMapUserPhysicalPagesScatter","NTSTATUS"] = 1+offsetof( struct NtMapUserPhysicalPagesScatter_AS_TYPES,NTSTATUS );
 offsets["NtMapViewOfSection",""] = offsetof( union all , NtMapViewOfSection );
 offsets["NtMapViewOfSection","HANDLE"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,HANDLE );
 offsets["NtMapViewOfSection","HANDLE"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,HANDLE1);
 offsets["NtMapViewOfSection","PVOID"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,PVOID );
 offsets["NtMapViewOfSection","ULONG"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,ULONG );
 offsets["NtMapViewOfSection","SIZE_T"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,SIZE_T );
 offsets["NtMapViewOfSection","LARGE_INTEGER"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,LARGE_INTEGER );
 offsets["NtMapViewOfSection","SIZE_T"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,SIZE_T1);
 offsets["NtMapViewOfSection","SECTION_INHERIT"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,SECTION_INHERIT );
 offsets["NtMapViewOfSection","ALLOCATION_TYPE"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,ALLOCATION_TYPE );
 offsets["NtMapViewOfSection","PAGE_PROTECT"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,PAGE_PROTECT );
 offsets["NtMapViewOfSection","NTSTATUS"] = 1+offsetof( struct NtMapViewOfSection_AS_TYPES,NTSTATUS );
 offsets["NtMapViewOfSectionEx",""] = offsetof( union all , NtMapViewOfSectionEx );
 offsets["NtMapViewOfSectionEx","HANDLE"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,HANDLE );
 offsets["NtMapViewOfSectionEx","HANDLE"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,HANDLE1);
 offsets["NtMapViewOfSectionEx","PVOID"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,PVOID );
 offsets["NtMapViewOfSectionEx","LARGE_INTEGER"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,LARGE_INTEGER );
 offsets["NtMapViewOfSectionEx","SIZE_T"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,SIZE_T );
 offsets["NtMapViewOfSectionEx","ULONG"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,ULONG );
 offsets["NtMapViewOfSectionEx","ULONG"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,ULONG1);
 offsets["NtMapViewOfSectionEx","MEM_EXTENDED_PARAMETER"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,MEM_EXTENDED_PARAMETER );
 offsets["NtMapViewOfSectionEx","ULONG"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,ULONG2);
 offsets["NtMapViewOfSectionEx","NTSTATUS"] = 1+offsetof( struct NtMapViewOfSectionEx_AS_TYPES,NTSTATUS );
 offsets["NtModifyBootEntry",""] = offsetof( union all , NtModifyBootEntry );
 offsets["NtModifyBootEntry","BOOT_ENTRY"] = 1+offsetof( struct NtModifyBootEntry_AS_TYPES,BOOT_ENTRY );
 offsets["NtModifyBootEntry","NTSTATUS"] = 1+offsetof( struct NtModifyBootEntry_AS_TYPES,NTSTATUS );
 offsets["NtModifyDriverEntry",""] = offsetof( union all , NtModifyDriverEntry );
 offsets["NtModifyDriverEntry","EFI_DRIVER_ENTRY"] = 1+offsetof( struct NtModifyDriverEntry_AS_TYPES,EFI_DRIVER_ENTRY );
 offsets["NtModifyDriverEntry","NTSTATUS"] = 1+offsetof( struct NtModifyDriverEntry_AS_TYPES,NTSTATUS );
 offsets["NtNotifyChangeDirectoryFile",""] = offsetof( union all , NtNotifyChangeDirectoryFile );
 offsets["NtNotifyChangeDirectoryFile","HANDLE"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,HANDLE );
 offsets["NtNotifyChangeDirectoryFile","HANDLE"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,HANDLE1);
 offsets["NtNotifyChangeDirectoryFile","PIO_APC_ROUTINE"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtNotifyChangeDirectoryFile","PVOID"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,PVOID );
 offsets["NtNotifyChangeDirectoryFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtNotifyChangeDirectoryFile","PVOID"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,PVOID1);
 offsets["NtNotifyChangeDirectoryFile","ULONG"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,ULONG );
 offsets["NtNotifyChangeDirectoryFile","ULONG"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,ULONG1);
 offsets["NtNotifyChangeDirectoryFile","BOOLEAN"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,BOOLEAN );
 offsets["NtNotifyChangeDirectoryFile","NTSTATUS"] = 1+offsetof( struct NtNotifyChangeDirectoryFile_AS_TYPES,NTSTATUS );
 offsets["NtNotifyChangeDirectoryFileEx",""] = offsetof( union all , NtNotifyChangeDirectoryFileEx );
 offsets["NtNotifyChangeDirectoryFileEx","HANDLE"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,HANDLE );
 offsets["NtNotifyChangeDirectoryFileEx","HANDLE"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,HANDLE1);
 offsets["NtNotifyChangeDirectoryFileEx","PIO_APC_ROUTINE"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtNotifyChangeDirectoryFileEx","PVOID"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,PVOID );
 offsets["NtNotifyChangeDirectoryFileEx","IO_STATUS_BLOCK"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtNotifyChangeDirectoryFileEx","PVOID"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,PVOID1);
 offsets["NtNotifyChangeDirectoryFileEx","ULONG"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,ULONG );
 offsets["NtNotifyChangeDirectoryFileEx","ULONG"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,ULONG1);
 offsets["NtNotifyChangeDirectoryFileEx","BOOLEAN"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,BOOLEAN );
 offsets["NtNotifyChangeDirectoryFileEx","DIRECTORY_NOTIFY_INFORMATION_CLASS"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,DIRECTORY_NOTIFY_INFORMATION_CLASS );
 offsets["NtNotifyChangeDirectoryFileEx","NTSTATUS"] = 1+offsetof( struct NtNotifyChangeDirectoryFileEx_AS_TYPES,NTSTATUS );
 offsets["NtNotifyChangeKey",""] = offsetof( union all , NtNotifyChangeKey );
 offsets["NtNotifyChangeKey","HANDLE"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,HANDLE );
 offsets["NtNotifyChangeKey","HANDLE"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,HANDLE1);
 offsets["NtNotifyChangeKey","PIO_APC_ROUTINE"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtNotifyChangeKey","PVOID"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,PVOID );
 offsets["NtNotifyChangeKey","IO_STATUS_BLOCK"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtNotifyChangeKey","ULONG"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,ULONG );
 offsets["NtNotifyChangeKey","BOOLEAN"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,BOOLEAN );
 offsets["NtNotifyChangeKey","PVOID"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,PVOID1);
 offsets["NtNotifyChangeKey","ULONG"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,ULONG1);
 offsets["NtNotifyChangeKey","BOOLEAN"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,BOOLEAN1);
 offsets["NtNotifyChangeKey","NTSTATUS"] = 1+offsetof( struct NtNotifyChangeKey_AS_TYPES,NTSTATUS );
 offsets["NtNotifyChangeMultipleKeys",""] = offsetof( union all , NtNotifyChangeMultipleKeys );
 offsets["NtNotifyChangeMultipleKeys","HANDLE"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,HANDLE );
 offsets["NtNotifyChangeMultipleKeys","ULONG"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,ULONG );
 offsets["NtNotifyChangeMultipleKeys","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtNotifyChangeMultipleKeys","HANDLE"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,HANDLE1);
 offsets["NtNotifyChangeMultipleKeys","PIO_APC_ROUTINE"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtNotifyChangeMultipleKeys","PVOID"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,PVOID );
 offsets["NtNotifyChangeMultipleKeys","IO_STATUS_BLOCK"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtNotifyChangeMultipleKeys","ULONG"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,ULONG1);
 offsets["NtNotifyChangeMultipleKeys","BOOLEAN"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,BOOLEAN );
 offsets["NtNotifyChangeMultipleKeys","PVOID"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,PVOID1);
 offsets["NtNotifyChangeMultipleKeys","ULONG"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,ULONG2);
 offsets["NtNotifyChangeMultipleKeys","BOOLEAN"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,BOOLEAN1);
 offsets["NtNotifyChangeMultipleKeys","NTSTATUS"] = 1+offsetof( struct NtNotifyChangeMultipleKeys_AS_TYPES,NTSTATUS );
 offsets["NtNotifyChangeSession",""] = offsetof( union all , NtNotifyChangeSession );
 offsets["NtNotifyChangeSession","HANDLE"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,HANDLE );
 offsets["NtNotifyChangeSession","ULONG"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,ULONG );
 offsets["NtNotifyChangeSession","LARGE_INTEGER"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,LARGE_INTEGER );
 offsets["NtNotifyChangeSession","IO_SESSION_EVENT"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,IO_SESSION_EVENT );
 offsets["NtNotifyChangeSession","IO_SESSION_STATE"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,IO_SESSION_STATE );
 offsets["NtNotifyChangeSession","IO_SESSION_STATE"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,IO_SESSION_STATE1);
 offsets["NtNotifyChangeSession","PVOID"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,PVOID );
 offsets["NtNotifyChangeSession","ULONG"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,ULONG1);
 offsets["NtNotifyChangeSession","NTSTATUS"] = 1+offsetof( struct NtNotifyChangeSession_AS_TYPES,NTSTATUS );
 offsets["NtOpenDirectoryObject",""] = offsetof( union all , NtOpenDirectoryObject );
 offsets["NtOpenDirectoryObject","PHANDLE"] = 1+offsetof( struct NtOpenDirectoryObject_AS_TYPES,PHANDLE );
 offsets["NtOpenDirectoryObject","ACCESS_MASK_DIRECTORY"] = 1+offsetof( struct NtOpenDirectoryObject_AS_TYPES,ACCESS_MASK_DIRECTORY );
 offsets["NtOpenDirectoryObject","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenDirectoryObject_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenDirectoryObject","NTSTATUS"] = 1+offsetof( struct NtOpenDirectoryObject_AS_TYPES,NTSTATUS );
 offsets["NtOpenEnlistment",""] = offsetof( union all , NtOpenEnlistment );
 offsets["NtOpenEnlistment","PHANDLE"] = 1+offsetof( struct NtOpenEnlistment_AS_TYPES,PHANDLE );
 offsets["NtOpenEnlistment","ACCESS_MASK_ENLISTMENT"] = 1+offsetof( struct NtOpenEnlistment_AS_TYPES,ACCESS_MASK_ENLISTMENT );
 offsets["NtOpenEnlistment","HANDLE"] = 1+offsetof( struct NtOpenEnlistment_AS_TYPES,HANDLE );
 offsets["NtOpenEnlistment","GUID"] = 1+offsetof( struct NtOpenEnlistment_AS_TYPES,GUID );
 offsets["NtOpenEnlistment","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenEnlistment_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenEnlistment","NTSTATUS"] = 1+offsetof( struct NtOpenEnlistment_AS_TYPES,NTSTATUS );
 offsets["NtOpenEvent",""] = offsetof( union all , NtOpenEvent );
 offsets["NtOpenEvent","PHANDLE"] = 1+offsetof( struct NtOpenEvent_AS_TYPES,PHANDLE );
 offsets["NtOpenEvent","ACCESS_MASK_EVENT"] = 1+offsetof( struct NtOpenEvent_AS_TYPES,ACCESS_MASK_EVENT );
 offsets["NtOpenEvent","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenEvent_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenEvent","NTSTATUS"] = 1+offsetof( struct NtOpenEvent_AS_TYPES,NTSTATUS );
 offsets["NtOpenEventPair",""] = offsetof( union all , NtOpenEventPair );
 offsets["NtOpenEventPair","PHANDLE"] = 1+offsetof( struct NtOpenEventPair_AS_TYPES,PHANDLE );
 offsets["NtOpenEventPair","ACCESS_MASK_EVENTPAIR"] = 1+offsetof( struct NtOpenEventPair_AS_TYPES,ACCESS_MASK_EVENTPAIR );
 offsets["NtOpenEventPair","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenEventPair_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenEventPair","NTSTATUS"] = 1+offsetof( struct NtOpenEventPair_AS_TYPES,NTSTATUS );
 offsets["NtOpenFile",""] = offsetof( union all , NtOpenFile );
 offsets["NtOpenFile","PHANDLE"] = 1+offsetof( struct NtOpenFile_AS_TYPES,PHANDLE );
 offsets["NtOpenFile","ACCESS_MASK_FILE"] = 1+offsetof( struct NtOpenFile_AS_TYPES,ACCESS_MASK_FILE );
 offsets["NtOpenFile","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenFile_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtOpenFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtOpenFile","FILE_SHARE_ACCESS"] = 1+offsetof( struct NtOpenFile_AS_TYPES,FILE_SHARE_ACCESS );
 offsets["NtOpenFile","FILE_OPTIONS"] = 1+offsetof( struct NtOpenFile_AS_TYPES,FILE_OPTIONS );
 offsets["NtOpenFile","NTSTATUS"] = 1+offsetof( struct NtOpenFile_AS_TYPES,NTSTATUS );
 offsets["NtOpenIoCompletion",""] = offsetof( union all , NtOpenIoCompletion );
 offsets["NtOpenIoCompletion","PHANDLE"] = 1+offsetof( struct NtOpenIoCompletion_AS_TYPES,PHANDLE );
 offsets["NtOpenIoCompletion","ACCESS_MASK_IOCOMPLETION"] = 1+offsetof( struct NtOpenIoCompletion_AS_TYPES,ACCESS_MASK_IOCOMPLETION );
 offsets["NtOpenIoCompletion","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenIoCompletion_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenIoCompletion","NTSTATUS"] = 1+offsetof( struct NtOpenIoCompletion_AS_TYPES,NTSTATUS );
 offsets["NtOpenJobObject",""] = offsetof( union all , NtOpenJobObject );
 offsets["NtOpenJobObject","PHANDLE"] = 1+offsetof( struct NtOpenJobObject_AS_TYPES,PHANDLE );
 offsets["NtOpenJobObject","ACCESS_MASK_JOB"] = 1+offsetof( struct NtOpenJobObject_AS_TYPES,ACCESS_MASK_JOB );
 offsets["NtOpenJobObject","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenJobObject_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenJobObject","NTSTATUS"] = 1+offsetof( struct NtOpenJobObject_AS_TYPES,NTSTATUS );
 offsets["NtOpenKey",""] = offsetof( union all , NtOpenKey );
 offsets["NtOpenKey","PHANDLE"] = 1+offsetof( struct NtOpenKey_AS_TYPES,PHANDLE );
 offsets["NtOpenKey","ACCESS_MASK_KEY"] = 1+offsetof( struct NtOpenKey_AS_TYPES,ACCESS_MASK_KEY );
 offsets["NtOpenKey","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenKey_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenKey","NTSTATUS"] = 1+offsetof( struct NtOpenKey_AS_TYPES,NTSTATUS );
 offsets["NtOpenKeyEx",""] = offsetof( union all , NtOpenKeyEx );
 offsets["NtOpenKeyEx","PHANDLE"] = 1+offsetof( struct NtOpenKeyEx_AS_TYPES,PHANDLE );
 offsets["NtOpenKeyEx","ACCESS_MASK_KEY"] = 1+offsetof( struct NtOpenKeyEx_AS_TYPES,ACCESS_MASK_KEY );
 offsets["NtOpenKeyEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenKeyEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenKeyEx","ULONG"] = 1+offsetof( struct NtOpenKeyEx_AS_TYPES,ULONG );
 offsets["NtOpenKeyEx","NTSTATUS"] = 1+offsetof( struct NtOpenKeyEx_AS_TYPES,NTSTATUS );
 offsets["NtOpenKeyTransacted",""] = offsetof( union all , NtOpenKeyTransacted );
 offsets["NtOpenKeyTransacted","PHANDLE"] = 1+offsetof( struct NtOpenKeyTransacted_AS_TYPES,PHANDLE );
 offsets["NtOpenKeyTransacted","ACCESS_MASK_KEY"] = 1+offsetof( struct NtOpenKeyTransacted_AS_TYPES,ACCESS_MASK_KEY );
 offsets["NtOpenKeyTransacted","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenKeyTransacted_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenKeyTransacted","HANDLE"] = 1+offsetof( struct NtOpenKeyTransacted_AS_TYPES,HANDLE );
 offsets["NtOpenKeyTransacted","NTSTATUS"] = 1+offsetof( struct NtOpenKeyTransacted_AS_TYPES,NTSTATUS );
 offsets["NtOpenKeyTransactedEx",""] = offsetof( union all , NtOpenKeyTransactedEx );
 offsets["NtOpenKeyTransactedEx","PHANDLE"] = 1+offsetof( struct NtOpenKeyTransactedEx_AS_TYPES,PHANDLE );
 offsets["NtOpenKeyTransactedEx","ACCESS_MASK_KEY"] = 1+offsetof( struct NtOpenKeyTransactedEx_AS_TYPES,ACCESS_MASK_KEY );
 offsets["NtOpenKeyTransactedEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenKeyTransactedEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenKeyTransactedEx","ULONG"] = 1+offsetof( struct NtOpenKeyTransactedEx_AS_TYPES,ULONG );
 offsets["NtOpenKeyTransactedEx","HANDLE"] = 1+offsetof( struct NtOpenKeyTransactedEx_AS_TYPES,HANDLE );
 offsets["NtOpenKeyTransactedEx","NTSTATUS"] = 1+offsetof( struct NtOpenKeyTransactedEx_AS_TYPES,NTSTATUS );
 offsets["NtOpenKeyedEvent",""] = offsetof( union all , NtOpenKeyedEvent );
 offsets["NtOpenKeyedEvent","PHANDLE"] = 1+offsetof( struct NtOpenKeyedEvent_AS_TYPES,PHANDLE );
 offsets["NtOpenKeyedEvent","ACCESS_MASK_KEYEDEVENT"] = 1+offsetof( struct NtOpenKeyedEvent_AS_TYPES,ACCESS_MASK_KEYEDEVENT );
 offsets["NtOpenKeyedEvent","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenKeyedEvent_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenKeyedEvent","NTSTATUS"] = 1+offsetof( struct NtOpenKeyedEvent_AS_TYPES,NTSTATUS );
 offsets["NtOpenMutant",""] = offsetof( union all , NtOpenMutant );
 offsets["NtOpenMutant","PHANDLE"] = 1+offsetof( struct NtOpenMutant_AS_TYPES,PHANDLE );
 offsets["NtOpenMutant","ACCESS_MASK_MUTANT"] = 1+offsetof( struct NtOpenMutant_AS_TYPES,ACCESS_MASK_MUTANT );
 offsets["NtOpenMutant","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenMutant_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenMutant","NTSTATUS"] = 1+offsetof( struct NtOpenMutant_AS_TYPES,NTSTATUS );
 offsets["NtOpenObjectAuditAlarm",""] = offsetof( union all , NtOpenObjectAuditAlarm );
 offsets["NtOpenObjectAuditAlarm","UNICODE_STRING"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,UNICODE_STRING );
 offsets["NtOpenObjectAuditAlarm","PVOID"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,PVOID );
 offsets["NtOpenObjectAuditAlarm","UNICODE_STRING"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,UNICODE_STRING1);
 offsets["NtOpenObjectAuditAlarm","UNICODE_STRING"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,UNICODE_STRING2);
 offsets["NtOpenObjectAuditAlarm","SECURITY_DESCRIPTOR"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,SECURITY_DESCRIPTOR );
 offsets["NtOpenObjectAuditAlarm","HANDLE"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,HANDLE );
 offsets["NtOpenObjectAuditAlarm","ACCESS_MASK"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,ACCESS_MASK );
 offsets["NtOpenObjectAuditAlarm","ACCESS_MASK"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,ACCESS_MASK1);
 offsets["NtOpenObjectAuditAlarm","PRIVILEGE_SET"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,PRIVILEGE_SET );
 offsets["NtOpenObjectAuditAlarm","BOOLEAN"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,BOOLEAN );
 offsets["NtOpenObjectAuditAlarm","BOOLEAN"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,BOOLEAN1);
 offsets["NtOpenObjectAuditAlarm","BOOLEAN"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,BOOLEAN2);
 offsets["NtOpenObjectAuditAlarm","NTSTATUS"] = 1+offsetof( struct NtOpenObjectAuditAlarm_AS_TYPES,NTSTATUS );
 offsets["NtOpenPartition",""] = offsetof( union all , NtOpenPartition );
 offsets["NtOpenPartition","PHANDLE"] = 1+offsetof( struct NtOpenPartition_AS_TYPES,PHANDLE );
 offsets["NtOpenPartition","ACCESS_MASK_PARTITION"] = 1+offsetof( struct NtOpenPartition_AS_TYPES,ACCESS_MASK_PARTITION );
 offsets["NtOpenPartition","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenPartition_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenPartition","NTSTATUS"] = 1+offsetof( struct NtOpenPartition_AS_TYPES,NTSTATUS );
 offsets["NtOpenPrivateNamespace",""] = offsetof( union all , NtOpenPrivateNamespace );
 offsets["NtOpenPrivateNamespace","PHANDLE"] = 1+offsetof( struct NtOpenPrivateNamespace_AS_TYPES,PHANDLE );
 offsets["NtOpenPrivateNamespace","ACCESS_MASK"] = 1+offsetof( struct NtOpenPrivateNamespace_AS_TYPES,ACCESS_MASK );
 offsets["NtOpenPrivateNamespace","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenPrivateNamespace_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenPrivateNamespace","PVOID"] = 1+offsetof( struct NtOpenPrivateNamespace_AS_TYPES,PVOID );
 offsets["NtOpenPrivateNamespace","NTSTATUS"] = 1+offsetof( struct NtOpenPrivateNamespace_AS_TYPES,NTSTATUS );
 offsets["NtOpenProcess",""] = offsetof( union all , NtOpenProcess );
 offsets["NtOpenProcess","PHANDLE"] = 1+offsetof( struct NtOpenProcess_AS_TYPES,PHANDLE );
 offsets["NtOpenProcess","ACCESS_MASK_PROCESS"] = 1+offsetof( struct NtOpenProcess_AS_TYPES,ACCESS_MASK_PROCESS );
 offsets["NtOpenProcess","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenProcess_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenProcess","CLIENT_ID"] = 1+offsetof( struct NtOpenProcess_AS_TYPES,CLIENT_ID );
 offsets["NtOpenProcess","NTSTATUS"] = 1+offsetof( struct NtOpenProcess_AS_TYPES,NTSTATUS );
 offsets["NtOpenProcessToken",""] = offsetof( union all , NtOpenProcessToken );
 offsets["NtOpenProcessToken","HANDLE"] = 1+offsetof( struct NtOpenProcessToken_AS_TYPES,HANDLE );
 offsets["NtOpenProcessToken","ACCESS_MASK_PROCESS"] = 1+offsetof( struct NtOpenProcessToken_AS_TYPES,ACCESS_MASK_PROCESS );
 offsets["NtOpenProcessToken","PHANDLE"] = 1+offsetof( struct NtOpenProcessToken_AS_TYPES,PHANDLE );
 offsets["NtOpenProcessToken","NTSTATUS"] = 1+offsetof( struct NtOpenProcessToken_AS_TYPES,NTSTATUS );
 offsets["NtOpenProcessTokenEx",""] = offsetof( union all , NtOpenProcessTokenEx );
 offsets["NtOpenProcessTokenEx","HANDLE"] = 1+offsetof( struct NtOpenProcessTokenEx_AS_TYPES,HANDLE );
 offsets["NtOpenProcessTokenEx","ACCESS_MASK_PROCESS"] = 1+offsetof( struct NtOpenProcessTokenEx_AS_TYPES,ACCESS_MASK_PROCESS );
 offsets["NtOpenProcessTokenEx","ULONG"] = 1+offsetof( struct NtOpenProcessTokenEx_AS_TYPES,ULONG );
 offsets["NtOpenProcessTokenEx","PHANDLE"] = 1+offsetof( struct NtOpenProcessTokenEx_AS_TYPES,PHANDLE );
 offsets["NtOpenProcessTokenEx","NTSTATUS"] = 1+offsetof( struct NtOpenProcessTokenEx_AS_TYPES,NTSTATUS );
 offsets["NtOpenRegistryTransaction",""] = offsetof( union all , NtOpenRegistryTransaction );
 offsets["NtOpenRegistryTransaction","PHANDLE"] = 1+offsetof( struct NtOpenRegistryTransaction_AS_TYPES,PHANDLE );
 offsets["NtOpenRegistryTransaction","ACCESS_MASK_TRANSACTION"] = 1+offsetof( struct NtOpenRegistryTransaction_AS_TYPES,ACCESS_MASK_TRANSACTION );
 offsets["NtOpenRegistryTransaction","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenRegistryTransaction_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenRegistryTransaction","NTSTATUS"] = 1+offsetof( struct NtOpenRegistryTransaction_AS_TYPES,NTSTATUS );
 offsets["NtOpenResourceManager",""] = offsetof( union all , NtOpenResourceManager );
 offsets["NtOpenResourceManager","PHANDLE"] = 1+offsetof( struct NtOpenResourceManager_AS_TYPES,PHANDLE );
 offsets["NtOpenResourceManager","ACCESS_MASK_RESOURCEMANAGER"] = 1+offsetof( struct NtOpenResourceManager_AS_TYPES,ACCESS_MASK_RESOURCEMANAGER );
 offsets["NtOpenResourceManager","HANDLE"] = 1+offsetof( struct NtOpenResourceManager_AS_TYPES,HANDLE );
 offsets["NtOpenResourceManager","GUID"] = 1+offsetof( struct NtOpenResourceManager_AS_TYPES,GUID );
 offsets["NtOpenResourceManager","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenResourceManager_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenResourceManager","NTSTATUS"] = 1+offsetof( struct NtOpenResourceManager_AS_TYPES,NTSTATUS );
 offsets["NtOpenSection",""] = offsetof( union all , NtOpenSection );
 offsets["NtOpenSection","PHANDLE"] = 1+offsetof( struct NtOpenSection_AS_TYPES,PHANDLE );
 offsets["NtOpenSection","ACCESS_MASK_SECTION"] = 1+offsetof( struct NtOpenSection_AS_TYPES,ACCESS_MASK_SECTION );
 offsets["NtOpenSection","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenSection_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenSection","NTSTATUS"] = 1+offsetof( struct NtOpenSection_AS_TYPES,NTSTATUS );
 offsets["NtOpenSemaphore",""] = offsetof( union all , NtOpenSemaphore );
 offsets["NtOpenSemaphore","PHANDLE"] = 1+offsetof( struct NtOpenSemaphore_AS_TYPES,PHANDLE );
 offsets["NtOpenSemaphore","ACCESS_MASK_SEMAPHORE"] = 1+offsetof( struct NtOpenSemaphore_AS_TYPES,ACCESS_MASK_SEMAPHORE );
 offsets["NtOpenSemaphore","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenSemaphore_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenSemaphore","NTSTATUS"] = 1+offsetof( struct NtOpenSemaphore_AS_TYPES,NTSTATUS );
 offsets["NtOpenSession",""] = offsetof( union all , NtOpenSession );
 offsets["NtOpenSession","PHANDLE"] = 1+offsetof( struct NtOpenSession_AS_TYPES,PHANDLE );
 offsets["NtOpenSession","ACCESS_MASK_SESSION"] = 1+offsetof( struct NtOpenSession_AS_TYPES,ACCESS_MASK_SESSION );
 offsets["NtOpenSession","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenSession_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenSession","NTSTATUS"] = 1+offsetof( struct NtOpenSession_AS_TYPES,NTSTATUS );
 offsets["NtOpenSymbolicLinkObject",""] = offsetof( union all , NtOpenSymbolicLinkObject );
 offsets["NtOpenSymbolicLinkObject","PHANDLE"] = 1+offsetof( struct NtOpenSymbolicLinkObject_AS_TYPES,PHANDLE );
 offsets["NtOpenSymbolicLinkObject","ACCESS_MASK_LINK"] = 1+offsetof( struct NtOpenSymbolicLinkObject_AS_TYPES,ACCESS_MASK_LINK );
 offsets["NtOpenSymbolicLinkObject","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenSymbolicLinkObject_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenSymbolicLinkObject","NTSTATUS"] = 1+offsetof( struct NtOpenSymbolicLinkObject_AS_TYPES,NTSTATUS );
 offsets["NtOpenThread",""] = offsetof( union all , NtOpenThread );
 offsets["NtOpenThread","PHANDLE"] = 1+offsetof( struct NtOpenThread_AS_TYPES,PHANDLE );
 offsets["NtOpenThread","ACCESS_MASK_THREAD"] = 1+offsetof( struct NtOpenThread_AS_TYPES,ACCESS_MASK_THREAD );
 offsets["NtOpenThread","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenThread_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenThread","CLIENT_ID"] = 1+offsetof( struct NtOpenThread_AS_TYPES,CLIENT_ID );
 offsets["NtOpenThread","NTSTATUS"] = 1+offsetof( struct NtOpenThread_AS_TYPES,NTSTATUS );
 offsets["NtOpenThreadToken",""] = offsetof( union all , NtOpenThreadToken );
 offsets["NtOpenThreadToken","PHANDLE"] = 1+offsetof( struct NtOpenThreadToken_AS_TYPES,PHANDLE );
 offsets["NtOpenThreadToken","ACCESS_MASK_THREAD"] = 1+offsetof( struct NtOpenThreadToken_AS_TYPES,ACCESS_MASK_THREAD );
 offsets["NtOpenThreadToken","BOOLEAN"] = 1+offsetof( struct NtOpenThreadToken_AS_TYPES,BOOLEAN );
 offsets["NtOpenThreadToken","PHANDLE"] = 1+offsetof( struct NtOpenThreadToken_AS_TYPES,PHANDLE1);
 offsets["NtOpenThreadToken","NTSTATUS"] = 1+offsetof( struct NtOpenThreadToken_AS_TYPES,NTSTATUS );
 offsets["NtOpenThreadTokenEx",""] = offsetof( union all , NtOpenThreadTokenEx );
 offsets["NtOpenThreadTokenEx","PHANDLE"] = 1+offsetof( struct NtOpenThreadTokenEx_AS_TYPES,PHANDLE );
 offsets["NtOpenThreadTokenEx","ACCESS_MASK_THREAD"] = 1+offsetof( struct NtOpenThreadTokenEx_AS_TYPES,ACCESS_MASK_THREAD );
 offsets["NtOpenThreadTokenEx","BOOLEAN"] = 1+offsetof( struct NtOpenThreadTokenEx_AS_TYPES,BOOLEAN );
 offsets["NtOpenThreadTokenEx","ULONG"] = 1+offsetof( struct NtOpenThreadTokenEx_AS_TYPES,ULONG );
 offsets["NtOpenThreadTokenEx","PHANDLE"] = 1+offsetof( struct NtOpenThreadTokenEx_AS_TYPES,PHANDLE1);
 offsets["NtOpenThreadTokenEx","NTSTATUS"] = 1+offsetof( struct NtOpenThreadTokenEx_AS_TYPES,NTSTATUS );
 offsets["NtOpenTimer",""] = offsetof( union all , NtOpenTimer );
 offsets["NtOpenTimer","PHANDLE"] = 1+offsetof( struct NtOpenTimer_AS_TYPES,PHANDLE );
 offsets["NtOpenTimer","ACCESS_MASK_TIMER"] = 1+offsetof( struct NtOpenTimer_AS_TYPES,ACCESS_MASK_TIMER );
 offsets["NtOpenTimer","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenTimer_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenTimer","NTSTATUS"] = 1+offsetof( struct NtOpenTimer_AS_TYPES,NTSTATUS );
 offsets["NtOpenTransaction",""] = offsetof( union all , NtOpenTransaction );
 offsets["NtOpenTransaction","PHANDLE"] = 1+offsetof( struct NtOpenTransaction_AS_TYPES,PHANDLE );
 offsets["NtOpenTransaction","ACCESS_MASK_TRANSACTION"] = 1+offsetof( struct NtOpenTransaction_AS_TYPES,ACCESS_MASK_TRANSACTION );
 offsets["NtOpenTransaction","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenTransaction_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenTransaction","GUID"] = 1+offsetof( struct NtOpenTransaction_AS_TYPES,GUID );
 offsets["NtOpenTransaction","HANDLE"] = 1+offsetof( struct NtOpenTransaction_AS_TYPES,HANDLE );
 offsets["NtOpenTransaction","NTSTATUS"] = 1+offsetof( struct NtOpenTransaction_AS_TYPES,NTSTATUS );
 offsets["NtOpenTransactionManager",""] = offsetof( union all , NtOpenTransactionManager );
 offsets["NtOpenTransactionManager","PHANDLE"] = 1+offsetof( struct NtOpenTransactionManager_AS_TYPES,PHANDLE );
 offsets["NtOpenTransactionManager","ACCESS_MASK_TM"] = 1+offsetof( struct NtOpenTransactionManager_AS_TYPES,ACCESS_MASK_TM );
 offsets["NtOpenTransactionManager","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtOpenTransactionManager_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtOpenTransactionManager","UNICODE_STRING"] = 1+offsetof( struct NtOpenTransactionManager_AS_TYPES,UNICODE_STRING );
 offsets["NtOpenTransactionManager","GUID"] = 1+offsetof( struct NtOpenTransactionManager_AS_TYPES,GUID );
 offsets["NtOpenTransactionManager","ULONG"] = 1+offsetof( struct NtOpenTransactionManager_AS_TYPES,ULONG );
 offsets["NtOpenTransactionManager","NTSTATUS"] = 1+offsetof( struct NtOpenTransactionManager_AS_TYPES,NTSTATUS );
 offsets["NtPlugPlayControl",""] = offsetof( union all , NtPlugPlayControl );
 offsets["NtPlugPlayControl","PLUGPLAY_CONTROL_CLASS"] = 1+offsetof( struct NtPlugPlayControl_AS_TYPES,PLUGPLAY_CONTROL_CLASS );
 offsets["NtPlugPlayControl","PVOID"] = 1+offsetof( struct NtPlugPlayControl_AS_TYPES,PVOID );
 offsets["NtPlugPlayControl","ULONG"] = 1+offsetof( struct NtPlugPlayControl_AS_TYPES,ULONG );
 offsets["NtPlugPlayControl","NTSTATUS"] = 1+offsetof( struct NtPlugPlayControl_AS_TYPES,NTSTATUS );
 offsets["NtPowerInformation",""] = offsetof( union all , NtPowerInformation );
 offsets["NtPowerInformation","POWER_INFORMATION_LEVEL"] = 1+offsetof( struct NtPowerInformation_AS_TYPES,POWER_INFORMATION_LEVEL );
 offsets["NtPowerInformation","PVOID"] = 1+offsetof( struct NtPowerInformation_AS_TYPES,PVOID );
 offsets["NtPowerInformation","ULONG"] = 1+offsetof( struct NtPowerInformation_AS_TYPES,ULONG );
 offsets["NtPowerInformation","PVOID"] = 1+offsetof( struct NtPowerInformation_AS_TYPES,PVOID1);
 offsets["NtPowerInformation","ULONG"] = 1+offsetof( struct NtPowerInformation_AS_TYPES,ULONG1);
 offsets["NtPowerInformation","NTSTATUS"] = 1+offsetof( struct NtPowerInformation_AS_TYPES,NTSTATUS );
 offsets["NtPrePrepareComplete",""] = offsetof( union all , NtPrePrepareComplete );
 offsets["NtPrePrepareComplete","HANDLE"] = 1+offsetof( struct NtPrePrepareComplete_AS_TYPES,HANDLE );
 offsets["NtPrePrepareComplete","LARGE_INTEGER"] = 1+offsetof( struct NtPrePrepareComplete_AS_TYPES,LARGE_INTEGER );
 offsets["NtPrePrepareComplete","NTSTATUS"] = 1+offsetof( struct NtPrePrepareComplete_AS_TYPES,NTSTATUS );
 offsets["NtPrePrepareEnlistment",""] = offsetof( union all , NtPrePrepareEnlistment );
 offsets["NtPrePrepareEnlistment","HANDLE"] = 1+offsetof( struct NtPrePrepareEnlistment_AS_TYPES,HANDLE );
 offsets["NtPrePrepareEnlistment","LARGE_INTEGER"] = 1+offsetof( struct NtPrePrepareEnlistment_AS_TYPES,LARGE_INTEGER );
 offsets["NtPrePrepareEnlistment","NTSTATUS"] = 1+offsetof( struct NtPrePrepareEnlistment_AS_TYPES,NTSTATUS );
 offsets["NtPrepareComplete",""] = offsetof( union all , NtPrepareComplete );
 offsets["NtPrepareComplete","HANDLE"] = 1+offsetof( struct NtPrepareComplete_AS_TYPES,HANDLE );
 offsets["NtPrepareComplete","LARGE_INTEGER"] = 1+offsetof( struct NtPrepareComplete_AS_TYPES,LARGE_INTEGER );
 offsets["NtPrepareComplete","NTSTATUS"] = 1+offsetof( struct NtPrepareComplete_AS_TYPES,NTSTATUS );
 offsets["NtPrepareEnlistment",""] = offsetof( union all , NtPrepareEnlistment );
 offsets["NtPrepareEnlistment","HANDLE"] = 1+offsetof( struct NtPrepareEnlistment_AS_TYPES,HANDLE );
 offsets["NtPrepareEnlistment","LARGE_INTEGER"] = 1+offsetof( struct NtPrepareEnlistment_AS_TYPES,LARGE_INTEGER );
 offsets["NtPrepareEnlistment","NTSTATUS"] = 1+offsetof( struct NtPrepareEnlistment_AS_TYPES,NTSTATUS );
 offsets["NtPrivilegeCheck",""] = offsetof( union all , NtPrivilegeCheck );
 offsets["NtPrivilegeCheck","HANDLE"] = 1+offsetof( struct NtPrivilegeCheck_AS_TYPES,HANDLE );
 offsets["NtPrivilegeCheck","PRIVILEGE_SET"] = 1+offsetof( struct NtPrivilegeCheck_AS_TYPES,PRIVILEGE_SET );
 offsets["NtPrivilegeCheck","BOOLEAN"] = 1+offsetof( struct NtPrivilegeCheck_AS_TYPES,BOOLEAN );
 offsets["NtPrivilegeCheck","NTSTATUS"] = 1+offsetof( struct NtPrivilegeCheck_AS_TYPES,NTSTATUS );
 offsets["NtPropagationComplete",""] = offsetof( union all , NtPropagationComplete );
 offsets["NtPropagationComplete","HANDLE"] = 1+offsetof( struct NtPropagationComplete_AS_TYPES,HANDLE );
 offsets["NtPropagationComplete","ULONG"] = 1+offsetof( struct NtPropagationComplete_AS_TYPES,ULONG );
 offsets["NtPropagationComplete","ULONG"] = 1+offsetof( struct NtPropagationComplete_AS_TYPES,ULONG1);
 offsets["NtPropagationComplete","PVOID"] = 1+offsetof( struct NtPropagationComplete_AS_TYPES,PVOID );
 offsets["NtPropagationComplete","NTSTATUS"] = 1+offsetof( struct NtPropagationComplete_AS_TYPES,NTSTATUS );
 offsets["NtPropagationFailed",""] = offsetof( union all , NtPropagationFailed );
 offsets["NtPropagationFailed","HANDLE"] = 1+offsetof( struct NtPropagationFailed_AS_TYPES,HANDLE );
 offsets["NtPropagationFailed","ULONG"] = 1+offsetof( struct NtPropagationFailed_AS_TYPES,ULONG );
 offsets["NtPropagationFailed","NTSTATUS"] = 1+offsetof( struct NtPropagationFailed_AS_TYPES,NTSTATUS );
 offsets["NtPropagationFailed","NTSTATUS"] = 1+offsetof( struct NtPropagationFailed_AS_TYPES,NTSTATUS1);
 offsets["NtProtectVirtualMemory",""] = offsetof( union all , NtProtectVirtualMemory );
 offsets["NtProtectVirtualMemory","HANDLE"] = 1+offsetof( struct NtProtectVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtProtectVirtualMemory","PVOID"] = 1+offsetof( struct NtProtectVirtualMemory_AS_TYPES,PVOID );
 offsets["NtProtectVirtualMemory","SIZE_T"] = 1+offsetof( struct NtProtectVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtProtectVirtualMemory","ULONG"] = 1+offsetof( struct NtProtectVirtualMemory_AS_TYPES,ULONG );
 offsets["NtProtectVirtualMemory","ULONG"] = 1+offsetof( struct NtProtectVirtualMemory_AS_TYPES,ULONG1);
 offsets["NtProtectVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtProtectVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtPulseEvent",""] = offsetof( union all , NtPulseEvent );
 offsets["NtPulseEvent","HANDLE"] = 1+offsetof( struct NtPulseEvent_AS_TYPES,HANDLE );
 offsets["NtPulseEvent","LONG"] = 1+offsetof( struct NtPulseEvent_AS_TYPES,LONG );
 offsets["NtPulseEvent","NTSTATUS"] = 1+offsetof( struct NtPulseEvent_AS_TYPES,NTSTATUS );
 offsets["NtQueryAttributesFile",""] = offsetof( union all , NtQueryAttributesFile );
 offsets["NtQueryAttributesFile","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtQueryAttributesFile_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtQueryAttributesFile","FILE_BASIC_INFORMATION"] = 1+offsetof( struct NtQueryAttributesFile_AS_TYPES,FILE_BASIC_INFORMATION );
 offsets["NtQueryAttributesFile","NTSTATUS"] = 1+offsetof( struct NtQueryAttributesFile_AS_TYPES,NTSTATUS );
 offsets["NtQueryBootEntryOrder",""] = offsetof( union all , NtQueryBootEntryOrder );
 offsets["NtQueryBootEntryOrder","ULONG"] = 1+offsetof( struct NtQueryBootEntryOrder_AS_TYPES,ULONG );
 offsets["NtQueryBootEntryOrder","ULONG"] = 1+offsetof( struct NtQueryBootEntryOrder_AS_TYPES,ULONG1);
 offsets["NtQueryBootEntryOrder","NTSTATUS"] = 1+offsetof( struct NtQueryBootEntryOrder_AS_TYPES,NTSTATUS );
 offsets["NtQueryBootOptions",""] = offsetof( union all , NtQueryBootOptions );
 offsets["NtQueryBootOptions","BOOT_OPTIONS"] = 1+offsetof( struct NtQueryBootOptions_AS_TYPES,BOOT_OPTIONS );
 offsets["NtQueryBootOptions","ULONG"] = 1+offsetof( struct NtQueryBootOptions_AS_TYPES,ULONG );
 offsets["NtQueryBootOptions","NTSTATUS"] = 1+offsetof( struct NtQueryBootOptions_AS_TYPES,NTSTATUS );
 offsets["NtQueryDebugFilterState",""] = offsetof( union all , NtQueryDebugFilterState );
 offsets["NtQueryDebugFilterState","ULONG"] = 1+offsetof( struct NtQueryDebugFilterState_AS_TYPES,ULONG );
 offsets["NtQueryDebugFilterState","ULONG"] = 1+offsetof( struct NtQueryDebugFilterState_AS_TYPES,ULONG1);
 offsets["NtQueryDebugFilterState","NTSTATUS"] = 1+offsetof( struct NtQueryDebugFilterState_AS_TYPES,NTSTATUS );
 offsets["NtQueryDefaultLocale",""] = offsetof( union all , NtQueryDefaultLocale );
 offsets["NtQueryDefaultLocale","BOOLEAN"] = 1+offsetof( struct NtQueryDefaultLocale_AS_TYPES,BOOLEAN );
 offsets["NtQueryDefaultLocale","LCID"] = 1+offsetof( struct NtQueryDefaultLocale_AS_TYPES,LCID );
 offsets["NtQueryDefaultLocale","NTSTATUS"] = 1+offsetof( struct NtQueryDefaultLocale_AS_TYPES,NTSTATUS );
 offsets["NtQueryDefaultUILanguage",""] = offsetof( union all , NtQueryDefaultUILanguage );
 offsets["NtQueryDefaultUILanguage","LANGID"] = 1+offsetof( struct NtQueryDefaultUILanguage_AS_TYPES,LANGID );
 offsets["NtQueryDefaultUILanguage","NTSTATUS"] = 1+offsetof( struct NtQueryDefaultUILanguage_AS_TYPES,NTSTATUS );
 offsets["NtQueryDirectoryFile",""] = offsetof( union all , NtQueryDirectoryFile );
 offsets["NtQueryDirectoryFile","HANDLE"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,HANDLE );
 offsets["NtQueryDirectoryFile","HANDLE"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,HANDLE1);
 offsets["NtQueryDirectoryFile","PIO_APC_ROUTINE"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtQueryDirectoryFile","PVOID"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,PVOID );
 offsets["NtQueryDirectoryFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtQueryDirectoryFile","PVOID"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,PVOID1);
 offsets["NtQueryDirectoryFile","ULONG"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,ULONG );
 offsets["NtQueryDirectoryFile","FILE_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,FILE_INFORMATION_CLASS );
 offsets["NtQueryDirectoryFile","BOOLEAN"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,BOOLEAN );
 offsets["NtQueryDirectoryFile","UNICODE_STRING"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,UNICODE_STRING );
 offsets["NtQueryDirectoryFile","BOOLEAN"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,BOOLEAN1);
 offsets["NtQueryDirectoryFile","NTSTATUS"] = 1+offsetof( struct NtQueryDirectoryFile_AS_TYPES,NTSTATUS );
 offsets["NtQueryDirectoryFileEx",""] = offsetof( union all , NtQueryDirectoryFileEx );
 offsets["NtQueryDirectoryFileEx","HANDLE"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,HANDLE );
 offsets["NtQueryDirectoryFileEx","HANDLE"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,HANDLE1);
 offsets["NtQueryDirectoryFileEx","PIO_APC_ROUTINE"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtQueryDirectoryFileEx","PVOID"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,PVOID );
 offsets["NtQueryDirectoryFileEx","IO_STATUS_BLOCK"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtQueryDirectoryFileEx","PVOID"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,PVOID1);
 offsets["NtQueryDirectoryFileEx","ULONG"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,ULONG );
 offsets["NtQueryDirectoryFileEx","FILE_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,FILE_INFORMATION_CLASS );
 offsets["NtQueryDirectoryFileEx","ULONG"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,ULONG1);
 offsets["NtQueryDirectoryFileEx","UNICODE_STRING"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,UNICODE_STRING );
 offsets["NtQueryDirectoryFileEx","NTSTATUS"] = 1+offsetof( struct NtQueryDirectoryFileEx_AS_TYPES,NTSTATUS );
 offsets["NtQueryDirectoryObject",""] = offsetof( union all , NtQueryDirectoryObject );
 offsets["NtQueryDirectoryObject","HANDLE"] = 1+offsetof( struct NtQueryDirectoryObject_AS_TYPES,HANDLE );
 offsets["NtQueryDirectoryObject","PVOID"] = 1+offsetof( struct NtQueryDirectoryObject_AS_TYPES,PVOID );
 offsets["NtQueryDirectoryObject","ULONG"] = 1+offsetof( struct NtQueryDirectoryObject_AS_TYPES,ULONG );
 offsets["NtQueryDirectoryObject","BOOLEAN"] = 1+offsetof( struct NtQueryDirectoryObject_AS_TYPES,BOOLEAN );
 offsets["NtQueryDirectoryObject","BOOLEAN"] = 1+offsetof( struct NtQueryDirectoryObject_AS_TYPES,BOOLEAN1);
 offsets["NtQueryDirectoryObject","ULONG"] = 1+offsetof( struct NtQueryDirectoryObject_AS_TYPES,ULONG1);
 offsets["NtQueryDirectoryObject","ULONG"] = 1+offsetof( struct NtQueryDirectoryObject_AS_TYPES,ULONG2);
 offsets["NtQueryDirectoryObject","NTSTATUS"] = 1+offsetof( struct NtQueryDirectoryObject_AS_TYPES,NTSTATUS );
 offsets["NtQueryDriverEntryOrder",""] = offsetof( union all , NtQueryDriverEntryOrder );
 offsets["NtQueryDriverEntryOrder","ULONG"] = 1+offsetof( struct NtQueryDriverEntryOrder_AS_TYPES,ULONG );
 offsets["NtQueryDriverEntryOrder","ULONG"] = 1+offsetof( struct NtQueryDriverEntryOrder_AS_TYPES,ULONG1);
 offsets["NtQueryDriverEntryOrder","NTSTATUS"] = 1+offsetof( struct NtQueryDriverEntryOrder_AS_TYPES,NTSTATUS );
 offsets["NtQueryEaFile",""] = offsetof( union all , NtQueryEaFile );
 offsets["NtQueryEaFile","HANDLE"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,HANDLE );
 offsets["NtQueryEaFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtQueryEaFile","PVOID"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,PVOID );
 offsets["NtQueryEaFile","ULONG"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,ULONG );
 offsets["NtQueryEaFile","BOOLEAN"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,BOOLEAN );
 offsets["NtQueryEaFile","PVOID"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,PVOID1);
 offsets["NtQueryEaFile","ULONG"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,ULONG1);
 offsets["NtQueryEaFile","ULONG"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,ULONG2);
 offsets["NtQueryEaFile","BOOLEAN"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,BOOLEAN1);
 offsets["NtQueryEaFile","NTSTATUS"] = 1+offsetof( struct NtQueryEaFile_AS_TYPES,NTSTATUS );
 offsets["NtQueryEvent",""] = offsetof( union all , NtQueryEvent );
 offsets["NtQueryEvent","HANDLE"] = 1+offsetof( struct NtQueryEvent_AS_TYPES,HANDLE );
 offsets["NtQueryEvent","EVENT_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryEvent_AS_TYPES,EVENT_INFORMATION_CLASS );
 offsets["NtQueryEvent","PVOID"] = 1+offsetof( struct NtQueryEvent_AS_TYPES,PVOID );
 offsets["NtQueryEvent","ULONG"] = 1+offsetof( struct NtQueryEvent_AS_TYPES,ULONG );
 offsets["NtQueryEvent","ULONG"] = 1+offsetof( struct NtQueryEvent_AS_TYPES,ULONG1);
 offsets["NtQueryEvent","NTSTATUS"] = 1+offsetof( struct NtQueryEvent_AS_TYPES,NTSTATUS );
 offsets["NtQueryFullAttributesFile",""] = offsetof( union all , NtQueryFullAttributesFile );
 offsets["NtQueryFullAttributesFile","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtQueryFullAttributesFile_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtQueryFullAttributesFile","FILE_NETWORK_OPEN_INFORMATION"] = 1+offsetof( struct NtQueryFullAttributesFile_AS_TYPES,FILE_NETWORK_OPEN_INFORMATION );
 offsets["NtQueryFullAttributesFile","NTSTATUS"] = 1+offsetof( struct NtQueryFullAttributesFile_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationAtom",""] = offsetof( union all , NtQueryInformationAtom );
 offsets["NtQueryInformationAtom","RTL_ATOM"] = 1+offsetof( struct NtQueryInformationAtom_AS_TYPES,RTL_ATOM );
 offsets["NtQueryInformationAtom","ATOM_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationAtom_AS_TYPES,ATOM_INFORMATION_CLASS );
 offsets["NtQueryInformationAtom","PVOID"] = 1+offsetof( struct NtQueryInformationAtom_AS_TYPES,PVOID );
 offsets["NtQueryInformationAtom","ULONG"] = 1+offsetof( struct NtQueryInformationAtom_AS_TYPES,ULONG );
 offsets["NtQueryInformationAtom","ULONG"] = 1+offsetof( struct NtQueryInformationAtom_AS_TYPES,ULONG1);
 offsets["NtQueryInformationAtom","NTSTATUS"] = 1+offsetof( struct NtQueryInformationAtom_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationByName",""] = offsetof( union all , NtQueryInformationByName );
 offsets["NtQueryInformationByName","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtQueryInformationByName_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtQueryInformationByName","IO_STATUS_BLOCK"] = 1+offsetof( struct NtQueryInformationByName_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtQueryInformationByName","PVOID"] = 1+offsetof( struct NtQueryInformationByName_AS_TYPES,PVOID );
 offsets["NtQueryInformationByName","ULONG"] = 1+offsetof( struct NtQueryInformationByName_AS_TYPES,ULONG );
 offsets["NtQueryInformationByName","FILE_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationByName_AS_TYPES,FILE_INFORMATION_CLASS );
 offsets["NtQueryInformationByName","NTSTATUS"] = 1+offsetof( struct NtQueryInformationByName_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationEnlistment",""] = offsetof( union all , NtQueryInformationEnlistment );
 offsets["NtQueryInformationEnlistment","HANDLE"] = 1+offsetof( struct NtQueryInformationEnlistment_AS_TYPES,HANDLE );
 offsets["NtQueryInformationEnlistment","ENLISTMENT_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationEnlistment_AS_TYPES,ENLISTMENT_INFORMATION_CLASS );
 offsets["NtQueryInformationEnlistment","PVOID"] = 1+offsetof( struct NtQueryInformationEnlistment_AS_TYPES,PVOID );
 offsets["NtQueryInformationEnlistment","ULONG"] = 1+offsetof( struct NtQueryInformationEnlistment_AS_TYPES,ULONG );
 offsets["NtQueryInformationEnlistment","ULONG"] = 1+offsetof( struct NtQueryInformationEnlistment_AS_TYPES,ULONG1);
 offsets["NtQueryInformationEnlistment","NTSTATUS"] = 1+offsetof( struct NtQueryInformationEnlistment_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationFile",""] = offsetof( union all , NtQueryInformationFile );
 offsets["NtQueryInformationFile","HANDLE"] = 1+offsetof( struct NtQueryInformationFile_AS_TYPES,HANDLE );
 offsets["NtQueryInformationFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtQueryInformationFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtQueryInformationFile","PVOID"] = 1+offsetof( struct NtQueryInformationFile_AS_TYPES,PVOID );
 offsets["NtQueryInformationFile","ULONG"] = 1+offsetof( struct NtQueryInformationFile_AS_TYPES,ULONG );
 offsets["NtQueryInformationFile","FILE_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationFile_AS_TYPES,FILE_INFORMATION_CLASS );
 offsets["NtQueryInformationFile","NTSTATUS"] = 1+offsetof( struct NtQueryInformationFile_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationJobObject",""] = offsetof( union all , NtQueryInformationJobObject );
 offsets["NtQueryInformationJobObject","HANDLE"] = 1+offsetof( struct NtQueryInformationJobObject_AS_TYPES,HANDLE );
 offsets["NtQueryInformationJobObject","JOBOBJECTINFOCLASS"] = 1+offsetof( struct NtQueryInformationJobObject_AS_TYPES,JOBOBJECTINFOCLASS );
 offsets["NtQueryInformationJobObject","PVOID"] = 1+offsetof( struct NtQueryInformationJobObject_AS_TYPES,PVOID );
 offsets["NtQueryInformationJobObject","ULONG"] = 1+offsetof( struct NtQueryInformationJobObject_AS_TYPES,ULONG );
 offsets["NtQueryInformationJobObject","ULONG"] = 1+offsetof( struct NtQueryInformationJobObject_AS_TYPES,ULONG1);
 offsets["NtQueryInformationJobObject","NTSTATUS"] = 1+offsetof( struct NtQueryInformationJobObject_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationPort",""] = offsetof( union all , NtQueryInformationPort );
 offsets["NtQueryInformationPort","HANDLE"] = 1+offsetof( struct NtQueryInformationPort_AS_TYPES,HANDLE );
 offsets["NtQueryInformationPort","PORT_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationPort_AS_TYPES,PORT_INFORMATION_CLASS );
 offsets["NtQueryInformationPort","PVOID"] = 1+offsetof( struct NtQueryInformationPort_AS_TYPES,PVOID );
 offsets["NtQueryInformationPort","ULONG"] = 1+offsetof( struct NtQueryInformationPort_AS_TYPES,ULONG );
 offsets["NtQueryInformationPort","ULONG"] = 1+offsetof( struct NtQueryInformationPort_AS_TYPES,ULONG1);
 offsets["NtQueryInformationPort","NTSTATUS"] = 1+offsetof( struct NtQueryInformationPort_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationProcess",""] = offsetof( union all , NtQueryInformationProcess );
 offsets["NtQueryInformationProcess","HANDLE"] = 1+offsetof( struct NtQueryInformationProcess_AS_TYPES,HANDLE );
 offsets["NtQueryInformationProcess","PROCESSINFOCLASS"] = 1+offsetof( struct NtQueryInformationProcess_AS_TYPES,PROCESSINFOCLASS );
 offsets["NtQueryInformationProcess","PVOID"] = 1+offsetof( struct NtQueryInformationProcess_AS_TYPES,PVOID );
 offsets["NtQueryInformationProcess","ULONG"] = 1+offsetof( struct NtQueryInformationProcess_AS_TYPES,ULONG );
 offsets["NtQueryInformationProcess","ULONG"] = 1+offsetof( struct NtQueryInformationProcess_AS_TYPES,ULONG1);
 offsets["NtQueryInformationProcess","NTSTATUS"] = 1+offsetof( struct NtQueryInformationProcess_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationResourceManager",""] = offsetof( union all , NtQueryInformationResourceManager );
 offsets["NtQueryInformationResourceManager","HANDLE"] = 1+offsetof( struct NtQueryInformationResourceManager_AS_TYPES,HANDLE );
 offsets["NtQueryInformationResourceManager","RESOURCEMANAGER_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationResourceManager_AS_TYPES,RESOURCEMANAGER_INFORMATION_CLASS );
 offsets["NtQueryInformationResourceManager","PVOID"] = 1+offsetof( struct NtQueryInformationResourceManager_AS_TYPES,PVOID );
 offsets["NtQueryInformationResourceManager","ULONG"] = 1+offsetof( struct NtQueryInformationResourceManager_AS_TYPES,ULONG );
 offsets["NtQueryInformationResourceManager","ULONG"] = 1+offsetof( struct NtQueryInformationResourceManager_AS_TYPES,ULONG1);
 offsets["NtQueryInformationResourceManager","NTSTATUS"] = 1+offsetof( struct NtQueryInformationResourceManager_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationThread",""] = offsetof( union all , NtQueryInformationThread );
 offsets["NtQueryInformationThread","HANDLE"] = 1+offsetof( struct NtQueryInformationThread_AS_TYPES,HANDLE );
 offsets["NtQueryInformationThread","THREADINFOCLASS"] = 1+offsetof( struct NtQueryInformationThread_AS_TYPES,THREADINFOCLASS );
 offsets["NtQueryInformationThread","PVOID"] = 1+offsetof( struct NtQueryInformationThread_AS_TYPES,PVOID );
 offsets["NtQueryInformationThread","ULONG"] = 1+offsetof( struct NtQueryInformationThread_AS_TYPES,ULONG );
 offsets["NtQueryInformationThread","ULONG"] = 1+offsetof( struct NtQueryInformationThread_AS_TYPES,ULONG1);
 offsets["NtQueryInformationThread","NTSTATUS"] = 1+offsetof( struct NtQueryInformationThread_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationToken",""] = offsetof( union all , NtQueryInformationToken );
 offsets["NtQueryInformationToken","HANDLE"] = 1+offsetof( struct NtQueryInformationToken_AS_TYPES,HANDLE );
 offsets["NtQueryInformationToken","TOKEN_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationToken_AS_TYPES,TOKEN_INFORMATION_CLASS );
 offsets["NtQueryInformationToken","PVOID"] = 1+offsetof( struct NtQueryInformationToken_AS_TYPES,PVOID );
 offsets["NtQueryInformationToken","ULONG"] = 1+offsetof( struct NtQueryInformationToken_AS_TYPES,ULONG );
 offsets["NtQueryInformationToken","ULONG"] = 1+offsetof( struct NtQueryInformationToken_AS_TYPES,ULONG1);
 offsets["NtQueryInformationToken","NTSTATUS"] = 1+offsetof( struct NtQueryInformationToken_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationTransaction",""] = offsetof( union all , NtQueryInformationTransaction );
 offsets["NtQueryInformationTransaction","HANDLE"] = 1+offsetof( struct NtQueryInformationTransaction_AS_TYPES,HANDLE );
 offsets["NtQueryInformationTransaction","TRANSACTION_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationTransaction_AS_TYPES,TRANSACTION_INFORMATION_CLASS );
 offsets["NtQueryInformationTransaction","PVOID"] = 1+offsetof( struct NtQueryInformationTransaction_AS_TYPES,PVOID );
 offsets["NtQueryInformationTransaction","ULONG"] = 1+offsetof( struct NtQueryInformationTransaction_AS_TYPES,ULONG );
 offsets["NtQueryInformationTransaction","ULONG"] = 1+offsetof( struct NtQueryInformationTransaction_AS_TYPES,ULONG1);
 offsets["NtQueryInformationTransaction","NTSTATUS"] = 1+offsetof( struct NtQueryInformationTransaction_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationTransactionManager",""] = offsetof( union all , NtQueryInformationTransactionManager );
 offsets["NtQueryInformationTransactionManager","HANDLE"] = 1+offsetof( struct NtQueryInformationTransactionManager_AS_TYPES,HANDLE );
 offsets["NtQueryInformationTransactionManager","TRANSACTIONMANAGER_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryInformationTransactionManager_AS_TYPES,TRANSACTIONMANAGER_INFORMATION_CLASS );
 offsets["NtQueryInformationTransactionManager","PVOID"] = 1+offsetof( struct NtQueryInformationTransactionManager_AS_TYPES,PVOID );
 offsets["NtQueryInformationTransactionManager","ULONG"] = 1+offsetof( struct NtQueryInformationTransactionManager_AS_TYPES,ULONG );
 offsets["NtQueryInformationTransactionManager","ULONG"] = 1+offsetof( struct NtQueryInformationTransactionManager_AS_TYPES,ULONG1);
 offsets["NtQueryInformationTransactionManager","NTSTATUS"] = 1+offsetof( struct NtQueryInformationTransactionManager_AS_TYPES,NTSTATUS );
 offsets["NtQueryInformationWorkerFactory",""] = offsetof( union all , NtQueryInformationWorkerFactory );
 offsets["NtQueryInformationWorkerFactory","HANDLE"] = 1+offsetof( struct NtQueryInformationWorkerFactory_AS_TYPES,HANDLE );
 offsets["NtQueryInformationWorkerFactory","WORKERFACTORYINFOCLASS"] = 1+offsetof( struct NtQueryInformationWorkerFactory_AS_TYPES,WORKERFACTORYINFOCLASS );
 offsets["NtQueryInformationWorkerFactory","PVOID"] = 1+offsetof( struct NtQueryInformationWorkerFactory_AS_TYPES,PVOID );
 offsets["NtQueryInformationWorkerFactory","ULONG"] = 1+offsetof( struct NtQueryInformationWorkerFactory_AS_TYPES,ULONG );
 offsets["NtQueryInformationWorkerFactory","ULONG"] = 1+offsetof( struct NtQueryInformationWorkerFactory_AS_TYPES,ULONG1);
 offsets["NtQueryInformationWorkerFactory","NTSTATUS"] = 1+offsetof( struct NtQueryInformationWorkerFactory_AS_TYPES,NTSTATUS );
 offsets["NtQueryInstallUILanguage",""] = offsetof( union all , NtQueryInstallUILanguage );
 offsets["NtQueryInstallUILanguage","LANGID"] = 1+offsetof( struct NtQueryInstallUILanguage_AS_TYPES,LANGID );
 offsets["NtQueryInstallUILanguage","NTSTATUS"] = 1+offsetof( struct NtQueryInstallUILanguage_AS_TYPES,NTSTATUS );
 offsets["NtQueryIntervalProfile",""] = offsetof( union all , NtQueryIntervalProfile );
 offsets["NtQueryIntervalProfile","KPROFILE_SOURCE"] = 1+offsetof( struct NtQueryIntervalProfile_AS_TYPES,KPROFILE_SOURCE );
 offsets["NtQueryIntervalProfile","ULONG"] = 1+offsetof( struct NtQueryIntervalProfile_AS_TYPES,ULONG );
 offsets["NtQueryIntervalProfile","NTSTATUS"] = 1+offsetof( struct NtQueryIntervalProfile_AS_TYPES,NTSTATUS );
 offsets["NtQueryIoCompletion",""] = offsetof( union all , NtQueryIoCompletion );
 offsets["NtQueryIoCompletion","HANDLE"] = 1+offsetof( struct NtQueryIoCompletion_AS_TYPES,HANDLE );
 offsets["NtQueryIoCompletion","IO_COMPLETION_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryIoCompletion_AS_TYPES,IO_COMPLETION_INFORMATION_CLASS );
 offsets["NtQueryIoCompletion","PVOID"] = 1+offsetof( struct NtQueryIoCompletion_AS_TYPES,PVOID );
 offsets["NtQueryIoCompletion","ULONG"] = 1+offsetof( struct NtQueryIoCompletion_AS_TYPES,ULONG );
 offsets["NtQueryIoCompletion","NTSTATUS"] = 1+offsetof( struct NtQueryIoCompletion_AS_TYPES,NTSTATUS );
 offsets["NtQueryKey",""] = offsetof( union all , NtQueryKey );
 offsets["NtQueryKey","HANDLE"] = 1+offsetof( struct NtQueryKey_AS_TYPES,HANDLE );
 offsets["NtQueryKey","KEY_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryKey_AS_TYPES,KEY_INFORMATION_CLASS );
 offsets["NtQueryKey","PVOID"] = 1+offsetof( struct NtQueryKey_AS_TYPES,PVOID );
 offsets["NtQueryKey","ULONG"] = 1+offsetof( struct NtQueryKey_AS_TYPES,ULONG );
 offsets["NtQueryKey","ULONG"] = 1+offsetof( struct NtQueryKey_AS_TYPES,ULONG1);
 offsets["NtQueryKey","NTSTATUS"] = 1+offsetof( struct NtQueryKey_AS_TYPES,NTSTATUS );
 offsets["NtQueryLicenseValue",""] = offsetof( union all , NtQueryLicenseValue );
 offsets["NtQueryLicenseValue","UNICODE_STRING"] = 1+offsetof( struct NtQueryLicenseValue_AS_TYPES,UNICODE_STRING );
 offsets["NtQueryLicenseValue","ULONG"] = 1+offsetof( struct NtQueryLicenseValue_AS_TYPES,ULONG );
 offsets["NtQueryLicenseValue","PVOID"] = 1+offsetof( struct NtQueryLicenseValue_AS_TYPES,PVOID );
 offsets["NtQueryLicenseValue","ULONG"] = 1+offsetof( struct NtQueryLicenseValue_AS_TYPES,ULONG1);
 offsets["NtQueryLicenseValue","ULONG"] = 1+offsetof( struct NtQueryLicenseValue_AS_TYPES,ULONG2);
 offsets["NtQueryLicenseValue","NTSTATUS"] = 1+offsetof( struct NtQueryLicenseValue_AS_TYPES,NTSTATUS );
 offsets["NtQueryMultipleValueKey",""] = offsetof( union all , NtQueryMultipleValueKey );
 offsets["NtQueryMultipleValueKey","HANDLE"] = 1+offsetof( struct NtQueryMultipleValueKey_AS_TYPES,HANDLE );
 offsets["NtQueryMultipleValueKey","KEY_VALUE_ENTRY"] = 1+offsetof( struct NtQueryMultipleValueKey_AS_TYPES,KEY_VALUE_ENTRY );
 offsets["NtQueryMultipleValueKey","ULONG"] = 1+offsetof( struct NtQueryMultipleValueKey_AS_TYPES,ULONG );
 offsets["NtQueryMultipleValueKey","PVOID"] = 1+offsetof( struct NtQueryMultipleValueKey_AS_TYPES,PVOID );
 offsets["NtQueryMultipleValueKey","ULONG"] = 1+offsetof( struct NtQueryMultipleValueKey_AS_TYPES,ULONG1);
 offsets["NtQueryMultipleValueKey","ULONG"] = 1+offsetof( struct NtQueryMultipleValueKey_AS_TYPES,ULONG2);
 offsets["NtQueryMultipleValueKey","NTSTATUS"] = 1+offsetof( struct NtQueryMultipleValueKey_AS_TYPES,NTSTATUS );
 offsets["NtQueryMutant",""] = offsetof( union all , NtQueryMutant );
 offsets["NtQueryMutant","HANDLE"] = 1+offsetof( struct NtQueryMutant_AS_TYPES,HANDLE );
 offsets["NtQueryMutant","MUTANT_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryMutant_AS_TYPES,MUTANT_INFORMATION_CLASS );
 offsets["NtQueryMutant","PVOID"] = 1+offsetof( struct NtQueryMutant_AS_TYPES,PVOID );
 offsets["NtQueryMutant","ULONG"] = 1+offsetof( struct NtQueryMutant_AS_TYPES,ULONG );
 offsets["NtQueryMutant","ULONG"] = 1+offsetof( struct NtQueryMutant_AS_TYPES,ULONG1);
 offsets["NtQueryMutant","NTSTATUS"] = 1+offsetof( struct NtQueryMutant_AS_TYPES,NTSTATUS );
 offsets["NtQueryObject",""] = offsetof( union all , NtQueryObject );
 offsets["NtQueryObject","HANDLE"] = 1+offsetof( struct NtQueryObject_AS_TYPES,HANDLE );
 offsets["NtQueryObject","OBJECT_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryObject_AS_TYPES,OBJECT_INFORMATION_CLASS );
 offsets["NtQueryObject","PVOID"] = 1+offsetof( struct NtQueryObject_AS_TYPES,PVOID );
 offsets["NtQueryObject","ULONG"] = 1+offsetof( struct NtQueryObject_AS_TYPES,ULONG );
 offsets["NtQueryObject","ULONG"] = 1+offsetof( struct NtQueryObject_AS_TYPES,ULONG1);
 offsets["NtQueryObject","NTSTATUS"] = 1+offsetof( struct NtQueryObject_AS_TYPES,NTSTATUS );
 offsets["NtQueryOpenSubKeys",""] = offsetof( union all , NtQueryOpenSubKeys );
 offsets["NtQueryOpenSubKeys","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtQueryOpenSubKeys_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtQueryOpenSubKeys","ULONG"] = 1+offsetof( struct NtQueryOpenSubKeys_AS_TYPES,ULONG );
 offsets["NtQueryOpenSubKeys","NTSTATUS"] = 1+offsetof( struct NtQueryOpenSubKeys_AS_TYPES,NTSTATUS );
 offsets["NtQueryOpenSubKeysEx",""] = offsetof( union all , NtQueryOpenSubKeysEx );
 offsets["NtQueryOpenSubKeysEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtQueryOpenSubKeysEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtQueryOpenSubKeysEx","ULONG"] = 1+offsetof( struct NtQueryOpenSubKeysEx_AS_TYPES,ULONG );
 offsets["NtQueryOpenSubKeysEx","PVOID"] = 1+offsetof( struct NtQueryOpenSubKeysEx_AS_TYPES,PVOID );
 offsets["NtQueryOpenSubKeysEx","ULONG"] = 1+offsetof( struct NtQueryOpenSubKeysEx_AS_TYPES,ULONG1);
 offsets["NtQueryOpenSubKeysEx","NTSTATUS"] = 1+offsetof( struct NtQueryOpenSubKeysEx_AS_TYPES,NTSTATUS );
 offsets["NtQueryPerformanceCounter",""] = offsetof( union all , NtQueryPerformanceCounter );
 offsets["NtQueryPerformanceCounter","LARGE_INTEGER"] = 1+offsetof( struct NtQueryPerformanceCounter_AS_TYPES,LARGE_INTEGER );
 offsets["NtQueryPerformanceCounter","LARGE_INTEGER"] = 1+offsetof( struct NtQueryPerformanceCounter_AS_TYPES,LARGE_INTEGER1);
 offsets["NtQueryPerformanceCounter","NTSTATUS"] = 1+offsetof( struct NtQueryPerformanceCounter_AS_TYPES,NTSTATUS );
 offsets["NtQueryPortInformationProcess",""] = offsetof( union all , NtQueryPortInformationProcess );
 offsets["NtQueryPortInformationProcess","NTSTATUS"] = 1+offsetof( struct NtQueryPortInformationProcess_AS_TYPES,NTSTATUS );
 offsets["NtQueryQuotaInformationFile",""] = offsetof( union all , NtQueryQuotaInformationFile );
 offsets["NtQueryQuotaInformationFile","HANDLE"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,HANDLE );
 offsets["NtQueryQuotaInformationFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtQueryQuotaInformationFile","PVOID"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,PVOID );
 offsets["NtQueryQuotaInformationFile","ULONG"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,ULONG );
 offsets["NtQueryQuotaInformationFile","BOOLEAN"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,BOOLEAN );
 offsets["NtQueryQuotaInformationFile","PVOID"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,PVOID1);
 offsets["NtQueryQuotaInformationFile","ULONG"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,ULONG1);
 offsets["NtQueryQuotaInformationFile","SID"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,SID );
 offsets["NtQueryQuotaInformationFile","BOOLEAN"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,BOOLEAN1);
 offsets["NtQueryQuotaInformationFile","NTSTATUS"] = 1+offsetof( struct NtQueryQuotaInformationFile_AS_TYPES,NTSTATUS );
 offsets["NtQuerySection",""] = offsetof( union all , NtQuerySection );
 offsets["NtQuerySection","HANDLE"] = 1+offsetof( struct NtQuerySection_AS_TYPES,HANDLE );
 offsets["NtQuerySection","SECTION_INFORMATION_CLASS"] = 1+offsetof( struct NtQuerySection_AS_TYPES,SECTION_INFORMATION_CLASS );
 offsets["NtQuerySection","PVOID"] = 1+offsetof( struct NtQuerySection_AS_TYPES,PVOID );
 offsets["NtQuerySection","SIZE_T"] = 1+offsetof( struct NtQuerySection_AS_TYPES,SIZE_T );
 offsets["NtQuerySection","SIZE_T"] = 1+offsetof( struct NtQuerySection_AS_TYPES,SIZE_T1);
 offsets["NtQuerySection","NTSTATUS"] = 1+offsetof( struct NtQuerySection_AS_TYPES,NTSTATUS );
 offsets["NtQuerySecurityAttributesToken",""] = offsetof( union all , NtQuerySecurityAttributesToken );
 offsets["NtQuerySecurityAttributesToken","HANDLE"] = 1+offsetof( struct NtQuerySecurityAttributesToken_AS_TYPES,HANDLE );
 offsets["NtQuerySecurityAttributesToken","UNICODE_STRING"] = 1+offsetof( struct NtQuerySecurityAttributesToken_AS_TYPES,UNICODE_STRING );
 offsets["NtQuerySecurityAttributesToken","ULONG"] = 1+offsetof( struct NtQuerySecurityAttributesToken_AS_TYPES,ULONG );
 offsets["NtQuerySecurityAttributesToken","PVOID"] = 1+offsetof( struct NtQuerySecurityAttributesToken_AS_TYPES,PVOID );
 offsets["NtQuerySecurityAttributesToken","ULONG"] = 1+offsetof( struct NtQuerySecurityAttributesToken_AS_TYPES,ULONG1);
 offsets["NtQuerySecurityAttributesToken","ULONG"] = 1+offsetof( struct NtQuerySecurityAttributesToken_AS_TYPES,ULONG2);
 offsets["NtQuerySecurityAttributesToken","NTSTATUS"] = 1+offsetof( struct NtQuerySecurityAttributesToken_AS_TYPES,NTSTATUS );
 offsets["NtQuerySecurityObject",""] = offsetof( union all , NtQuerySecurityObject );
 offsets["NtQuerySecurityObject","HANDLE"] = 1+offsetof( struct NtQuerySecurityObject_AS_TYPES,HANDLE );
 offsets["NtQuerySecurityObject","SECURITY_INFORMATION"] = 1+offsetof( struct NtQuerySecurityObject_AS_TYPES,SECURITY_INFORMATION );
 offsets["NtQuerySecurityObject","SECURITY_DESCRIPTOR"] = 1+offsetof( struct NtQuerySecurityObject_AS_TYPES,SECURITY_DESCRIPTOR );
 offsets["NtQuerySecurityObject","ULONG"] = 1+offsetof( struct NtQuerySecurityObject_AS_TYPES,ULONG );
 offsets["NtQuerySecurityObject","ULONG"] = 1+offsetof( struct NtQuerySecurityObject_AS_TYPES,ULONG1);
 offsets["NtQuerySecurityObject","NTSTATUS"] = 1+offsetof( struct NtQuerySecurityObject_AS_TYPES,NTSTATUS );
 offsets["NtQuerySecurityPolicy",""] = offsetof( union all , NtQuerySecurityPolicy );
 offsets["NtQuerySecurityPolicy","UNICODE_STRING"] = 1+offsetof( struct NtQuerySecurityPolicy_AS_TYPES,UNICODE_STRING );
 offsets["NtQuerySecurityPolicy","UNICODE_STRING"] = 1+offsetof( struct NtQuerySecurityPolicy_AS_TYPES,UNICODE_STRING1);
 offsets["NtQuerySecurityPolicy","UNICODE_STRING"] = 1+offsetof( struct NtQuerySecurityPolicy_AS_TYPES,UNICODE_STRING2);
 offsets["NtQuerySecurityPolicy","SECURE_SETTING_VALUE_TYPE"] = 1+offsetof( struct NtQuerySecurityPolicy_AS_TYPES,SECURE_SETTING_VALUE_TYPE );
 offsets["NtQuerySecurityPolicy","PVOID"] = 1+offsetof( struct NtQuerySecurityPolicy_AS_TYPES,PVOID );
 offsets["NtQuerySecurityPolicy","ULONG"] = 1+offsetof( struct NtQuerySecurityPolicy_AS_TYPES,ULONG );
 offsets["NtQuerySecurityPolicy","NTSTATUS"] = 1+offsetof( struct NtQuerySecurityPolicy_AS_TYPES,NTSTATUS );
 offsets["NtQuerySemaphore",""] = offsetof( union all , NtQuerySemaphore );
 offsets["NtQuerySemaphore","HANDLE"] = 1+offsetof( struct NtQuerySemaphore_AS_TYPES,HANDLE );
 offsets["NtQuerySemaphore","SEMAPHORE_INFORMATION_CLASS"] = 1+offsetof( struct NtQuerySemaphore_AS_TYPES,SEMAPHORE_INFORMATION_CLASS );
 offsets["NtQuerySemaphore","PVOID"] = 1+offsetof( struct NtQuerySemaphore_AS_TYPES,PVOID );
 offsets["NtQuerySemaphore","ULONG"] = 1+offsetof( struct NtQuerySemaphore_AS_TYPES,ULONG );
 offsets["NtQuerySemaphore","ULONG"] = 1+offsetof( struct NtQuerySemaphore_AS_TYPES,ULONG1);
 offsets["NtQuerySemaphore","NTSTATUS"] = 1+offsetof( struct NtQuerySemaphore_AS_TYPES,NTSTATUS );
 offsets["NtQuerySymbolicLinkObject",""] = offsetof( union all , NtQuerySymbolicLinkObject );
 offsets["NtQuerySymbolicLinkObject","HANDLE"] = 1+offsetof( struct NtQuerySymbolicLinkObject_AS_TYPES,HANDLE );
 offsets["NtQuerySymbolicLinkObject","UNICODE_STRING"] = 1+offsetof( struct NtQuerySymbolicLinkObject_AS_TYPES,UNICODE_STRING );
 offsets["NtQuerySymbolicLinkObject","ULONG"] = 1+offsetof( struct NtQuerySymbolicLinkObject_AS_TYPES,ULONG );
 offsets["NtQuerySymbolicLinkObject","NTSTATUS"] = 1+offsetof( struct NtQuerySymbolicLinkObject_AS_TYPES,NTSTATUS );
 offsets["NtQuerySystemEnvironmentValue",""] = offsetof( union all , NtQuerySystemEnvironmentValue );
 offsets["NtQuerySystemEnvironmentValue","UNICODE_STRING"] = 1+offsetof( struct NtQuerySystemEnvironmentValue_AS_TYPES,UNICODE_STRING );
 offsets["NtQuerySystemEnvironmentValue","WSTR"] = 1+offsetof( struct NtQuerySystemEnvironmentValue_AS_TYPES,WSTR );
 offsets["NtQuerySystemEnvironmentValue","USHORT"] = 1+offsetof( struct NtQuerySystemEnvironmentValue_AS_TYPES,USHORT );
 offsets["NtQuerySystemEnvironmentValue","USHORT"] = 1+offsetof( struct NtQuerySystemEnvironmentValue_AS_TYPES,USHORT1);
 offsets["NtQuerySystemEnvironmentValue","NTSTATUS"] = 1+offsetof( struct NtQuerySystemEnvironmentValue_AS_TYPES,NTSTATUS );
 offsets["NtQuerySystemEnvironmentValueEx",""] = offsetof( union all , NtQuerySystemEnvironmentValueEx );
 offsets["NtQuerySystemEnvironmentValueEx","UNICODE_STRING"] = 1+offsetof( struct NtQuerySystemEnvironmentValueEx_AS_TYPES,UNICODE_STRING );
 offsets["NtQuerySystemEnvironmentValueEx","GUID"] = 1+offsetof( struct NtQuerySystemEnvironmentValueEx_AS_TYPES,GUID );
 offsets["NtQuerySystemEnvironmentValueEx","PVOID"] = 1+offsetof( struct NtQuerySystemEnvironmentValueEx_AS_TYPES,PVOID );
 offsets["NtQuerySystemEnvironmentValueEx","ULONG"] = 1+offsetof( struct NtQuerySystemEnvironmentValueEx_AS_TYPES,ULONG );
 offsets["NtQuerySystemEnvironmentValueEx","ULONG"] = 1+offsetof( struct NtQuerySystemEnvironmentValueEx_AS_TYPES,ULONG1);
 offsets["NtQuerySystemEnvironmentValueEx","NTSTATUS"] = 1+offsetof( struct NtQuerySystemEnvironmentValueEx_AS_TYPES,NTSTATUS );
 offsets["NtQuerySystemInformation",""] = offsetof( union all , NtQuerySystemInformation );
 offsets["NtQuerySystemInformation","SYSTEM_INFORMATION_CLASS"] = 1+offsetof( struct NtQuerySystemInformation_AS_TYPES,SYSTEM_INFORMATION_CLASS );
 offsets["NtQuerySystemInformation","PVOID"] = 1+offsetof( struct NtQuerySystemInformation_AS_TYPES,PVOID );
 offsets["NtQuerySystemInformation","ULONG"] = 1+offsetof( struct NtQuerySystemInformation_AS_TYPES,ULONG );
 offsets["NtQuerySystemInformation","ULONG"] = 1+offsetof( struct NtQuerySystemInformation_AS_TYPES,ULONG1);
 offsets["NtQuerySystemInformation","NTSTATUS"] = 1+offsetof( struct NtQuerySystemInformation_AS_TYPES,NTSTATUS );
 offsets["NtQuerySystemInformationEx",""] = offsetof( union all , NtQuerySystemInformationEx );
 offsets["NtQuerySystemInformationEx","SYSTEM_INFORMATION_CLASS"] = 1+offsetof( struct NtQuerySystemInformationEx_AS_TYPES,SYSTEM_INFORMATION_CLASS );
 offsets["NtQuerySystemInformationEx","PVOID"] = 1+offsetof( struct NtQuerySystemInformationEx_AS_TYPES,PVOID );
 offsets["NtQuerySystemInformationEx","ULONG"] = 1+offsetof( struct NtQuerySystemInformationEx_AS_TYPES,ULONG );
 offsets["NtQuerySystemInformationEx","PVOID"] = 1+offsetof( struct NtQuerySystemInformationEx_AS_TYPES,PVOID1);
 offsets["NtQuerySystemInformationEx","ULONG"] = 1+offsetof( struct NtQuerySystemInformationEx_AS_TYPES,ULONG1);
 offsets["NtQuerySystemInformationEx","ULONG"] = 1+offsetof( struct NtQuerySystemInformationEx_AS_TYPES,ULONG2);
 offsets["NtQuerySystemInformationEx","NTSTATUS"] = 1+offsetof( struct NtQuerySystemInformationEx_AS_TYPES,NTSTATUS );
 offsets["NtQuerySystemTime",""] = offsetof( union all , NtQuerySystemTime );
 offsets["NtQuerySystemTime","LARGE_INTEGER"] = 1+offsetof( struct NtQuerySystemTime_AS_TYPES,LARGE_INTEGER );
 offsets["NtQuerySystemTime","NTSTATUS"] = 1+offsetof( struct NtQuerySystemTime_AS_TYPES,NTSTATUS );
 offsets["NtQueryTimer",""] = offsetof( union all , NtQueryTimer );
 offsets["NtQueryTimer","HANDLE"] = 1+offsetof( struct NtQueryTimer_AS_TYPES,HANDLE );
 offsets["NtQueryTimer","TIMER_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryTimer_AS_TYPES,TIMER_INFORMATION_CLASS );
 offsets["NtQueryTimer","PVOID"] = 1+offsetof( struct NtQueryTimer_AS_TYPES,PVOID );
 offsets["NtQueryTimer","ULONG"] = 1+offsetof( struct NtQueryTimer_AS_TYPES,ULONG );
 offsets["NtQueryTimer","ULONG"] = 1+offsetof( struct NtQueryTimer_AS_TYPES,ULONG1);
 offsets["NtQueryTimer","NTSTATUS"] = 1+offsetof( struct NtQueryTimer_AS_TYPES,NTSTATUS );
 offsets["NtQueryTimerResolution",""] = offsetof( union all , NtQueryTimerResolution );
 offsets["NtQueryTimerResolution","ULONG"] = 1+offsetof( struct NtQueryTimerResolution_AS_TYPES,ULONG );
 offsets["NtQueryTimerResolution","ULONG"] = 1+offsetof( struct NtQueryTimerResolution_AS_TYPES,ULONG1);
 offsets["NtQueryTimerResolution","ULONG"] = 1+offsetof( struct NtQueryTimerResolution_AS_TYPES,ULONG2);
 offsets["NtQueryTimerResolution","NTSTATUS"] = 1+offsetof( struct NtQueryTimerResolution_AS_TYPES,NTSTATUS );
 offsets["NtQueryValueKey",""] = offsetof( union all , NtQueryValueKey );
 offsets["NtQueryValueKey","HANDLE"] = 1+offsetof( struct NtQueryValueKey_AS_TYPES,HANDLE );
 offsets["NtQueryValueKey","UNICODE_STRING"] = 1+offsetof( struct NtQueryValueKey_AS_TYPES,UNICODE_STRING );
 offsets["NtQueryValueKey","KEY_VALUE_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryValueKey_AS_TYPES,KEY_VALUE_INFORMATION_CLASS );
 offsets["NtQueryValueKey","PVOID"] = 1+offsetof( struct NtQueryValueKey_AS_TYPES,PVOID );
 offsets["NtQueryValueKey","ULONG"] = 1+offsetof( struct NtQueryValueKey_AS_TYPES,ULONG );
 offsets["NtQueryValueKey","ULONG"] = 1+offsetof( struct NtQueryValueKey_AS_TYPES,ULONG1);
 offsets["NtQueryValueKey","NTSTATUS"] = 1+offsetof( struct NtQueryValueKey_AS_TYPES,NTSTATUS );
 offsets["NtQueryVirtualMemory",""] = offsetof( union all , NtQueryVirtualMemory );
 offsets["NtQueryVirtualMemory","HANDLE"] = 1+offsetof( struct NtQueryVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtQueryVirtualMemory","PVOID"] = 1+offsetof( struct NtQueryVirtualMemory_AS_TYPES,PVOID );
 offsets["NtQueryVirtualMemory","MEMORY_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryVirtualMemory_AS_TYPES,MEMORY_INFORMATION_CLASS );
 offsets["NtQueryVirtualMemory","PVOID"] = 1+offsetof( struct NtQueryVirtualMemory_AS_TYPES,PVOID1);
 offsets["NtQueryVirtualMemory","SIZE_T"] = 1+offsetof( struct NtQueryVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtQueryVirtualMemory","SIZE_T"] = 1+offsetof( struct NtQueryVirtualMemory_AS_TYPES,SIZE_T1);
 offsets["NtQueryVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtQueryVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtQueryVolumeInformationFile",""] = offsetof( union all , NtQueryVolumeInformationFile );
 offsets["NtQueryVolumeInformationFile","HANDLE"] = 1+offsetof( struct NtQueryVolumeInformationFile_AS_TYPES,HANDLE );
 offsets["NtQueryVolumeInformationFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtQueryVolumeInformationFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtQueryVolumeInformationFile","PVOID"] = 1+offsetof( struct NtQueryVolumeInformationFile_AS_TYPES,PVOID );
 offsets["NtQueryVolumeInformationFile","ULONG"] = 1+offsetof( struct NtQueryVolumeInformationFile_AS_TYPES,ULONG );
 offsets["NtQueryVolumeInformationFile","FS_INFORMATION_CLASS"] = 1+offsetof( struct NtQueryVolumeInformationFile_AS_TYPES,FS_INFORMATION_CLASS );
 offsets["NtQueryVolumeInformationFile","NTSTATUS"] = 1+offsetof( struct NtQueryVolumeInformationFile_AS_TYPES,NTSTATUS );
 offsets["NtQueryWnfStateData",""] = offsetof( union all , NtQueryWnfStateData );
 offsets["NtQueryWnfStateData","WNF_STATE_NAME"] = 1+offsetof( struct NtQueryWnfStateData_AS_TYPES,WNF_STATE_NAME );
 offsets["NtQueryWnfStateData","WNF_TYPE_ID"] = 1+offsetof( struct NtQueryWnfStateData_AS_TYPES,WNF_TYPE_ID );
 offsets["NtQueryWnfStateData","PVOID"] = 1+offsetof( struct NtQueryWnfStateData_AS_TYPES,PVOID );
 offsets["NtQueryWnfStateData","WNF_CHANGE_STAMP"] = 1+offsetof( struct NtQueryWnfStateData_AS_TYPES,WNF_CHANGE_STAMP );
 offsets["NtQueryWnfStateData","PVOID"] = 1+offsetof( struct NtQueryWnfStateData_AS_TYPES,PVOID1);
 offsets["NtQueryWnfStateData","ULONG"] = 1+offsetof( struct NtQueryWnfStateData_AS_TYPES,ULONG );
 offsets["NtQueryWnfStateData","NTSTATUS"] = 1+offsetof( struct NtQueryWnfStateData_AS_TYPES,NTSTATUS );
 offsets["NtQueryWnfStateNameInformation",""] = offsetof( union all , NtQueryWnfStateNameInformation );
 offsets["NtQueryWnfStateNameInformation","WNF_STATE_NAME"] = 1+offsetof( struct NtQueryWnfStateNameInformation_AS_TYPES,WNF_STATE_NAME );
 offsets["NtQueryWnfStateNameInformation","WNF_STATE_NAME_INFORMATION"] = 1+offsetof( struct NtQueryWnfStateNameInformation_AS_TYPES,WNF_STATE_NAME_INFORMATION );
 offsets["NtQueryWnfStateNameInformation","PVOID"] = 1+offsetof( struct NtQueryWnfStateNameInformation_AS_TYPES,PVOID );
 offsets["NtQueryWnfStateNameInformation","PVOID"] = 1+offsetof( struct NtQueryWnfStateNameInformation_AS_TYPES,PVOID1);
 offsets["NtQueryWnfStateNameInformation","ULONG"] = 1+offsetof( struct NtQueryWnfStateNameInformation_AS_TYPES,ULONG );
 offsets["NtQueryWnfStateNameInformation","NTSTATUS"] = 1+offsetof( struct NtQueryWnfStateNameInformation_AS_TYPES,NTSTATUS );
 offsets["NtQueueApcThread",""] = offsetof( union all , NtQueueApcThread );
 offsets["NtQueueApcThread","HANDLE"] = 1+offsetof( struct NtQueueApcThread_AS_TYPES,HANDLE );
 offsets["NtQueueApcThread","PPS_APC_ROUTINE"] = 1+offsetof( struct NtQueueApcThread_AS_TYPES,PPS_APC_ROUTINE );
 offsets["NtQueueApcThread","PVOID"] = 1+offsetof( struct NtQueueApcThread_AS_TYPES,PVOID );
 offsets["NtQueueApcThread","PVOID"] = 1+offsetof( struct NtQueueApcThread_AS_TYPES,PVOID1);
 offsets["NtQueueApcThread","PVOID"] = 1+offsetof( struct NtQueueApcThread_AS_TYPES,PVOID2);
 offsets["NtQueueApcThread","NTSTATUS"] = 1+offsetof( struct NtQueueApcThread_AS_TYPES,NTSTATUS );
 offsets["NtQueueApcThreadEx",""] = offsetof( union all , NtQueueApcThreadEx );
 offsets["NtQueueApcThreadEx","HANDLE"] = 1+offsetof( struct NtQueueApcThreadEx_AS_TYPES,HANDLE );
 offsets["NtQueueApcThreadEx","HANDLE"] = 1+offsetof( struct NtQueueApcThreadEx_AS_TYPES,HANDLE1);
 offsets["NtQueueApcThreadEx","PPS_APC_ROUTINE"] = 1+offsetof( struct NtQueueApcThreadEx_AS_TYPES,PPS_APC_ROUTINE );
 offsets["NtQueueApcThreadEx","PVOID"] = 1+offsetof( struct NtQueueApcThreadEx_AS_TYPES,PVOID );
 offsets["NtQueueApcThreadEx","PVOID"] = 1+offsetof( struct NtQueueApcThreadEx_AS_TYPES,PVOID1);
 offsets["NtQueueApcThreadEx","PVOID"] = 1+offsetof( struct NtQueueApcThreadEx_AS_TYPES,PVOID2);
 offsets["NtQueueApcThreadEx","NTSTATUS"] = 1+offsetof( struct NtQueueApcThreadEx_AS_TYPES,NTSTATUS );
 offsets["NtRaiseException",""] = offsetof( union all , NtRaiseException );
 offsets["NtRaiseException","EXCEPTION_RECORD"] = 1+offsetof( struct NtRaiseException_AS_TYPES,EXCEPTION_RECORD );
 offsets["NtRaiseException","CONTEXT"] = 1+offsetof( struct NtRaiseException_AS_TYPES,CONTEXT );
 offsets["NtRaiseException","BOOLEAN"] = 1+offsetof( struct NtRaiseException_AS_TYPES,BOOLEAN );
 offsets["NtRaiseException","NTSTATUS"] = 1+offsetof( struct NtRaiseException_AS_TYPES,NTSTATUS );
 offsets["NtRaiseHardError",""] = offsetof( union all , NtRaiseHardError );
 offsets["NtRaiseHardError","NTSTATUS"] = 1+offsetof( struct NtRaiseHardError_AS_TYPES,NTSTATUS );
 offsets["NtRaiseHardError","ULONG"] = 1+offsetof( struct NtRaiseHardError_AS_TYPES,ULONG );
 offsets["NtRaiseHardError","ULONG"] = 1+offsetof( struct NtRaiseHardError_AS_TYPES,ULONG1);
 offsets["NtRaiseHardError","ULONG"] = 1+offsetof( struct NtRaiseHardError_AS_TYPES,ULONG2);
 offsets["NtRaiseHardError","ULONG"] = 1+offsetof( struct NtRaiseHardError_AS_TYPES,ULONG3);
 offsets["NtRaiseHardError","ULONG"] = 1+offsetof( struct NtRaiseHardError_AS_TYPES,ULONG4);
 offsets["NtRaiseHardError","NTSTATUS"] = 1+offsetof( struct NtRaiseHardError_AS_TYPES,NTSTATUS1);
 offsets["NtReadFile",""] = offsetof( union all , NtReadFile );
 offsets["NtReadFile","HANDLE"] = 1+offsetof( struct NtReadFile_AS_TYPES,HANDLE );
 offsets["NtReadFile","HANDLE"] = 1+offsetof( struct NtReadFile_AS_TYPES,HANDLE1);
 offsets["NtReadFile","PIO_APC_ROUTINE"] = 1+offsetof( struct NtReadFile_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtReadFile","PVOID"] = 1+offsetof( struct NtReadFile_AS_TYPES,PVOID );
 offsets["NtReadFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtReadFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtReadFile","OUTBUF"] = 1+offsetof( struct NtReadFile_AS_TYPES,OUTBUF );
 offsets["NtReadFile","OUTLEN"] = 1+offsetof( struct NtReadFile_AS_TYPES,OUTLEN );
 offsets["NtReadFile","LARGE_INTEGER"] = 1+offsetof( struct NtReadFile_AS_TYPES,LARGE_INTEGER );
 offsets["NtReadFile","ULONG"] = 1+offsetof( struct NtReadFile_AS_TYPES,ULONG );
 offsets["NtReadFile","NTSTATUS"] = 1+offsetof( struct NtReadFile_AS_TYPES,NTSTATUS );
 offsets["NtReadFileScatter",""] = offsetof( union all , NtReadFileScatter );
 offsets["NtReadFileScatter","HANDLE"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,HANDLE );
 offsets["NtReadFileScatter","HANDLE"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,HANDLE1);
 offsets["NtReadFileScatter","PIO_APC_ROUTINE"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtReadFileScatter","PVOID"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,PVOID );
 offsets["NtReadFileScatter","IO_STATUS_BLOCK"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtReadFileScatter","FILE_SEGMENT_ELEMENT"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,FILE_SEGMENT_ELEMENT );
 offsets["NtReadFileScatter","ULONG"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,ULONG );
 offsets["NtReadFileScatter","LARGE_INTEGER"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,LARGE_INTEGER );
 offsets["NtReadFileScatter","ULONG"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,ULONG1);
 offsets["NtReadFileScatter","NTSTATUS"] = 1+offsetof( struct NtReadFileScatter_AS_TYPES,NTSTATUS );
 offsets["NtReadOnlyEnlistment",""] = offsetof( union all , NtReadOnlyEnlistment );
 offsets["NtReadOnlyEnlistment","HANDLE"] = 1+offsetof( struct NtReadOnlyEnlistment_AS_TYPES,HANDLE );
 offsets["NtReadOnlyEnlistment","LARGE_INTEGER"] = 1+offsetof( struct NtReadOnlyEnlistment_AS_TYPES,LARGE_INTEGER );
 offsets["NtReadOnlyEnlistment","NTSTATUS"] = 1+offsetof( struct NtReadOnlyEnlistment_AS_TYPES,NTSTATUS );
 offsets["NtReadRequestData",""] = offsetof( union all , NtReadRequestData );
 offsets["NtReadRequestData","HANDLE"] = 1+offsetof( struct NtReadRequestData_AS_TYPES,HANDLE );
 offsets["NtReadRequestData","PORT_MESSAGE"] = 1+offsetof( struct NtReadRequestData_AS_TYPES,PORT_MESSAGE );
 offsets["NtReadRequestData","ULONG"] = 1+offsetof( struct NtReadRequestData_AS_TYPES,ULONG );
 offsets["NtReadRequestData","PVOID"] = 1+offsetof( struct NtReadRequestData_AS_TYPES,PVOID );
 offsets["NtReadRequestData","SIZE_T"] = 1+offsetof( struct NtReadRequestData_AS_TYPES,SIZE_T );
 offsets["NtReadRequestData","SIZE_T"] = 1+offsetof( struct NtReadRequestData_AS_TYPES,SIZE_T1);
 offsets["NtReadRequestData","NTSTATUS"] = 1+offsetof( struct NtReadRequestData_AS_TYPES,NTSTATUS );
 offsets["NtReadVirtualMemory",""] = offsetof( union all , NtReadVirtualMemory );
 offsets["NtReadVirtualMemory","HANDLE"] = 1+offsetof( struct NtReadVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtReadVirtualMemory","PVOID"] = 1+offsetof( struct NtReadVirtualMemory_AS_TYPES,PVOID );
 offsets["NtReadVirtualMemory","PVOID"] = 1+offsetof( struct NtReadVirtualMemory_AS_TYPES,PVOID1);
 offsets["NtReadVirtualMemory","SIZE_T"] = 1+offsetof( struct NtReadVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtReadVirtualMemory","SIZE_T"] = 1+offsetof( struct NtReadVirtualMemory_AS_TYPES,SIZE_T1);
 offsets["NtReadVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtReadVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtRegisterThreadTerminatePort",""] = offsetof( union all , NtRegisterThreadTerminatePort );
 offsets["NtRegisterThreadTerminatePort","HANDLE"] = 1+offsetof( struct NtRegisterThreadTerminatePort_AS_TYPES,HANDLE );
 offsets["NtRegisterThreadTerminatePort","NTSTATUS"] = 1+offsetof( struct NtRegisterThreadTerminatePort_AS_TYPES,NTSTATUS );
 offsets["NtReleaseKeyedEvent",""] = offsetof( union all , NtReleaseKeyedEvent );
 offsets["NtReleaseKeyedEvent","HANDLE"] = 1+offsetof( struct NtReleaseKeyedEvent_AS_TYPES,HANDLE );
 offsets["NtReleaseKeyedEvent","PVOID"] = 1+offsetof( struct NtReleaseKeyedEvent_AS_TYPES,PVOID );
 offsets["NtReleaseKeyedEvent","BOOLEAN"] = 1+offsetof( struct NtReleaseKeyedEvent_AS_TYPES,BOOLEAN );
 offsets["NtReleaseKeyedEvent","LARGE_INTEGER"] = 1+offsetof( struct NtReleaseKeyedEvent_AS_TYPES,LARGE_INTEGER );
 offsets["NtReleaseKeyedEvent","NTSTATUS"] = 1+offsetof( struct NtReleaseKeyedEvent_AS_TYPES,NTSTATUS );
 offsets["NtReleaseMutant",""] = offsetof( union all , NtReleaseMutant );
 offsets["NtReleaseMutant","HANDLE"] = 1+offsetof( struct NtReleaseMutant_AS_TYPES,HANDLE );
 offsets["NtReleaseMutant","LONG"] = 1+offsetof( struct NtReleaseMutant_AS_TYPES,LONG );
 offsets["NtReleaseMutant","NTSTATUS"] = 1+offsetof( struct NtReleaseMutant_AS_TYPES,NTSTATUS );
 offsets["NtReleaseSemaphore",""] = offsetof( union all , NtReleaseSemaphore );
 offsets["NtReleaseSemaphore","HANDLE"] = 1+offsetof( struct NtReleaseSemaphore_AS_TYPES,HANDLE );
 offsets["NtReleaseSemaphore","LONG"] = 1+offsetof( struct NtReleaseSemaphore_AS_TYPES,LONG );
 offsets["NtReleaseSemaphore","LONG"] = 1+offsetof( struct NtReleaseSemaphore_AS_TYPES,LONG1);
 offsets["NtReleaseSemaphore","NTSTATUS"] = 1+offsetof( struct NtReleaseSemaphore_AS_TYPES,NTSTATUS );
 offsets["NtReleaseWorkerFactoryWorker",""] = offsetof( union all , NtReleaseWorkerFactoryWorker );
 offsets["NtReleaseWorkerFactoryWorker","HANDLE"] = 1+offsetof( struct NtReleaseWorkerFactoryWorker_AS_TYPES,HANDLE );
 offsets["NtReleaseWorkerFactoryWorker","NTSTATUS"] = 1+offsetof( struct NtReleaseWorkerFactoryWorker_AS_TYPES,NTSTATUS );
 offsets["NtRemoveIoCompletion",""] = offsetof( union all , NtRemoveIoCompletion );
 offsets["NtRemoveIoCompletion","HANDLE"] = 1+offsetof( struct NtRemoveIoCompletion_AS_TYPES,HANDLE );
 offsets["NtRemoveIoCompletion","PVOID"] = 1+offsetof( struct NtRemoveIoCompletion_AS_TYPES,PVOID );
 offsets["NtRemoveIoCompletion","PVOID"] = 1+offsetof( struct NtRemoveIoCompletion_AS_TYPES,PVOID1);
 offsets["NtRemoveIoCompletion","IO_STATUS_BLOCK"] = 1+offsetof( struct NtRemoveIoCompletion_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtRemoveIoCompletion","LARGE_INTEGER"] = 1+offsetof( struct NtRemoveIoCompletion_AS_TYPES,LARGE_INTEGER );
 offsets["NtRemoveIoCompletion","NTSTATUS"] = 1+offsetof( struct NtRemoveIoCompletion_AS_TYPES,NTSTATUS );
 offsets["NtRemoveIoCompletionEx",""] = offsetof( union all , NtRemoveIoCompletionEx );
 offsets["NtRemoveIoCompletionEx","HANDLE"] = 1+offsetof( struct NtRemoveIoCompletionEx_AS_TYPES,HANDLE );
 offsets["NtRemoveIoCompletionEx","FILE_IO_COMPLETION_INFORMATION"] = 1+offsetof( struct NtRemoveIoCompletionEx_AS_TYPES,FILE_IO_COMPLETION_INFORMATION );
 offsets["NtRemoveIoCompletionEx","ULONG"] = 1+offsetof( struct NtRemoveIoCompletionEx_AS_TYPES,ULONG );
 offsets["NtRemoveIoCompletionEx","ULONG"] = 1+offsetof( struct NtRemoveIoCompletionEx_AS_TYPES,ULONG1);
 offsets["NtRemoveIoCompletionEx","LARGE_INTEGER"] = 1+offsetof( struct NtRemoveIoCompletionEx_AS_TYPES,LARGE_INTEGER );
 offsets["NtRemoveIoCompletionEx","BOOLEAN"] = 1+offsetof( struct NtRemoveIoCompletionEx_AS_TYPES,BOOLEAN );
 offsets["NtRemoveIoCompletionEx","NTSTATUS"] = 1+offsetof( struct NtRemoveIoCompletionEx_AS_TYPES,NTSTATUS );
 offsets["NtRenameKey",""] = offsetof( union all , NtRenameKey );
 offsets["NtRenameKey","HANDLE"] = 1+offsetof( struct NtRenameKey_AS_TYPES,HANDLE );
 offsets["NtRenameKey","UNICODE_STRING"] = 1+offsetof( struct NtRenameKey_AS_TYPES,UNICODE_STRING );
 offsets["NtRenameKey","NTSTATUS"] = 1+offsetof( struct NtRenameKey_AS_TYPES,NTSTATUS );
 offsets["NtReplaceKey",""] = offsetof( union all , NtReplaceKey );
 offsets["NtReplaceKey","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtReplaceKey_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtReplaceKey","HANDLE"] = 1+offsetof( struct NtReplaceKey_AS_TYPES,HANDLE );
 offsets["NtReplaceKey","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtReplaceKey_AS_TYPES,OBJECT_ATTRIBUTES1);
 offsets["NtReplaceKey","NTSTATUS"] = 1+offsetof( struct NtReplaceKey_AS_TYPES,NTSTATUS );
 offsets["NtReplacePartitionUnit",""] = offsetof( union all , NtReplacePartitionUnit );
 offsets["NtReplacePartitionUnit","UNICODE_STRING"] = 1+offsetof( struct NtReplacePartitionUnit_AS_TYPES,UNICODE_STRING );
 offsets["NtReplacePartitionUnit","UNICODE_STRING"] = 1+offsetof( struct NtReplacePartitionUnit_AS_TYPES,UNICODE_STRING1);
 offsets["NtReplacePartitionUnit","ULONG"] = 1+offsetof( struct NtReplacePartitionUnit_AS_TYPES,ULONG );
 offsets["NtReplacePartitionUnit","NTSTATUS"] = 1+offsetof( struct NtReplacePartitionUnit_AS_TYPES,NTSTATUS );
 offsets["NtReplyPort",""] = offsetof( union all , NtReplyPort );
 offsets["NtReplyPort","HANDLE"] = 1+offsetof( struct NtReplyPort_AS_TYPES,HANDLE );
 offsets["NtReplyPort","PORT_MESSAGE"] = 1+offsetof( struct NtReplyPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtReplyPort","NTSTATUS"] = 1+offsetof( struct NtReplyPort_AS_TYPES,NTSTATUS );
 offsets["NtReplyWaitReceivePort",""] = offsetof( union all , NtReplyWaitReceivePort );
 offsets["NtReplyWaitReceivePort","HANDLE"] = 1+offsetof( struct NtReplyWaitReceivePort_AS_TYPES,HANDLE );
 offsets["NtReplyWaitReceivePort","PVOID"] = 1+offsetof( struct NtReplyWaitReceivePort_AS_TYPES,PVOID );
 offsets["NtReplyWaitReceivePort","PORT_MESSAGE"] = 1+offsetof( struct NtReplyWaitReceivePort_AS_TYPES,PORT_MESSAGE );
 offsets["NtReplyWaitReceivePort","PORT_MESSAGE"] = 1+offsetof( struct NtReplyWaitReceivePort_AS_TYPES,PORT_MESSAGE1);
 offsets["NtReplyWaitReceivePort","NTSTATUS"] = 1+offsetof( struct NtReplyWaitReceivePort_AS_TYPES,NTSTATUS );
 offsets["NtReplyWaitReceivePortEx",""] = offsetof( union all , NtReplyWaitReceivePortEx );
 offsets["NtReplyWaitReceivePortEx","HANDLE"] = 1+offsetof( struct NtReplyWaitReceivePortEx_AS_TYPES,HANDLE );
 offsets["NtReplyWaitReceivePortEx","PVOID"] = 1+offsetof( struct NtReplyWaitReceivePortEx_AS_TYPES,PVOID );
 offsets["NtReplyWaitReceivePortEx","PORT_MESSAGE"] = 1+offsetof( struct NtReplyWaitReceivePortEx_AS_TYPES,PORT_MESSAGE );
 offsets["NtReplyWaitReceivePortEx","PORT_MESSAGE"] = 1+offsetof( struct NtReplyWaitReceivePortEx_AS_TYPES,PORT_MESSAGE1);
 offsets["NtReplyWaitReceivePortEx","LARGE_INTEGER"] = 1+offsetof( struct NtReplyWaitReceivePortEx_AS_TYPES,LARGE_INTEGER );
 offsets["NtReplyWaitReceivePortEx","NTSTATUS"] = 1+offsetof( struct NtReplyWaitReceivePortEx_AS_TYPES,NTSTATUS );
 offsets["NtReplyWaitReplyPort",""] = offsetof( union all , NtReplyWaitReplyPort );
 offsets["NtReplyWaitReplyPort","HANDLE"] = 1+offsetof( struct NtReplyWaitReplyPort_AS_TYPES,HANDLE );
 offsets["NtReplyWaitReplyPort","PORT_MESSAGE"] = 1+offsetof( struct NtReplyWaitReplyPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtReplyWaitReplyPort","NTSTATUS"] = 1+offsetof( struct NtReplyWaitReplyPort_AS_TYPES,NTSTATUS );
 offsets["NtRequestPort",""] = offsetof( union all , NtRequestPort );
 offsets["NtRequestPort","HANDLE"] = 1+offsetof( struct NtRequestPort_AS_TYPES,HANDLE );
 offsets["NtRequestPort","PORT_MESSAGE"] = 1+offsetof( struct NtRequestPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtRequestPort","NTSTATUS"] = 1+offsetof( struct NtRequestPort_AS_TYPES,NTSTATUS );
 offsets["NtRequestWaitReplyPort",""] = offsetof( union all , NtRequestWaitReplyPort );
 offsets["NtRequestWaitReplyPort","HANDLE"] = 1+offsetof( struct NtRequestWaitReplyPort_AS_TYPES,HANDLE );
 offsets["NtRequestWaitReplyPort","PORT_MESSAGE"] = 1+offsetof( struct NtRequestWaitReplyPort_AS_TYPES,PORT_MESSAGE );
 offsets["NtRequestWaitReplyPort","PORT_MESSAGE"] = 1+offsetof( struct NtRequestWaitReplyPort_AS_TYPES,PORT_MESSAGE1);
 offsets["NtRequestWaitReplyPort","NTSTATUS"] = 1+offsetof( struct NtRequestWaitReplyPort_AS_TYPES,NTSTATUS );
 offsets["NtResetEvent",""] = offsetof( union all , NtResetEvent );
 offsets["NtResetEvent","HANDLE"] = 1+offsetof( struct NtResetEvent_AS_TYPES,HANDLE );
 offsets["NtResetEvent","LONG"] = 1+offsetof( struct NtResetEvent_AS_TYPES,LONG );
 offsets["NtResetEvent","NTSTATUS"] = 1+offsetof( struct NtResetEvent_AS_TYPES,NTSTATUS );
 offsets["NtResetWriteWatch",""] = offsetof( union all , NtResetWriteWatch );
 offsets["NtResetWriteWatch","HANDLE"] = 1+offsetof( struct NtResetWriteWatch_AS_TYPES,HANDLE );
 offsets["NtResetWriteWatch","PVOID"] = 1+offsetof( struct NtResetWriteWatch_AS_TYPES,PVOID );
 offsets["NtResetWriteWatch","SIZE_T"] = 1+offsetof( struct NtResetWriteWatch_AS_TYPES,SIZE_T );
 offsets["NtResetWriteWatch","NTSTATUS"] = 1+offsetof( struct NtResetWriteWatch_AS_TYPES,NTSTATUS );
 offsets["NtRestoreKey",""] = offsetof( union all , NtRestoreKey );
 offsets["NtRestoreKey","HANDLE"] = 1+offsetof( struct NtRestoreKey_AS_TYPES,HANDLE );
 offsets["NtRestoreKey","HANDLE"] = 1+offsetof( struct NtRestoreKey_AS_TYPES,HANDLE1);
 offsets["NtRestoreKey","ULONG"] = 1+offsetof( struct NtRestoreKey_AS_TYPES,ULONG );
 offsets["NtRestoreKey","NTSTATUS"] = 1+offsetof( struct NtRestoreKey_AS_TYPES,NTSTATUS );
 offsets["NtResumeProcess",""] = offsetof( union all , NtResumeProcess );
 offsets["NtResumeProcess","HANDLE"] = 1+offsetof( struct NtResumeProcess_AS_TYPES,HANDLE );
 offsets["NtResumeProcess","NTSTATUS"] = 1+offsetof( struct NtResumeProcess_AS_TYPES,NTSTATUS );
 offsets["NtResumeThread",""] = offsetof( union all , NtResumeThread );
 offsets["NtResumeThread","HANDLE"] = 1+offsetof( struct NtResumeThread_AS_TYPES,HANDLE );
 offsets["NtResumeThread","ULONG"] = 1+offsetof( struct NtResumeThread_AS_TYPES,ULONG );
 offsets["NtResumeThread","NTSTATUS"] = 1+offsetof( struct NtResumeThread_AS_TYPES,NTSTATUS );
 offsets["NtRevertContainerImpersonation",""] = offsetof( union all , NtRevertContainerImpersonation );
 offsets["NtRevertContainerImpersonation","NTSTATUS"] = 1+offsetof( struct NtRevertContainerImpersonation_AS_TYPES,NTSTATUS );
 offsets["NtSaveKey",""] = offsetof( union all , NtSaveKey );
 offsets["NtSaveKey","HANDLE"] = 1+offsetof( struct NtSaveKey_AS_TYPES,HANDLE );
 offsets["NtSaveKey","HANDLE"] = 1+offsetof( struct NtSaveKey_AS_TYPES,HANDLE1);
 offsets["NtSaveKey","NTSTATUS"] = 1+offsetof( struct NtSaveKey_AS_TYPES,NTSTATUS );
 offsets["NtSaveKeyEx",""] = offsetof( union all , NtSaveKeyEx );
 offsets["NtSaveKeyEx","HANDLE"] = 1+offsetof( struct NtSaveKeyEx_AS_TYPES,HANDLE );
 offsets["NtSaveKeyEx","HANDLE"] = 1+offsetof( struct NtSaveKeyEx_AS_TYPES,HANDLE1);
 offsets["NtSaveKeyEx","ULONG"] = 1+offsetof( struct NtSaveKeyEx_AS_TYPES,ULONG );
 offsets["NtSaveKeyEx","NTSTATUS"] = 1+offsetof( struct NtSaveKeyEx_AS_TYPES,NTSTATUS );
 offsets["NtSaveMergedKeys",""] = offsetof( union all , NtSaveMergedKeys );
 offsets["NtSaveMergedKeys","HANDLE"] = 1+offsetof( struct NtSaveMergedKeys_AS_TYPES,HANDLE );
 offsets["NtSaveMergedKeys","HANDLE"] = 1+offsetof( struct NtSaveMergedKeys_AS_TYPES,HANDLE1);
 offsets["NtSecureConnectPort",""] = offsetof( union all , NtSecureConnectPort );
 offsets["NtSecureConnectPort","PHANDLE"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,PHANDLE );
 offsets["NtSecureConnectPort","UNICODE_STRING"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,UNICODE_STRING );
 offsets["NtSecureConnectPort","SECURITY_QUALITY_OF_SERVICE"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,SECURITY_QUALITY_OF_SERVICE );
 offsets["NtSecureConnectPort","PORT_VIEW"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,PORT_VIEW );
 offsets["NtSecureConnectPort","SID"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,SID );
 offsets["NtSecureConnectPort","REMOTE_PORT_VIEW"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,REMOTE_PORT_VIEW );
 offsets["NtSecureConnectPort","ULONG"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,ULONG );
 offsets["NtSecureConnectPort","PVOID"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,PVOID );
 offsets["NtSecureConnectPort","ULONG"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,ULONG1);
 offsets["NtSecureConnectPort","NTSTATUS"] = 1+offsetof( struct NtSecureConnectPort_AS_TYPES,NTSTATUS );
 offsets["NtSerializeBoot",""] = offsetof( union all , NtSerializeBoot );
 offsets["NtSerializeBoot","NTSTATUS"] = 1+offsetof( struct NtSerializeBoot_AS_TYPES,NTSTATUS );
 offsets["NtSetBootOptions",""] = offsetof( union all , NtSetBootOptions );
 offsets["NtSetBootOptions","BOOT_OPTIONS"] = 1+offsetof( struct NtSetBootOptions_AS_TYPES,BOOT_OPTIONS );
 offsets["NtSetBootOptions","ULONG"] = 1+offsetof( struct NtSetBootOptions_AS_TYPES,ULONG );
 offsets["NtSetBootOptions","NTSTATUS"] = 1+offsetof( struct NtSetBootOptions_AS_TYPES,NTSTATUS );
 offsets["NtSetCachedSigningLevel",""] = offsetof( union all , NtSetCachedSigningLevel );
 offsets["NtSetCachedSigningLevel","ULONG"] = 1+offsetof( struct NtSetCachedSigningLevel_AS_TYPES,ULONG );
 offsets["NtSetCachedSigningLevel","SE_SIGNING_LEVEL"] = 1+offsetof( struct NtSetCachedSigningLevel_AS_TYPES,SE_SIGNING_LEVEL );
 offsets["NtSetCachedSigningLevel","PHANDLE"] = 1+offsetof( struct NtSetCachedSigningLevel_AS_TYPES,PHANDLE );
 offsets["NtSetCachedSigningLevel","ULONG"] = 1+offsetof( struct NtSetCachedSigningLevel_AS_TYPES,ULONG1);
 offsets["NtSetCachedSigningLevel","HANDLE"] = 1+offsetof( struct NtSetCachedSigningLevel_AS_TYPES,HANDLE );
 offsets["NtSetCachedSigningLevel","NTSTATUS"] = 1+offsetof( struct NtSetCachedSigningLevel_AS_TYPES,NTSTATUS );
 offsets["NtSetCachedSigningLevel2",""] = offsetof( union all , NtSetCachedSigningLevel2 );
 offsets["NtSetCachedSigningLevel2","ULONG"] = 1+offsetof( struct NtSetCachedSigningLevel2_AS_TYPES,ULONG );
 offsets["NtSetCachedSigningLevel2","SE_SIGNING_LEVEL"] = 1+offsetof( struct NtSetCachedSigningLevel2_AS_TYPES,SE_SIGNING_LEVEL );
 offsets["NtSetCachedSigningLevel2","PHANDLE"] = 1+offsetof( struct NtSetCachedSigningLevel2_AS_TYPES,PHANDLE );
 offsets["NtSetCachedSigningLevel2","ULONG"] = 1+offsetof( struct NtSetCachedSigningLevel2_AS_TYPES,ULONG1);
 offsets["NtSetCachedSigningLevel2","HANDLE"] = 1+offsetof( struct NtSetCachedSigningLevel2_AS_TYPES,HANDLE );
 offsets["NtSetCachedSigningLevel2","CSE_SET_FILE_CACHE_INFORMATION"] = 1+offsetof( struct NtSetCachedSigningLevel2_AS_TYPES,CSE_SET_FILE_CACHE_INFORMATION );
 offsets["NtSetCachedSigningLevel2","NTSTATUS"] = 1+offsetof( struct NtSetCachedSigningLevel2_AS_TYPES,NTSTATUS );
 offsets["NtSetContextThread",""] = offsetof( union all , NtSetContextThread );
 offsets["NtSetContextThread","HANDLE"] = 1+offsetof( struct NtSetContextThread_AS_TYPES,HANDLE );
 offsets["NtSetContextThread","CONTEXT"] = 1+offsetof( struct NtSetContextThread_AS_TYPES,CONTEXT );
 offsets["NtSetContextThread","NTSTATUS"] = 1+offsetof( struct NtSetContextThread_AS_TYPES,NTSTATUS );
 offsets["NtSetDriverEntryOrder",""] = offsetof( union all , NtSetDriverEntryOrder );
 offsets["NtSetDriverEntryOrder","ULONG"] = 1+offsetof( struct NtSetDriverEntryOrder_AS_TYPES,ULONG );
 offsets["NtSetDriverEntryOrder","ULONG"] = 1+offsetof( struct NtSetDriverEntryOrder_AS_TYPES,ULONG1);
 offsets["NtSetDriverEntryOrder","NTSTATUS"] = 1+offsetof( struct NtSetDriverEntryOrder_AS_TYPES,NTSTATUS );
 offsets["NtSetEaFile",""] = offsetof( union all , NtSetEaFile );
 offsets["NtSetEaFile","HANDLE"] = 1+offsetof( struct NtSetEaFile_AS_TYPES,HANDLE );
 offsets["NtSetEaFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtSetEaFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtSetEaFile","PVOID"] = 1+offsetof( struct NtSetEaFile_AS_TYPES,PVOID );
 offsets["NtSetEaFile","ULONG"] = 1+offsetof( struct NtSetEaFile_AS_TYPES,ULONG );
 offsets["NtSetEaFile","NTSTATUS"] = 1+offsetof( struct NtSetEaFile_AS_TYPES,NTSTATUS );
 offsets["NtSetEvent",""] = offsetof( union all , NtSetEvent );
 offsets["NtSetEvent","HANDLE"] = 1+offsetof( struct NtSetEvent_AS_TYPES,HANDLE );
 offsets["NtSetEvent","LONG"] = 1+offsetof( struct NtSetEvent_AS_TYPES,LONG );
 offsets["NtSetEvent","NTSTATUS"] = 1+offsetof( struct NtSetEvent_AS_TYPES,NTSTATUS );
 offsets["NtSetHighEventPair",""] = offsetof( union all , NtSetHighEventPair );
 offsets["NtSetHighEventPair","HANDLE"] = 1+offsetof( struct NtSetHighEventPair_AS_TYPES,HANDLE );
 offsets["NtSetHighEventPair","NTSTATUS"] = 1+offsetof( struct NtSetHighEventPair_AS_TYPES,NTSTATUS );
 offsets["NtSetHighWaitLowEventPair",""] = offsetof( union all , NtSetHighWaitLowEventPair );
 offsets["NtSetHighWaitLowEventPair","HANDLE"] = 1+offsetof( struct NtSetHighWaitLowEventPair_AS_TYPES,HANDLE );
 offsets["NtSetHighWaitLowEventPair","NTSTATUS"] = 1+offsetof( struct NtSetHighWaitLowEventPair_AS_TYPES,NTSTATUS );
 offsets["NtSetIRTimer",""] = offsetof( union all , NtSetIRTimer );
 offsets["NtSetIRTimer","HANDLE"] = 1+offsetof( struct NtSetIRTimer_AS_TYPES,HANDLE );
 offsets["NtSetIRTimer","LARGE_INTEGER"] = 1+offsetof( struct NtSetIRTimer_AS_TYPES,LARGE_INTEGER );
 offsets["NtSetIRTimer","NTSTATUS"] = 1+offsetof( struct NtSetIRTimer_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationEnlistment",""] = offsetof( union all , NtSetInformationEnlistment );
 offsets["NtSetInformationEnlistment","HANDLE"] = 1+offsetof( struct NtSetInformationEnlistment_AS_TYPES,HANDLE );
 offsets["NtSetInformationEnlistment","ENLISTMENT_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationEnlistment_AS_TYPES,ENLISTMENT_INFORMATION_CLASS );
 offsets["NtSetInformationEnlistment","PVOID"] = 1+offsetof( struct NtSetInformationEnlistment_AS_TYPES,PVOID );
 offsets["NtSetInformationEnlistment","ULONG"] = 1+offsetof( struct NtSetInformationEnlistment_AS_TYPES,ULONG );
 offsets["NtSetInformationEnlistment","NTSTATUS"] = 1+offsetof( struct NtSetInformationEnlistment_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationFile",""] = offsetof( union all , NtSetInformationFile );
 offsets["NtSetInformationFile","HANDLE"] = 1+offsetof( struct NtSetInformationFile_AS_TYPES,HANDLE );
 offsets["NtSetInformationFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtSetInformationFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtSetInformationFile","INBUF"] = 1+offsetof( struct NtSetInformationFile_AS_TYPES,INBUF );
 offsets["NtSetInformationFile","INLEN"] = 1+offsetof( struct NtSetInformationFile_AS_TYPES,INLEN );
 offsets["NtSetInformationFile","FILE_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationFile_AS_TYPES,FILE_INFORMATION_CLASS );
 offsets["NtSetInformationFile","NTSTATUS"] = 1+offsetof( struct NtSetInformationFile_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationJobObject",""] = offsetof( union all , NtSetInformationJobObject );
 offsets["NtSetInformationJobObject","HANDLE"] = 1+offsetof( struct NtSetInformationJobObject_AS_TYPES,HANDLE );
 offsets["NtSetInformationJobObject","JOBOBJECTINFOCLASS"] = 1+offsetof( struct NtSetInformationJobObject_AS_TYPES,JOBOBJECTINFOCLASS );
 offsets["NtSetInformationJobObject","INBUF"] = 1+offsetof( struct NtSetInformationJobObject_AS_TYPES,INBUF );
 offsets["NtSetInformationJobObject","INLEN"] = 1+offsetof( struct NtSetInformationJobObject_AS_TYPES,INLEN );
 offsets["NtSetInformationJobObject","NTSTATUS"] = 1+offsetof( struct NtSetInformationJobObject_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationKey",""] = offsetof( union all , NtSetInformationKey );
 offsets["NtSetInformationKey","HANDLE"] = 1+offsetof( struct NtSetInformationKey_AS_TYPES,HANDLE );
 offsets["NtSetInformationKey","KEY_SET_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationKey_AS_TYPES,KEY_SET_INFORMATION_CLASS );
 offsets["NtSetInformationKey","PVOID"] = 1+offsetof( struct NtSetInformationKey_AS_TYPES,PVOID );
 offsets["NtSetInformationKey","ULONG"] = 1+offsetof( struct NtSetInformationKey_AS_TYPES,ULONG );
 offsets["NtSetInformationKey","NTSTATUS"] = 1+offsetof( struct NtSetInformationKey_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationObject",""] = offsetof( union all , NtSetInformationObject );
 offsets["NtSetInformationObject","HANDLE"] = 1+offsetof( struct NtSetInformationObject_AS_TYPES,HANDLE );
 offsets["NtSetInformationObject","OBJECT_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationObject_AS_TYPES,OBJECT_INFORMATION_CLASS );
 offsets["NtSetInformationObject","PVOID"] = 1+offsetof( struct NtSetInformationObject_AS_TYPES,PVOID );
 offsets["NtSetInformationObject","ULONG"] = 1+offsetof( struct NtSetInformationObject_AS_TYPES,ULONG );
 offsets["NtSetInformationObject","NTSTATUS"] = 1+offsetof( struct NtSetInformationObject_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationProcess",""] = offsetof( union all , NtSetInformationProcess );
 offsets["NtSetInformationProcess","HANDLE"] = 1+offsetof( struct NtSetInformationProcess_AS_TYPES,HANDLE );
 offsets["NtSetInformationProcess","PROCESSINFOCLASS"] = 1+offsetof( struct NtSetInformationProcess_AS_TYPES,PROCESSINFOCLASS );
 offsets["NtSetInformationProcess","PVOID"] = 1+offsetof( struct NtSetInformationProcess_AS_TYPES,PVOID );
 offsets["NtSetInformationProcess","ULONG"] = 1+offsetof( struct NtSetInformationProcess_AS_TYPES,ULONG );
 offsets["NtSetInformationProcess","NTSTATUS"] = 1+offsetof( struct NtSetInformationProcess_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationResourceManager",""] = offsetof( union all , NtSetInformationResourceManager );
 offsets["NtSetInformationResourceManager","HANDLE"] = 1+offsetof( struct NtSetInformationResourceManager_AS_TYPES,HANDLE );
 offsets["NtSetInformationResourceManager","RESOURCEMANAGER_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationResourceManager_AS_TYPES,RESOURCEMANAGER_INFORMATION_CLASS );
 offsets["NtSetInformationResourceManager","PVOID"] = 1+offsetof( struct NtSetInformationResourceManager_AS_TYPES,PVOID );
 offsets["NtSetInformationResourceManager","ULONG"] = 1+offsetof( struct NtSetInformationResourceManager_AS_TYPES,ULONG );
 offsets["NtSetInformationResourceManager","NTSTATUS"] = 1+offsetof( struct NtSetInformationResourceManager_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationSymbolicLink",""] = offsetof( union all , NtSetInformationSymbolicLink );
 offsets["NtSetInformationSymbolicLink","HANDLE"] = 1+offsetof( struct NtSetInformationSymbolicLink_AS_TYPES,HANDLE );
 offsets["NtSetInformationSymbolicLink","SYMBOLIC_LINK_INFO_CLASS"] = 1+offsetof( struct NtSetInformationSymbolicLink_AS_TYPES,SYMBOLIC_LINK_INFO_CLASS );
 offsets["NtSetInformationSymbolicLink","PVOID"] = 1+offsetof( struct NtSetInformationSymbolicLink_AS_TYPES,PVOID );
 offsets["NtSetInformationSymbolicLink","ULONG"] = 1+offsetof( struct NtSetInformationSymbolicLink_AS_TYPES,ULONG );
 offsets["NtSetInformationSymbolicLink","NTSTATUS"] = 1+offsetof( struct NtSetInformationSymbolicLink_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationThread",""] = offsetof( union all , NtSetInformationThread );
 offsets["NtSetInformationThread","HANDLE"] = 1+offsetof( struct NtSetInformationThread_AS_TYPES,HANDLE );
 offsets["NtSetInformationThread","THREADINFOCLASS"] = 1+offsetof( struct NtSetInformationThread_AS_TYPES,THREADINFOCLASS );
 offsets["NtSetInformationThread","PVOID"] = 1+offsetof( struct NtSetInformationThread_AS_TYPES,PVOID );
 offsets["NtSetInformationThread","ULONG"] = 1+offsetof( struct NtSetInformationThread_AS_TYPES,ULONG );
 offsets["NtSetInformationThread","NTSTATUS"] = 1+offsetof( struct NtSetInformationThread_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationToken",""] = offsetof( union all , NtSetInformationToken );
 offsets["NtSetInformationToken","HANDLE"] = 1+offsetof( struct NtSetInformationToken_AS_TYPES,HANDLE );
 offsets["NtSetInformationToken","TOKEN_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationToken_AS_TYPES,TOKEN_INFORMATION_CLASS );
 offsets["NtSetInformationToken","PVOID"] = 1+offsetof( struct NtSetInformationToken_AS_TYPES,PVOID );
 offsets["NtSetInformationToken","ULONG"] = 1+offsetof( struct NtSetInformationToken_AS_TYPES,ULONG );
 offsets["NtSetInformationToken","NTSTATUS"] = 1+offsetof( struct NtSetInformationToken_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationTransaction",""] = offsetof( union all , NtSetInformationTransaction );
 offsets["NtSetInformationTransaction","HANDLE"] = 1+offsetof( struct NtSetInformationTransaction_AS_TYPES,HANDLE );
 offsets["NtSetInformationTransaction","TRANSACTION_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationTransaction_AS_TYPES,TRANSACTION_INFORMATION_CLASS );
 offsets["NtSetInformationTransaction","PVOID"] = 1+offsetof( struct NtSetInformationTransaction_AS_TYPES,PVOID );
 offsets["NtSetInformationTransaction","ULONG"] = 1+offsetof( struct NtSetInformationTransaction_AS_TYPES,ULONG );
 offsets["NtSetInformationTransaction","NTSTATUS"] = 1+offsetof( struct NtSetInformationTransaction_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationTransactionManager",""] = offsetof( union all , NtSetInformationTransactionManager );
 offsets["NtSetInformationTransactionManager","HANDLE"] = 1+offsetof( struct NtSetInformationTransactionManager_AS_TYPES,HANDLE );
 offsets["NtSetInformationTransactionManager","TRANSACTIONMANAGER_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationTransactionManager_AS_TYPES,TRANSACTIONMANAGER_INFORMATION_CLASS );
 offsets["NtSetInformationTransactionManager","PVOID"] = 1+offsetof( struct NtSetInformationTransactionManager_AS_TYPES,PVOID );
 offsets["NtSetInformationTransactionManager","ULONG"] = 1+offsetof( struct NtSetInformationTransactionManager_AS_TYPES,ULONG );
 offsets["NtSetInformationTransactionManager","NTSTATUS"] = 1+offsetof( struct NtSetInformationTransactionManager_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationVirtualMemory",""] = offsetof( union all , NtSetInformationVirtualMemory );
 offsets["NtSetInformationVirtualMemory","HANDLE"] = 1+offsetof( struct NtSetInformationVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtSetInformationVirtualMemory","VIRTUAL_MEMORY_INFORMATION_CLASS"] = 1+offsetof( struct NtSetInformationVirtualMemory_AS_TYPES,VIRTUAL_MEMORY_INFORMATION_CLASS );
 offsets["NtSetInformationVirtualMemory","ULONG"] = 1+offsetof( struct NtSetInformationVirtualMemory_AS_TYPES,ULONG );
 offsets["NtSetInformationVirtualMemory","MEMORY_RANGE_ENTRY"] = 1+offsetof( struct NtSetInformationVirtualMemory_AS_TYPES,MEMORY_RANGE_ENTRY );
 offsets["NtSetInformationVirtualMemory","PVOID"] = 1+offsetof( struct NtSetInformationVirtualMemory_AS_TYPES,PVOID );
 offsets["NtSetInformationVirtualMemory","ULONG"] = 1+offsetof( struct NtSetInformationVirtualMemory_AS_TYPES,ULONG1);
 offsets["NtSetInformationVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtSetInformationVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtSetInformationWorkerFactory",""] = offsetof( union all , NtSetInformationWorkerFactory );
 offsets["NtSetInformationWorkerFactory","HANDLE"] = 1+offsetof( struct NtSetInformationWorkerFactory_AS_TYPES,HANDLE );
 offsets["NtSetInformationWorkerFactory","WORKERFACTORYINFOCLASS"] = 1+offsetof( struct NtSetInformationWorkerFactory_AS_TYPES,WORKERFACTORYINFOCLASS );
 offsets["NtSetInformationWorkerFactory","PVOID"] = 1+offsetof( struct NtSetInformationWorkerFactory_AS_TYPES,PVOID );
 offsets["NtSetInformationWorkerFactory","ULONG"] = 1+offsetof( struct NtSetInformationWorkerFactory_AS_TYPES,ULONG );
 offsets["NtSetInformationWorkerFactory","NTSTATUS"] = 1+offsetof( struct NtSetInformationWorkerFactory_AS_TYPES,NTSTATUS );
 offsets["NtSetIntervalProfile",""] = offsetof( union all , NtSetIntervalProfile );
 offsets["NtSetIntervalProfile","ULONG"] = 1+offsetof( struct NtSetIntervalProfile_AS_TYPES,ULONG );
 offsets["NtSetIntervalProfile","KPROFILE_SOURCE"] = 1+offsetof( struct NtSetIntervalProfile_AS_TYPES,KPROFILE_SOURCE );
 offsets["NtSetIntervalProfile","NTSTATUS"] = 1+offsetof( struct NtSetIntervalProfile_AS_TYPES,NTSTATUS );
 offsets["NtSetIoCompletion",""] = offsetof( union all , NtSetIoCompletion );
 offsets["NtSetIoCompletion","HANDLE"] = 1+offsetof( struct NtSetIoCompletion_AS_TYPES,HANDLE );
 offsets["NtSetIoCompletion","PVOID"] = 1+offsetof( struct NtSetIoCompletion_AS_TYPES,PVOID );
 offsets["NtSetIoCompletion","PVOID"] = 1+offsetof( struct NtSetIoCompletion_AS_TYPES,PVOID1);
 offsets["NtSetIoCompletion","NTSTATUS"] = 1+offsetof( struct NtSetIoCompletion_AS_TYPES,NTSTATUS );
 offsets["NtSetIoCompletion","ULONG"] = 1+offsetof( struct NtSetIoCompletion_AS_TYPES,ULONG );
 offsets["NtSetIoCompletion","NTSTATUS"] = 1+offsetof( struct NtSetIoCompletion_AS_TYPES,NTSTATUS1);
 offsets["NtSetIoCompletionEx",""] = offsetof( union all , NtSetIoCompletionEx );
 offsets["NtSetIoCompletionEx","HANDLE"] = 1+offsetof( struct NtSetIoCompletionEx_AS_TYPES,HANDLE );
 offsets["NtSetIoCompletionEx","HANDLE"] = 1+offsetof( struct NtSetIoCompletionEx_AS_TYPES,HANDLE1);
 offsets["NtSetIoCompletionEx","PVOID"] = 1+offsetof( struct NtSetIoCompletionEx_AS_TYPES,PVOID );
 offsets["NtSetIoCompletionEx","PVOID"] = 1+offsetof( struct NtSetIoCompletionEx_AS_TYPES,PVOID1);
 offsets["NtSetIoCompletionEx","NTSTATUS"] = 1+offsetof( struct NtSetIoCompletionEx_AS_TYPES,NTSTATUS );
 offsets["NtSetIoCompletionEx","ULONG"] = 1+offsetof( struct NtSetIoCompletionEx_AS_TYPES,ULONG );
 offsets["NtSetIoCompletionEx","NTSTATUS"] = 1+offsetof( struct NtSetIoCompletionEx_AS_TYPES,NTSTATUS1);
 offsets["NtSetLdtEntries",""] = offsetof( union all , NtSetLdtEntries );
 offsets["NtSetLdtEntries","ULONG"] = 1+offsetof( struct NtSetLdtEntries_AS_TYPES,ULONG );
 offsets["NtSetLdtEntries","ULONG"] = 1+offsetof( struct NtSetLdtEntries_AS_TYPES,ULONG1);
 offsets["NtSetLdtEntries","ULONG"] = 1+offsetof( struct NtSetLdtEntries_AS_TYPES,ULONG2);
 offsets["NtSetLdtEntries","ULONG"] = 1+offsetof( struct NtSetLdtEntries_AS_TYPES,ULONG3);
 offsets["NtSetLdtEntries","ULONG"] = 1+offsetof( struct NtSetLdtEntries_AS_TYPES,ULONG4);
 offsets["NtSetLdtEntries","ULONG"] = 1+offsetof( struct NtSetLdtEntries_AS_TYPES,ULONG5);
 offsets["NtSetLdtEntries","NTSTATUS"] = 1+offsetof( struct NtSetLdtEntries_AS_TYPES,NTSTATUS );
 offsets["NtSetLowEventPair",""] = offsetof( union all , NtSetLowEventPair );
 offsets["NtSetLowEventPair","HANDLE"] = 1+offsetof( struct NtSetLowEventPair_AS_TYPES,HANDLE );
 offsets["NtSetLowEventPair","NTSTATUS"] = 1+offsetof( struct NtSetLowEventPair_AS_TYPES,NTSTATUS );
 offsets["NtSetLowWaitHighEventPair",""] = offsetof( union all , NtSetLowWaitHighEventPair );
 offsets["NtSetLowWaitHighEventPair","HANDLE"] = 1+offsetof( struct NtSetLowWaitHighEventPair_AS_TYPES,HANDLE );
 offsets["NtSetLowWaitHighEventPair","NTSTATUS"] = 1+offsetof( struct NtSetLowWaitHighEventPair_AS_TYPES,NTSTATUS );
 offsets["NtSetQuotaInformationFile",""] = offsetof( union all , NtSetQuotaInformationFile );
 offsets["NtSetQuotaInformationFile","HANDLE"] = 1+offsetof( struct NtSetQuotaInformationFile_AS_TYPES,HANDLE );
 offsets["NtSetQuotaInformationFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtSetQuotaInformationFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtSetQuotaInformationFile","PVOID"] = 1+offsetof( struct NtSetQuotaInformationFile_AS_TYPES,PVOID );
 offsets["NtSetQuotaInformationFile","ULONG"] = 1+offsetof( struct NtSetQuotaInformationFile_AS_TYPES,ULONG );
 offsets["NtSetQuotaInformationFile","NTSTATUS"] = 1+offsetof( struct NtSetQuotaInformationFile_AS_TYPES,NTSTATUS );
 offsets["NtSetSecurityObject",""] = offsetof( union all , NtSetSecurityObject );
 offsets["NtSetSecurityObject","HANDLE"] = 1+offsetof( struct NtSetSecurityObject_AS_TYPES,HANDLE );
 offsets["NtSetSecurityObject","SECURITY_INFORMATION"] = 1+offsetof( struct NtSetSecurityObject_AS_TYPES,SECURITY_INFORMATION );
 offsets["NtSetSecurityObject","SECURITY_DESCRIPTOR"] = 1+offsetof( struct NtSetSecurityObject_AS_TYPES,SECURITY_DESCRIPTOR );
 offsets["NtSetSecurityObject","NTSTATUS"] = 1+offsetof( struct NtSetSecurityObject_AS_TYPES,NTSTATUS );
 offsets["NtSetSystemEnvironmentValue",""] = offsetof( union all , NtSetSystemEnvironmentValue );
 offsets["NtSetSystemEnvironmentValue","UNICODE_STRING"] = 1+offsetof( struct NtSetSystemEnvironmentValue_AS_TYPES,UNICODE_STRING );
 offsets["NtSetSystemEnvironmentValue","UNICODE_STRING"] = 1+offsetof( struct NtSetSystemEnvironmentValue_AS_TYPES,UNICODE_STRING1);
 offsets["NtSetSystemEnvironmentValue","NTSTATUS"] = 1+offsetof( struct NtSetSystemEnvironmentValue_AS_TYPES,NTSTATUS );
 offsets["NtSetSystemEnvironmentValueEx",""] = offsetof( union all , NtSetSystemEnvironmentValueEx );
 offsets["NtSetSystemEnvironmentValueEx","UNICODE_STRING"] = 1+offsetof( struct NtSetSystemEnvironmentValueEx_AS_TYPES,UNICODE_STRING );
 offsets["NtSetSystemEnvironmentValueEx","GUID"] = 1+offsetof( struct NtSetSystemEnvironmentValueEx_AS_TYPES,GUID );
 offsets["NtSetSystemEnvironmentValueEx","PVOID"] = 1+offsetof( struct NtSetSystemEnvironmentValueEx_AS_TYPES,PVOID );
 offsets["NtSetSystemEnvironmentValueEx","ULONG"] = 1+offsetof( struct NtSetSystemEnvironmentValueEx_AS_TYPES,ULONG );
 offsets["NtSetSystemEnvironmentValueEx","ULONG"] = 1+offsetof( struct NtSetSystemEnvironmentValueEx_AS_TYPES,ULONG1);
 offsets["NtSetSystemEnvironmentValueEx","NTSTATUS"] = 1+offsetof( struct NtSetSystemEnvironmentValueEx_AS_TYPES,NTSTATUS );
 offsets["NtSetSystemInformation",""] = offsetof( union all , NtSetSystemInformation );
 offsets["NtSetSystemInformation","SYSTEM_INFORMATION_CLASS"] = 1+offsetof( struct NtSetSystemInformation_AS_TYPES,SYSTEM_INFORMATION_CLASS );
 offsets["NtSetSystemInformation","PVOID"] = 1+offsetof( struct NtSetSystemInformation_AS_TYPES,PVOID );
 offsets["NtSetSystemInformation","ULONG"] = 1+offsetof( struct NtSetSystemInformation_AS_TYPES,ULONG );
 offsets["NtSetSystemInformation","NTSTATUS"] = 1+offsetof( struct NtSetSystemInformation_AS_TYPES,NTSTATUS );
 offsets["NtSetSystemPowerState",""] = offsetof( union all , NtSetSystemPowerState );
 offsets["NtSetSystemPowerState","POWER_ACTION"] = 1+offsetof( struct NtSetSystemPowerState_AS_TYPES,POWER_ACTION );
 offsets["NtSetSystemPowerState","SYSTEM_POWER_STATE"] = 1+offsetof( struct NtSetSystemPowerState_AS_TYPES,SYSTEM_POWER_STATE );
 offsets["NtSetSystemPowerState","ULONG"] = 1+offsetof( struct NtSetSystemPowerState_AS_TYPES,ULONG );
 offsets["NtSetSystemPowerState","NTSTATUS"] = 1+offsetof( struct NtSetSystemPowerState_AS_TYPES,NTSTATUS );
 offsets["NtSetSystemTime",""] = offsetof( union all , NtSetSystemTime );
 offsets["NtSetSystemTime","LARGE_INTEGER"] = 1+offsetof( struct NtSetSystemTime_AS_TYPES,LARGE_INTEGER );
 offsets["NtSetSystemTime","LARGE_INTEGER"] = 1+offsetof( struct NtSetSystemTime_AS_TYPES,LARGE_INTEGER1);
 offsets["NtSetSystemTime","NTSTATUS"] = 1+offsetof( struct NtSetSystemTime_AS_TYPES,NTSTATUS );
 offsets["NtSetThreadExecutionState",""] = offsetof( union all , NtSetThreadExecutionState );
 offsets["NtSetThreadExecutionState","EXECUTION_STATE"] = 1+offsetof( struct NtSetThreadExecutionState_AS_TYPES,EXECUTION_STATE );
 offsets["NtSetThreadExecutionState","EXECUTION_STATE"] = 1+offsetof( struct NtSetThreadExecutionState_AS_TYPES,EXECUTION_STATE1);
 offsets["NtSetThreadExecutionState","NTSTATUS"] = 1+offsetof( struct NtSetThreadExecutionState_AS_TYPES,NTSTATUS );
 offsets["NtSetTimer",""] = offsetof( union all , NtSetTimer );
 offsets["NtSetTimer","HANDLE"] = 1+offsetof( struct NtSetTimer_AS_TYPES,HANDLE );
 offsets["NtSetTimer","LARGE_INTEGER"] = 1+offsetof( struct NtSetTimer_AS_TYPES,LARGE_INTEGER );
 offsets["NtSetTimer","PTIMER_APC_ROUTINE"] = 1+offsetof( struct NtSetTimer_AS_TYPES,PTIMER_APC_ROUTINE );
 offsets["NtSetTimer","PVOID"] = 1+offsetof( struct NtSetTimer_AS_TYPES,PVOID );
 offsets["NtSetTimer","BOOLEAN"] = 1+offsetof( struct NtSetTimer_AS_TYPES,BOOLEAN );
 offsets["NtSetTimer","LONG"] = 1+offsetof( struct NtSetTimer_AS_TYPES,LONG );
 offsets["NtSetTimer","BOOLEAN"] = 1+offsetof( struct NtSetTimer_AS_TYPES,BOOLEAN1);
 offsets["NtSetTimer","NTSTATUS"] = 1+offsetof( struct NtSetTimer_AS_TYPES,NTSTATUS );
 offsets["NtSetTimer2",""] = offsetof( union all , NtSetTimer2 );
 offsets["NtSetTimer2","HANDLE"] = 1+offsetof( struct NtSetTimer2_AS_TYPES,HANDLE );
 offsets["NtSetTimer2","LARGE_INTEGER"] = 1+offsetof( struct NtSetTimer2_AS_TYPES,LARGE_INTEGER );
 offsets["NtSetTimer2","LARGE_INTEGER"] = 1+offsetof( struct NtSetTimer2_AS_TYPES,LARGE_INTEGER1);
 offsets["NtSetTimer2","T2_SET_PARAMETERS"] = 1+offsetof( struct NtSetTimer2_AS_TYPES,T2_SET_PARAMETERS );
 offsets["NtSetTimer2","NTSTATUS"] = 1+offsetof( struct NtSetTimer2_AS_TYPES,NTSTATUS );
 offsets["NtSetTimerEx",""] = offsetof( union all , NtSetTimerEx );
 offsets["NtSetTimerEx","HANDLE"] = 1+offsetof( struct NtSetTimerEx_AS_TYPES,HANDLE );
 offsets["NtSetTimerEx","TIMER_SET_INFORMATION_CLASS"] = 1+offsetof( struct NtSetTimerEx_AS_TYPES,TIMER_SET_INFORMATION_CLASS );
 offsets["NtSetTimerEx","PVOID"] = 1+offsetof( struct NtSetTimerEx_AS_TYPES,PVOID );
 offsets["NtSetTimerEx","ULONG"] = 1+offsetof( struct NtSetTimerEx_AS_TYPES,ULONG );
 offsets["NtSetTimerEx","NTSTATUS"] = 1+offsetof( struct NtSetTimerEx_AS_TYPES,NTSTATUS );
 offsets["NtSetTimerResolution",""] = offsetof( union all , NtSetTimerResolution );
 offsets["NtSetTimerResolution","ULONG"] = 1+offsetof( struct NtSetTimerResolution_AS_TYPES,ULONG );
 offsets["NtSetTimerResolution","BOOLEAN"] = 1+offsetof( struct NtSetTimerResolution_AS_TYPES,BOOLEAN );
 offsets["NtSetTimerResolution","ULONG"] = 1+offsetof( struct NtSetTimerResolution_AS_TYPES,ULONG1);
 offsets["NtSetTimerResolution","NTSTATUS"] = 1+offsetof( struct NtSetTimerResolution_AS_TYPES,NTSTATUS );
 offsets["NtSetUuidSeed",""] = offsetof( union all , NtSetUuidSeed );
 offsets["NtSetUuidSeed","CHAR"] = 1+offsetof( struct NtSetUuidSeed_AS_TYPES,CHAR );
 offsets["NtSetUuidSeed","NTSTATUS"] = 1+offsetof( struct NtSetUuidSeed_AS_TYPES,NTSTATUS );
 offsets["NtSetValueKey",""] = offsetof( union all , NtSetValueKey );
 offsets["NtSetValueKey","HANDLE"] = 1+offsetof( struct NtSetValueKey_AS_TYPES,HANDLE );
 offsets["NtSetValueKey","UNICODE_STRING"] = 1+offsetof( struct NtSetValueKey_AS_TYPES,UNICODE_STRING );
 offsets["NtSetValueKey","ULONG"] = 1+offsetof( struct NtSetValueKey_AS_TYPES,ULONG );
 offsets["NtSetValueKey","ULONG"] = 1+offsetof( struct NtSetValueKey_AS_TYPES,ULONG1);
 offsets["NtSetValueKey","PVOID"] = 1+offsetof( struct NtSetValueKey_AS_TYPES,PVOID );
 offsets["NtSetValueKey","ULONG"] = 1+offsetof( struct NtSetValueKey_AS_TYPES,ULONG2);
 offsets["NtSetValueKey","NTSTATUS"] = 1+offsetof( struct NtSetValueKey_AS_TYPES,NTSTATUS );
 offsets["NtSetVolumeInformationFile",""] = offsetof( union all , NtSetVolumeInformationFile );
 offsets["NtSetVolumeInformationFile","HANDLE"] = 1+offsetof( struct NtSetVolumeInformationFile_AS_TYPES,HANDLE );
 offsets["NtSetVolumeInformationFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtSetVolumeInformationFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtSetVolumeInformationFile","PVOID"] = 1+offsetof( struct NtSetVolumeInformationFile_AS_TYPES,PVOID );
 offsets["NtSetVolumeInformationFile","ULONG"] = 1+offsetof( struct NtSetVolumeInformationFile_AS_TYPES,ULONG );
 offsets["NtSetVolumeInformationFile","FS_INFORMATION_CLASS"] = 1+offsetof( struct NtSetVolumeInformationFile_AS_TYPES,FS_INFORMATION_CLASS );
 offsets["NtSetVolumeInformationFile","NTSTATUS"] = 1+offsetof( struct NtSetVolumeInformationFile_AS_TYPES,NTSTATUS );
 offsets["NtSetWnfProcessNotificationEvent",""] = offsetof( union all , NtSetWnfProcessNotificationEvent );
 offsets["NtSetWnfProcessNotificationEvent","HANDLE"] = 1+offsetof( struct NtSetWnfProcessNotificationEvent_AS_TYPES,HANDLE );
 offsets["NtSetWnfProcessNotificationEvent","NTSTATUS"] = 1+offsetof( struct NtSetWnfProcessNotificationEvent_AS_TYPES,NTSTATUS );
 offsets["NtShutdownSystem",""] = offsetof( union all , NtShutdownSystem );
 offsets["NtShutdownSystem","SHUTDOWN_ACTION"] = 1+offsetof( struct NtShutdownSystem_AS_TYPES,SHUTDOWN_ACTION );
 offsets["NtShutdownSystem","NTSTATUS"] = 1+offsetof( struct NtShutdownSystem_AS_TYPES,NTSTATUS );
 offsets["NtShutdownWorkerFactory",""] = offsetof( union all , NtShutdownWorkerFactory );
 offsets["NtShutdownWorkerFactory","HANDLE"] = 1+offsetof( struct NtShutdownWorkerFactory_AS_TYPES,HANDLE );
 offsets["NtShutdownWorkerFactory","LONG"] = 1+offsetof( struct NtShutdownWorkerFactory_AS_TYPES,LONG );
 offsets["NtShutdownWorkerFactory","NTSTATUS"] = 1+offsetof( struct NtShutdownWorkerFactory_AS_TYPES,NTSTATUS );
 offsets["NtSignalAndWaitForSingleObject",""] = offsetof( union all , NtSignalAndWaitForSingleObject );
 offsets["NtSignalAndWaitForSingleObject","HANDLE"] = 1+offsetof( struct NtSignalAndWaitForSingleObject_AS_TYPES,HANDLE );
 offsets["NtSignalAndWaitForSingleObject","HANDLE"] = 1+offsetof( struct NtSignalAndWaitForSingleObject_AS_TYPES,HANDLE1);
 offsets["NtSignalAndWaitForSingleObject","BOOLEAN"] = 1+offsetof( struct NtSignalAndWaitForSingleObject_AS_TYPES,BOOLEAN );
 offsets["NtSignalAndWaitForSingleObject","LARGE_INTEGER"] = 1+offsetof( struct NtSignalAndWaitForSingleObject_AS_TYPES,LARGE_INTEGER );
 offsets["NtSignalAndWaitForSingleObject","NTSTATUS"] = 1+offsetof( struct NtSignalAndWaitForSingleObject_AS_TYPES,NTSTATUS );
 offsets["NtSinglePhaseReject",""] = offsetof( union all , NtSinglePhaseReject );
 offsets["NtSinglePhaseReject","HANDLE"] = 1+offsetof( struct NtSinglePhaseReject_AS_TYPES,HANDLE );
 offsets["NtSinglePhaseReject","LARGE_INTEGER"] = 1+offsetof( struct NtSinglePhaseReject_AS_TYPES,LARGE_INTEGER );
 offsets["NtSinglePhaseReject","NTSTATUS"] = 1+offsetof( struct NtSinglePhaseReject_AS_TYPES,NTSTATUS );
 offsets["NtStartProfile",""] = offsetof( union all , NtStartProfile );
 offsets["NtStartProfile","HANDLE"] = 1+offsetof( struct NtStartProfile_AS_TYPES,HANDLE );
 offsets["NtStartProfile","NTSTATUS"] = 1+offsetof( struct NtStartProfile_AS_TYPES,NTSTATUS );
 offsets["NtStopProfile",""] = offsetof( union all , NtStopProfile );
 offsets["NtStopProfile","HANDLE"] = 1+offsetof( struct NtStopProfile_AS_TYPES,HANDLE );
 offsets["NtStopProfile","NTSTATUS"] = 1+offsetof( struct NtStopProfile_AS_TYPES,NTSTATUS );
 offsets["NtSubscribeWnfStateChange",""] = offsetof( union all , NtSubscribeWnfStateChange );
 offsets["NtSubscribeWnfStateChange","WNF_STATE_NAME"] = 1+offsetof( struct NtSubscribeWnfStateChange_AS_TYPES,WNF_STATE_NAME );
 offsets["NtSubscribeWnfStateChange","WNF_CHANGE_STAMP"] = 1+offsetof( struct NtSubscribeWnfStateChange_AS_TYPES,WNF_CHANGE_STAMP );
 offsets["NtSubscribeWnfStateChange","ULONG"] = 1+offsetof( struct NtSubscribeWnfStateChange_AS_TYPES,ULONG );
 offsets["NtSubscribeWnfStateChange","ULONG"] = 1+offsetof( struct NtSubscribeWnfStateChange_AS_TYPES,ULONG1);
 offsets["NtSubscribeWnfStateChange","NTSTATUS"] = 1+offsetof( struct NtSubscribeWnfStateChange_AS_TYPES,NTSTATUS );
 offsets["NtSuspendProcess",""] = offsetof( union all , NtSuspendProcess );
 offsets["NtSuspendProcess","HANDLE"] = 1+offsetof( struct NtSuspendProcess_AS_TYPES,HANDLE );
 offsets["NtSuspendProcess","NTSTATUS"] = 1+offsetof( struct NtSuspendProcess_AS_TYPES,NTSTATUS );
 offsets["NtSuspendThread",""] = offsetof( union all , NtSuspendThread );
 offsets["NtSuspendThread","HANDLE"] = 1+offsetof( struct NtSuspendThread_AS_TYPES,HANDLE );
 offsets["NtSuspendThread","ULONG"] = 1+offsetof( struct NtSuspendThread_AS_TYPES,ULONG );
 offsets["NtSuspendThread","NTSTATUS"] = 1+offsetof( struct NtSuspendThread_AS_TYPES,NTSTATUS );
 offsets["NtSystemDebugControl",""] = offsetof( union all , NtSystemDebugControl );
 offsets["NtSystemDebugControl","SYSDBG_COMMAND"] = 1+offsetof( struct NtSystemDebugControl_AS_TYPES,SYSDBG_COMMAND );
 offsets["NtSystemDebugControl","PVOID"] = 1+offsetof( struct NtSystemDebugControl_AS_TYPES,PVOID );
 offsets["NtSystemDebugControl","ULONG"] = 1+offsetof( struct NtSystemDebugControl_AS_TYPES,ULONG );
 offsets["NtSystemDebugControl","PVOID"] = 1+offsetof( struct NtSystemDebugControl_AS_TYPES,PVOID1);
 offsets["NtSystemDebugControl","ULONG"] = 1+offsetof( struct NtSystemDebugControl_AS_TYPES,ULONG1);
 offsets["NtSystemDebugControl","ULONG"] = 1+offsetof( struct NtSystemDebugControl_AS_TYPES,ULONG2);
 offsets["NtSystemDebugControl","NTSTATUS"] = 1+offsetof( struct NtSystemDebugControl_AS_TYPES,NTSTATUS );
 offsets["NtTerminateEnclave",""] = offsetof( union all , NtTerminateEnclave );
 offsets["NtTerminateEnclave","PVOID"] = 1+offsetof( struct NtTerminateEnclave_AS_TYPES,PVOID );
 offsets["NtTerminateEnclave","ULONG"] = 1+offsetof( struct NtTerminateEnclave_AS_TYPES,ULONG );
 offsets["NtTerminateEnclave","NTSTATUS"] = 1+offsetof( struct NtTerminateEnclave_AS_TYPES,NTSTATUS );
 offsets["NtTerminateJobObject",""] = offsetof( union all , NtTerminateJobObject );
 offsets["NtTerminateJobObject","HANDLE"] = 1+offsetof( struct NtTerminateJobObject_AS_TYPES,HANDLE );
 offsets["NtTerminateJobObject","NTSTATUS"] = 1+offsetof( struct NtTerminateJobObject_AS_TYPES,NTSTATUS );
 offsets["NtTerminateJobObject","NTSTATUS"] = 1+offsetof( struct NtTerminateJobObject_AS_TYPES,NTSTATUS1);
 offsets["NtTerminateProcess",""] = offsetof( union all , NtTerminateProcess );
 offsets["NtTerminateProcess","HANDLE"] = 1+offsetof( struct NtTerminateProcess_AS_TYPES,HANDLE );
 offsets["NtTerminateProcess","NTSTATUS"] = 1+offsetof( struct NtTerminateProcess_AS_TYPES,NTSTATUS );
 offsets["NtTerminateProcess","NTSTATUS"] = 1+offsetof( struct NtTerminateProcess_AS_TYPES,NTSTATUS1);
 offsets["NtTerminateThread",""] = offsetof( union all , NtTerminateThread );
 offsets["NtTerminateThread","HANDLE"] = 1+offsetof( struct NtTerminateThread_AS_TYPES,HANDLE );
 offsets["NtTerminateThread","NTSTATUS"] = 1+offsetof( struct NtTerminateThread_AS_TYPES,NTSTATUS );
 offsets["NtTerminateThread","NTSTATUS"] = 1+offsetof( struct NtTerminateThread_AS_TYPES,NTSTATUS1);
 offsets["NtTestAlert",""] = offsetof( union all , NtTestAlert );
 offsets["NtTestAlert","NTSTATUS"] = 1+offsetof( struct NtTestAlert_AS_TYPES,NTSTATUS );
 offsets["NtTraceControl",""] = offsetof( union all , NtTraceControl );
 offsets["NtTraceControl","ULONG"] = 1+offsetof( struct NtTraceControl_AS_TYPES,ULONG );
 offsets["NtTraceControl","PVOID"] = 1+offsetof( struct NtTraceControl_AS_TYPES,PVOID );
 offsets["NtTraceControl","ULONG"] = 1+offsetof( struct NtTraceControl_AS_TYPES,ULONG1);
 offsets["NtTraceControl","PVOID"] = 1+offsetof( struct NtTraceControl_AS_TYPES,PVOID1);
 offsets["NtTraceControl","ULONG"] = 1+offsetof( struct NtTraceControl_AS_TYPES,ULONG2);
 offsets["NtTraceControl","ULONG"] = 1+offsetof( struct NtTraceControl_AS_TYPES,ULONG3);
 offsets["NtTraceControl","NTSTATUS"] = 1+offsetof( struct NtTraceControl_AS_TYPES,NTSTATUS );
 offsets["NtTraceEvent",""] = offsetof( union all , NtTraceEvent );
 offsets["NtTraceEvent","HANDLE"] = 1+offsetof( struct NtTraceEvent_AS_TYPES,HANDLE );
 offsets["NtTraceEvent","ULONG"] = 1+offsetof( struct NtTraceEvent_AS_TYPES,ULONG );
 offsets["NtTraceEvent","ULONG"] = 1+offsetof( struct NtTraceEvent_AS_TYPES,ULONG1);
 offsets["NtTraceEvent","PVOID"] = 1+offsetof( struct NtTraceEvent_AS_TYPES,PVOID );
 offsets["NtTraceEvent","NTSTATUS"] = 1+offsetof( struct NtTraceEvent_AS_TYPES,NTSTATUS );
 offsets["NtTranslateFilePath",""] = offsetof( union all , NtTranslateFilePath );
 offsets["NtTranslateFilePath","FILE_PATH"] = 1+offsetof( struct NtTranslateFilePath_AS_TYPES,FILE_PATH );
 offsets["NtTranslateFilePath","ULONG"] = 1+offsetof( struct NtTranslateFilePath_AS_TYPES,ULONG );
 offsets["NtTranslateFilePath","FILE_PATH"] = 1+offsetof( struct NtTranslateFilePath_AS_TYPES,FILE_PATH1);
 offsets["NtTranslateFilePath","ULONG"] = 1+offsetof( struct NtTranslateFilePath_AS_TYPES,ULONG1);
 offsets["NtTranslateFilePath","NTSTATUS"] = 1+offsetof( struct NtTranslateFilePath_AS_TYPES,NTSTATUS );
 offsets["NtUnloadDriver",""] = offsetof( union all , NtUnloadDriver );
 offsets["NtUnloadDriver","UNICODE_STRING"] = 1+offsetof( struct NtUnloadDriver_AS_TYPES,UNICODE_STRING );
 offsets["NtUnloadDriver","NTSTATUS"] = 1+offsetof( struct NtUnloadDriver_AS_TYPES,NTSTATUS );
 offsets["NtUnloadKey",""] = offsetof( union all , NtUnloadKey );
 offsets["NtUnloadKey","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtUnloadKey_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtUnloadKey","NTSTATUS"] = 1+offsetof( struct NtUnloadKey_AS_TYPES,NTSTATUS );
 offsets["NtUnloadKey2",""] = offsetof( union all , NtUnloadKey2 );
 offsets["NtUnloadKey2","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtUnloadKey2_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtUnloadKey2","ULONG"] = 1+offsetof( struct NtUnloadKey2_AS_TYPES,ULONG );
 offsets["NtUnloadKey2","NTSTATUS"] = 1+offsetof( struct NtUnloadKey2_AS_TYPES,NTSTATUS );
 offsets["NtUnloadKeyEx",""] = offsetof( union all , NtUnloadKeyEx );
 offsets["NtUnloadKeyEx","OBJECT_ATTRIBUTES"] = 1+offsetof( struct NtUnloadKeyEx_AS_TYPES,OBJECT_ATTRIBUTES );
 offsets["NtUnloadKeyEx","HANDLE"] = 1+offsetof( struct NtUnloadKeyEx_AS_TYPES,HANDLE );
 offsets["NtUnloadKeyEx","NTSTATUS"] = 1+offsetof( struct NtUnloadKeyEx_AS_TYPES,NTSTATUS );
 offsets["NtUnlockFile",""] = offsetof( union all , NtUnlockFile );
 offsets["NtUnlockFile","HANDLE"] = 1+offsetof( struct NtUnlockFile_AS_TYPES,HANDLE );
 offsets["NtUnlockFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtUnlockFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtUnlockFile","LARGE_INTEGER"] = 1+offsetof( struct NtUnlockFile_AS_TYPES,LARGE_INTEGER );
 offsets["NtUnlockFile","LARGE_INTEGER"] = 1+offsetof( struct NtUnlockFile_AS_TYPES,LARGE_INTEGER1);
 offsets["NtUnlockFile","ULONG"] = 1+offsetof( struct NtUnlockFile_AS_TYPES,ULONG );
 offsets["NtUnlockFile","NTSTATUS"] = 1+offsetof( struct NtUnlockFile_AS_TYPES,NTSTATUS );
 offsets["NtUnlockVirtualMemory",""] = offsetof( union all , NtUnlockVirtualMemory );
 offsets["NtUnlockVirtualMemory","HANDLE"] = 1+offsetof( struct NtUnlockVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtUnlockVirtualMemory","PVOID"] = 1+offsetof( struct NtUnlockVirtualMemory_AS_TYPES,PVOID );
 offsets["NtUnlockVirtualMemory","SIZE_T"] = 1+offsetof( struct NtUnlockVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtUnlockVirtualMemory","ULONG"] = 1+offsetof( struct NtUnlockVirtualMemory_AS_TYPES,ULONG );
 offsets["NtUnlockVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtUnlockVirtualMemory_AS_TYPES,NTSTATUS );
 offsets["NtUnmapViewOfSection",""] = offsetof( union all , NtUnmapViewOfSection );
 offsets["NtUnmapViewOfSection","HANDLE"] = 1+offsetof( struct NtUnmapViewOfSection_AS_TYPES,HANDLE );
 offsets["NtUnmapViewOfSection","PVOID"] = 1+offsetof( struct NtUnmapViewOfSection_AS_TYPES,PVOID );
 offsets["NtUnmapViewOfSection","NTSTATUS"] = 1+offsetof( struct NtUnmapViewOfSection_AS_TYPES,NTSTATUS );
 offsets["NtUnmapViewOfSectionEx",""] = offsetof( union all , NtUnmapViewOfSectionEx );
 offsets["NtUnmapViewOfSectionEx","HANDLE"] = 1+offsetof( struct NtUnmapViewOfSectionEx_AS_TYPES,HANDLE );
 offsets["NtUnmapViewOfSectionEx","PVOID"] = 1+offsetof( struct NtUnmapViewOfSectionEx_AS_TYPES,PVOID );
 offsets["NtUnmapViewOfSectionEx","ULONG"] = 1+offsetof( struct NtUnmapViewOfSectionEx_AS_TYPES,ULONG );
 offsets["NtUnmapViewOfSectionEx","NTSTATUS"] = 1+offsetof( struct NtUnmapViewOfSectionEx_AS_TYPES,NTSTATUS );
 offsets["NtUnsubscribeWnfStateChange",""] = offsetof( union all , NtUnsubscribeWnfStateChange );
 offsets["NtUnsubscribeWnfStateChange","WNF_STATE_NAME"] = 1+offsetof( struct NtUnsubscribeWnfStateChange_AS_TYPES,WNF_STATE_NAME );
 offsets["NtUnsubscribeWnfStateChange","NTSTATUS"] = 1+offsetof( struct NtUnsubscribeWnfStateChange_AS_TYPES,NTSTATUS );
 offsets["NtUpdateWnfStateData",""] = offsetof( union all , NtUpdateWnfStateData );
 offsets["NtUpdateWnfStateData","WNF_STATE_NAME"] = 1+offsetof( struct NtUpdateWnfStateData_AS_TYPES,WNF_STATE_NAME );
 offsets["NtUpdateWnfStateData","PVOID"] = 1+offsetof( struct NtUpdateWnfStateData_AS_TYPES,PVOID );
 offsets["NtUpdateWnfStateData","ULONG"] = 1+offsetof( struct NtUpdateWnfStateData_AS_TYPES,ULONG );
 offsets["NtUpdateWnfStateData","WNF_TYPE_ID"] = 1+offsetof( struct NtUpdateWnfStateData_AS_TYPES,WNF_TYPE_ID );
 offsets["NtUpdateWnfStateData","PVOID"] = 1+offsetof( struct NtUpdateWnfStateData_AS_TYPES,PVOID1);
 offsets["NtUpdateWnfStateData","WNF_CHANGE_STAMP"] = 1+offsetof( struct NtUpdateWnfStateData_AS_TYPES,WNF_CHANGE_STAMP );
 offsets["NtUpdateWnfStateData","LOGICAL"] = 1+offsetof( struct NtUpdateWnfStateData_AS_TYPES,LOGICAL );
 offsets["NtUpdateWnfStateData","NTSTATUS"] = 1+offsetof( struct NtUpdateWnfStateData_AS_TYPES,NTSTATUS );
 offsets["NtWaitForAlertByThreadId",""] = offsetof( union all , NtWaitForAlertByThreadId );
 offsets["NtWaitForAlertByThreadId","PVOID"] = 1+offsetof( struct NtWaitForAlertByThreadId_AS_TYPES,PVOID );
 offsets["NtWaitForAlertByThreadId","LARGE_INTEGER"] = 1+offsetof( struct NtWaitForAlertByThreadId_AS_TYPES,LARGE_INTEGER );
 offsets["NtWaitForAlertByThreadId","NTSTATUS"] = 1+offsetof( struct NtWaitForAlertByThreadId_AS_TYPES,NTSTATUS );
 offsets["NtWaitForDebugEvent",""] = offsetof( union all , NtWaitForDebugEvent );
 offsets["NtWaitForDebugEvent","PVOID"] = 1+offsetof( struct NtWaitForDebugEvent_AS_TYPES,PVOID );
 offsets["NtWaitForKeyedEvent",""] = offsetof( union all , NtWaitForKeyedEvent );
 offsets["NtWaitForKeyedEvent","HANDLE"] = 1+offsetof( struct NtWaitForKeyedEvent_AS_TYPES,HANDLE );
 offsets["NtWaitForKeyedEvent","PVOID"] = 1+offsetof( struct NtWaitForKeyedEvent_AS_TYPES,PVOID );
 offsets["NtWaitForKeyedEvent","BOOLEAN"] = 1+offsetof( struct NtWaitForKeyedEvent_AS_TYPES,BOOLEAN );
 offsets["NtWaitForKeyedEvent","LARGE_INTEGER"] = 1+offsetof( struct NtWaitForKeyedEvent_AS_TYPES,LARGE_INTEGER );
 offsets["NtWaitForKeyedEvent","NTSTATUS"] = 1+offsetof( struct NtWaitForKeyedEvent_AS_TYPES,NTSTATUS );
 offsets["NtWaitForMultipleObjects",""] = offsetof( union all , NtWaitForMultipleObjects );
 offsets["NtWaitForMultipleObjects","ULONG"] = 1+offsetof( struct NtWaitForMultipleObjects_AS_TYPES,ULONG );
 offsets["NtWaitForMultipleObjects","PHANDLE"] = 1+offsetof( struct NtWaitForMultipleObjects_AS_TYPES,PHANDLE );
 offsets["NtWaitForMultipleObjects","WAIT_TYPE"] = 1+offsetof( struct NtWaitForMultipleObjects_AS_TYPES,WAIT_TYPE );
 offsets["NtWaitForMultipleObjects","BOOLEAN"] = 1+offsetof( struct NtWaitForMultipleObjects_AS_TYPES,BOOLEAN );
 offsets["NtWaitForMultipleObjects","LARGE_INTEGER"] = 1+offsetof( struct NtWaitForMultipleObjects_AS_TYPES,LARGE_INTEGER );
 offsets["NtWaitForMultipleObjects","NTSTATUS"] = 1+offsetof( struct NtWaitForMultipleObjects_AS_TYPES,NTSTATUS );
 offsets["NtWaitForSingleObject",""] = offsetof( union all , NtWaitForSingleObject );
 offsets["NtWaitForSingleObject","HANDLE"] = 1+offsetof( struct NtWaitForSingleObject_AS_TYPES,HANDLE );
 offsets["NtWaitForSingleObject","BOOLEAN"] = 1+offsetof( struct NtWaitForSingleObject_AS_TYPES,BOOLEAN );
 offsets["NtWaitForSingleObject","LARGE_INTEGER"] = 1+offsetof( struct NtWaitForSingleObject_AS_TYPES,LARGE_INTEGER );
 offsets["NtWaitForSingleObject","NTSTATUS"] = 1+offsetof( struct NtWaitForSingleObject_AS_TYPES,NTSTATUS );
 offsets["NtWaitHighEventPair",""] = offsetof( union all , NtWaitHighEventPair );
 offsets["NtWaitHighEventPair","HANDLE"] = 1+offsetof( struct NtWaitHighEventPair_AS_TYPES,HANDLE );
 offsets["NtWaitHighEventPair","NTSTATUS"] = 1+offsetof( struct NtWaitHighEventPair_AS_TYPES,NTSTATUS );
 offsets["NtWaitLowEventPair",""] = offsetof( union all , NtWaitLowEventPair );
 offsets["NtWaitLowEventPair","HANDLE"] = 1+offsetof( struct NtWaitLowEventPair_AS_TYPES,HANDLE );
 offsets["NtWaitLowEventPair","NTSTATUS"] = 1+offsetof( struct NtWaitLowEventPair_AS_TYPES,NTSTATUS );
 offsets["NtWorkerFactoryWorkerReady",""] = offsetof( union all , NtWorkerFactoryWorkerReady );
 offsets["NtWorkerFactoryWorkerReady","HANDLE"] = 1+offsetof( struct NtWorkerFactoryWorkerReady_AS_TYPES,HANDLE );
 offsets["NtWorkerFactoryWorkerReady","NTSTATUS"] = 1+offsetof( struct NtWorkerFactoryWorkerReady_AS_TYPES,NTSTATUS );
 offsets["NtWriteFile",""] = offsetof( union all , NtWriteFile );
 offsets["NtWriteFile","HANDLE"] = 1+offsetof( struct NtWriteFile_AS_TYPES,HANDLE );
 offsets["NtWriteFile","HANDLE"] = 1+offsetof( struct NtWriteFile_AS_TYPES,HANDLE1);
 offsets["NtWriteFile","PIO_APC_ROUTINE"] = 1+offsetof( struct NtWriteFile_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtWriteFile","PVOID"] = 1+offsetof( struct NtWriteFile_AS_TYPES,PVOID );
 offsets["NtWriteFile","IO_STATUS_BLOCK"] = 1+offsetof( struct NtWriteFile_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtWriteFile","INBUF"] = 1+offsetof( struct NtWriteFile_AS_TYPES,INBUF );
 offsets["NtWriteFile","INLEN"] = 1+offsetof( struct NtWriteFile_AS_TYPES,INLEN );
 offsets["NtWriteFile","LARGE_INTEGER"] = 1+offsetof( struct NtWriteFile_AS_TYPES,LARGE_INTEGER );
 offsets["NtWriteFile","ULONG"] = 1+offsetof( struct NtWriteFile_AS_TYPES,ULONG );
 offsets["NtWriteFile","NTSTATUS"] = 1+offsetof( struct NtWriteFile_AS_TYPES,NTSTATUS );
 offsets["NtWriteFileGather",""] = offsetof( union all , NtWriteFileGather );
 offsets["NtWriteFileGather","HANDLE"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,HANDLE );
 offsets["NtWriteFileGather","HANDLE"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,HANDLE1);
 offsets["NtWriteFileGather","PIO_APC_ROUTINE"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,PIO_APC_ROUTINE );
 offsets["NtWriteFileGather","PVOID"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,PVOID );
 offsets["NtWriteFileGather","IO_STATUS_BLOCK"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,IO_STATUS_BLOCK );
 offsets["NtWriteFileGather","FILE_SEGMENT_ELEMENT"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,FILE_SEGMENT_ELEMENT );
 offsets["NtWriteFileGather","ULONG"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,ULONG );
 offsets["NtWriteFileGather","LARGE_INTEGER"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,LARGE_INTEGER );
 offsets["NtWriteFileGather","ULONG"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,ULONG1);
 offsets["NtWriteFileGather","NTSTATUS"] = 1+offsetof( struct NtWriteFileGather_AS_TYPES,NTSTATUS );
 offsets["NtWriteRequestData",""] = offsetof( union all , NtWriteRequestData );
 offsets["NtWriteRequestData","HANDLE"] = 1+offsetof( struct NtWriteRequestData_AS_TYPES,HANDLE );
 offsets["NtWriteRequestData","PORT_MESSAGE"] = 1+offsetof( struct NtWriteRequestData_AS_TYPES,PORT_MESSAGE );
 offsets["NtWriteRequestData","ULONG"] = 1+offsetof( struct NtWriteRequestData_AS_TYPES,ULONG );
 offsets["NtWriteRequestData","PVOID"] = 1+offsetof( struct NtWriteRequestData_AS_TYPES,PVOID );
 offsets["NtWriteRequestData","SIZE_T"] = 1+offsetof( struct NtWriteRequestData_AS_TYPES,SIZE_T );
 offsets["NtWriteRequestData","SIZE_T"] = 1+offsetof( struct NtWriteRequestData_AS_TYPES,SIZE_T1);
 offsets["NtWriteRequestData","NTSTATUS"] = 1+offsetof( struct NtWriteRequestData_AS_TYPES,NTSTATUS );
 offsets["NtWriteVirtualMemory",""] = offsetof( union all , NtWriteVirtualMemory );
 offsets["NtWriteVirtualMemory","HANDLE"] = 1+offsetof( struct NtWriteVirtualMemory_AS_TYPES,HANDLE );
 offsets["NtWriteVirtualMemory","PVOID"] = 1+offsetof( struct NtWriteVirtualMemory_AS_TYPES,PVOID );
 offsets["NtWriteVirtualMemory","PVOID"] = 1+offsetof( struct NtWriteVirtualMemory_AS_TYPES,PVOID1);
 offsets["NtWriteVirtualMemory","SIZE_T"] = 1+offsetof( struct NtWriteVirtualMemory_AS_TYPES,SIZE_T );
 offsets["NtWriteVirtualMemory","SIZE_T"] = 1+offsetof( struct NtWriteVirtualMemory_AS_TYPES,SIZE_T1);
 offsets["NtWriteVirtualMemory","NTSTATUS"] = 1+offsetof( struct NtWriteVirtualMemory_AS_TYPES,NTSTATUS );

}

self syscalls syscallMap[ nt`_ETHREAD* ];
inline syscalls S = self->syscallMap[ (void*) curthread ];
inline void* GETOBJ[ string obj ] = offsets[ probefunc, obj ] ? (void*) (((uintptr_t)&S.all + offsets[ probefunc, obj ]-1)) : (void*)0;
inline INBUF GET_PINBUF[ uint64_t addr ] = *(INBUF*)COPY_FROM_OFSIZE_ASSIZE[ (void*)addr, *(INLEN*) GETOBJ[ "INLEN" ], sizeof(INBUF) ];
inline OUTBUF GET_POUTBUF[ uint64_t addr ] = *(OUTBUF*)COPY_FROM_OFSIZE_ASSIZE[ (void*)addr, *(OUTLEN*)GETOBJ[ "OUTLEN" ], sizeof(OUTBUF) ];
inline uint8_t static_trigger_conditions = ( pid != $pid && (tolower(execname)  != "conhost.exe" )); 
inline uint8_t trigger_conditions = static_trigger_conditions && ( (a1int || strlen(a1str)) ? ( !a1int ? (tolower(execname) == tolower( a1str)) : ( pid == a1int )) : 1 );
syscall::*:return/ trigger_conditions && S.syscallEntered /
{
    S.caller = (void*)caller;
    S.ETHREAD = (PETHREAD)ACTIVE_THREAD;
    S.EPROCESS = ACTIVE_PROCESS;
    S.imageFile = execimage;
    S.pid = pid;
    S.tid = tid;
    S.impersonating = ACTIVETHREAD_IMPERSONATING;
    S.token = ACTIVETOKEN;
    S.tokenType = !ACTIVETOKEN ? 0 : ACTIVETOKEN->type;
    S.integrity = TOKEN_INTEGRIY;
    S.PreviousMode = ((struct nt`_KTHREAD*)ACTIVE_THREAD)->PreviousMode;
   *(NTSTATUS*)GETOBJ["NTSTATUS"] = (NTSTATUS)arg0;
} 
syscall::NtDeviceIoControlFile:entry / trigger_conditions && !S.syscallEntered /{self->trace=1;S.syscallEntered = 1;*(struct NtDeviceIoControlFile*)&S.all.NtDeviceIoControlFile= *(struct NtDeviceIoControlFile*)alloca(sizeof(union all)); S.all.NtDeviceIoControlFile.NUMERIC.C0 = GET_HANDLE[arg0]; S.all.NtDeviceIoControlFile.NUMERIC.C1 = GET_HANDLE[arg1]; S.all.NtDeviceIoControlFile.NUMERIC.C2 = (PIO_APC_ROUTINE)arg2;S.all.NtDeviceIoControlFile.NUMERIC.C3 = (PVOID)arg3;toResolve[ (void*) curthread,4 ] = (void*)arg4 ; S.all.NtDeviceIoControlFile.NUMERIC.C5 = (IO_CTRL_CODE)arg5;S.all.NtDeviceIoControlFile.NUMERIC.C7 = (INLEN)arg7;S.all.NtDeviceIoControlFile.NUMERIC.C6 = GET_PINBUF[arg6] ;toResolve[ (void*) curthread,8 ] = (void*)arg8 ; S.all.NtDeviceIoControlFile.NUMERIC.C9 = (OUTLEN)arg9; }
syscall::NtDeviceIoControlFile:return/ trigger_conditions && S.syscallEntered /{self->trace=0; S.syscallEntered = 0; S.all.NtDeviceIoControlFile.NUMERIC.C4 = *( IO_STATUS_BLOCK* )GET[ toResolve[( void*) curthread,4 ],sizeof(IO_STATUS_BLOCK)];S.all.NtDeviceIoControlFile.NUMERIC.C8 = GET_POUTBUF[ (uint64_t)toResolve[( void*) curthread,8 ]]; ; }
 
syscall::NtFsControlFile:entry / trigger_conditions && !S.syscallEntered /{self->trace=1;S.syscallEntered = 1;*(struct NtFsControlFile*)&S.all.NtFsControlFile= *(struct NtFsControlFile*)alloca(sizeof(union all)); S.all.NtFsControlFile.NUMERIC.C0 = GET_HANDLE[arg0]; S.all.NtFsControlFile.NUMERIC.C1 = GET_HANDLE[arg1]; S.all.NtFsControlFile.NUMERIC.C2 = (PIO_APC_ROUTINE)arg2;S.all.NtFsControlFile.NUMERIC.C3 = (PVOID)arg3;toResolve[ (void*) curthread,4 ] = (void*)arg4 ; S.all.NtFsControlFile.NUMERIC.C5 = (IO_CTRL_CODE)arg5; S.all.NtFsControlFile.NUMERIC.C7 = (INLEN)arg7;S.all.NtFsControlFile.NUMERIC.C6 = *(INBUF*)GET[(void*)arg6,sizeof(INBUF)];toResolve[ (void*) curthread,8 ] = (void*)arg8 ; S.all.NtFsControlFile.NUMERIC.C9 = (OUTLEN)arg9; }
syscall::NtFsControlFile:return/ trigger_conditions && S.syscallEntered /{ self->trace=0;S.syscallEntered = 0; S.all.NtFsControlFile.NUMERIC.C4 = *( IO_STATUS_BLOCK* )GET[ toResolve[( void*) curthread,4 ],sizeof(IO_STATUS_BLOCK)];S.all.NtFsControlFile.NUMERIC.C8 = GET_POUTBUF[ (uint64_t)toResolve[( void*) curthread,8 ]]; ; }

syscall::NtCreateFile:entry / trigger_conditions && !S.syscallEntered /{self->trace=1;S.syscallEntered = 1;*(struct NtCreateFile*)&S.all.NtCreateFile= *(struct NtCreateFile*)alloca(sizeof(union all)); toResolve[ (void*) curthread,0 ] = (void*)arg0 ; S.all.NtCreateFile.NUMERIC.C1 = GET_ACCESS_MASK_FILE[arg1]; S.all.NtCreateFile.NUMERIC.C2 = GET_POBJECT_ATTRIBUTES[arg2] ;toResolve[ (void*) curthread,3 ] = (void*)arg3 ; S.all.NtCreateFile.NUMERIC.C4 = *(LARGE_INTEGER*)GET[(void*)arg4,sizeof(LARGE_INTEGER)]; S.all.NtCreateFile.NUMERIC.C5 = GET_FILE_ATTRIBUTES[arg5]; S.all.NtCreateFile.NUMERIC.C6 = GET_FILE_SHARE_ACCESS[arg6]; S.all.NtCreateFile.NUMERIC.C7 = (FILE_DISPOSITION)arg7;S.all.NtCreateFile.NUMERIC.C8 = GET_FILE_OPTIONS[arg8]; S.all.NtCreateFile.NUMERIC.C9 = (PVOID)arg9;S.all.NtCreateFile.NUMERIC.C10 = (ULONG) ( (uint64_t) args[10]) ; }
syscall::NtCreateFile:return/ trigger_conditions && S.syscallEntered /{ self->trace=0; S.syscallEntered = 0; S.all.NtCreateFile.NUMERIC.C0 = *( PHANDLE* )GET[ toResolve[( void*) curthread,0 ],sizeof(PHANDLE)];S.all.NtCreateFile.NUMERIC.C3 = *( IO_STATUS_BLOCK* )GET[ toResolve[( void*) curthread,3 ],sizeof(IO_STATUS_BLOCK)]; ; }

fbt:fltmgr.sys:*:entry/self->trace/{printf("%s %s %x %x %x %x \n",probemod,probefunc,arg1,arg2,arg3,arg4);}
fbt:mountmgr.sys:*:entry/self->trace/{printf("%s %s %x %x %x %x \n",probemod,probefunc,arg1,arg2,arg3,arg4);}
fbt:fileinfo.sys:*:entry/self->trace/{printf("%s %s %x %x %x %x \n",probemod,probefunc,arg1,arg2,arg3,arg4);}
fbt:wof.sys:*:entry/self->trace/{printf("%s %s %x %x %x %x \n",probemod,probefunc,arg1,arg2,arg3,arg4);}
fbt:bindflt.sys:*:entry/self->trace/{printf("%s %s %x %x %x %x \n",probemod,probefunc,arg1,arg2,arg3,arg4);}
fbt:wcifs.sys:*:entry/self->trace/{printf("%s %s %x %x %x %x \n",probemod,probefunc,arg1,arg2,arg3,arg4);}


inline string slashPath[ string s1 ] = strjoin( s1, ( ( s1 != "" && s1[strlen(s1)] != '\\') ? "\\" : "" ) );
inline string pathCat[ string s1, string s2 ] = (s2 == "") ? s1 : (s1 == "") ? s2 : strjoin( slashPath[s1], s2 );
syscall::*:return/ trigger_conditions && GETOBJ["PHANDLE"] && GETOBJ["OBJECT_ATTRIBUTES"] && !*(NTSTATUS*)GETOBJ["NTSTATUS"] && ((OBJECT_ATTRIBUTES*)GETOBJ["OBJECT_ATTRIBUTES"])->ObjectName.Length /{
   *(string*)&HandleCreatedBy[ pid, *(void**)GETOBJ["PHANDLE"] ].chars[0] = pathCat[ &((OBJECT_ATTRIBUTES*)GETOBJ["OBJECT_ATTRIBUTES"])->RootDirectory.name.chars[0] ,
                                                                       &((OBJECT_ATTRIBUTES*)GETOBJ["OBJECT_ATTRIBUTES"])->ObjectName.Buffer.chars[0]
                                                                    ];
}
 
syscall::NtDeviceIoControlFile:return/ trigger_conditions && !S.syscallEntered /{ print( *((struct NtDeviceIoControlFileCALL*) &S.syscallEntered) ); } 
syscall::NtFsControlFile:return/ trigger_conditions && !S.syscallEntered /{ print( *((struct NtFsControlFileCALL*) &S.syscallEntered) ); } 
syscall::NtCreateFile:return/ trigger_conditions && !S.syscallEntered /{ print( *((struct NtCreateFileCALL*) &S.syscallEntered) ); }