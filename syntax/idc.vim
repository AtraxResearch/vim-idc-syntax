" Vim syntax file
" Language: IDA-C
" Maintainer: Atrax Research
" Latest Revision: 18 December 2016

if exists("b:current_syntax")
  finish
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common IDC functions
syn keyword idcStdFunction	hasValue byteValue
syn keyword idcStdFunction	isCode isData isTail isUnknown isHead isFlow isVar
syn keyword idcStdFunction	isExtra isRef hasName isDefArg0 isDefArg1 isDec0
syn keyword idcStdFunction	isDec1 isHex0 isHex1 isOct0 isOct1 isBin0 isBin1
syn keyword idcStdFunction	isOff0 isOff1 isChar0 isChar1 isSeg0 isSeg1 isEnum0
syn keyword idcStdFunction	isEnum1 isFop0 isFop1 isStroff0 isStroff1 isStkvar0
syn keyword idcStdFunction	isStkvar1 isFloat0 isFloat1 isCustFmt0 isCustFmt1
syn keyword idcStdFunction	isByte isWord isDwrd isQwrd isOwrd isYwrd isTbyt
syn keyword idcStdFunction	isFloat isDouble isPackReal isASCII isStruct isAlign
syn keyword idcStdFunction	is3byte isCustom IsString IsLong IsFloat IsObject
syn keyword idcStdFunction	IsFunc IsPvoid IsInt64
syn keyword idcStdFunction	sprintf substr strstr strlen strfill trim xtol atoa
syn keyword idcStdFunction	ltoa atol ord rotate_left rotate_dword rotate_word
syn keyword idcStdFunction	rotate_byte AddHotkey DelHotkey Jump
syn keyword idcStdFunction	Wait CompileEx ExecIDC Eval SaveBase ValidateNames
syn keyword idcStdFunction	Exit Exec Sleep RunPlugin ApplySig DeleteAll MakeCode
syn keyword idcStdFunction	AnalyzeArea MakeNameEx MakeComm MakeRptCmt MakeArray
syn keyword idcStdFunction	MakeStr MakeData MakeStructEx MakeAlign MakeLocal
syn keyword idcStdFunction	MakeUnkn MakeUnknown SetArrayFormat OpBinary OpOctal
syn keyword idcStdFunction	OpDecimal OpHex OpChr OpOff OpOffEx OpSeg OpNumber
syn keyword idcStdFunction	OpFloat OpAlt OpSign OpNot OpEnumEx OpStroffEx
syn keyword idcStdFunction	OpStkvar OpHigh
syn keyword idcStdFunction	GetCustomDataType GetCustomDataFormat MakeVar
syn keyword idcStdFunction	ExtLinA ExtLinB DelExtLnA DelExtLnB
syn keyword idcStdFunction	SetManualInsn GetManualInsn PatchDbgByte
syn keyword idcStdFunction	PatchByte PatchWord PatchDword SetFlags
syn keyword idcStdFunction	SetRegEx AutoMark2 AutoMark GenerateFile
syn keyword idcStdFunction	GenFuncGdl GetIdaDirectory GetInputFile
syn keyword idcStdFunction	SetInputFilePath GetIdbPath GetInputMD5
syn keyword idcStdFunction	GetFlags IdbByte GetManyBytes Byte
syn keyword idcStdFunction	DbgByte GetOriginalByte Word DbgWord
syn keyword idcStdFunction	Dword DbgDword Qword DbgQword DbgRead
syn keyword idcStdFunction	DbgWrite GetFloat GetDouble LocByName
syn keyword idcStdFunction	LocByNameEx SegByBase ScreenEA
syn keyword idcStdFunction	cessUiAction GetCurrentLine SelStart
syn keyword idcStdFunction	SelEnd GetReg NextAddr PrevAddr
syn keyword idcStdFunction	NextHead PrevHead NextNotTail
syn keyword idcStdFunction	PrevNotTail ItemHead ItemEnd ItemSize
syn keyword idcStdFunction	NameEx GetTrueNameEx Demangle GetDisasm
syn keyword idcStdFunction	GetDisasmEx GetMnem GetOpnd GetOpType
syn keyword idcStdFunction	GetOperandValue DecodeInstructio LineA
syn keyword idcStdFunction	LineB CommentEx AltOp etString
syn keyword idcStdFunction	StringType FindVoid FindCode FindData
syn keyword idcStdFunction	FindUnexplored FindExplored
syn keyword idcStdFunction	FindImmediate FindText FindBinary
syn keyword idcStdFunction	ChangeConfig GetLongPrm GetShortPrm
syn keyword idcStdFunction	GetCharPrm SetLongPrm SetShortPrm
syn keyword idcStdFunction	SetCharPrm SetPrcsr SetTargetAssembler
syn keyword idcStdFunction	Batch AskStr AskFile AskAddr AskLong
syn keyword idcStdFunction	AskSeg AskIdent AskYN Message print
syn keyword idcStdFunction	Warning Fatal SetStatus Refresh
syn keyword idcStdFunction	RefreshLists FindSelector SetSelector
syn keyword idcStdFunction	DelSelector FirstSeg NextSeg SegStart
syn keyword idcStdFunction	SegEnd SegName AddSegEx DelSeg
syn keyword idcStdFunction	SetSegBounds RenameSeg SetSegClass
syn keyword idcStdFunction	SegAlign SegComb SetSegAddressing
syn keyword idcStdFunction	SegByName SetSegDefReg SetSegmentType
syn keyword idcStdFunction	GetSegmentAttr SetSegmentAttr
syn keyword idcStdFunction	MoveSegm RebaseProgram SetStorageType
syn keyword idcStdFunction	AddCodeXref DelCodeXref Rfirst Rnext
syn keyword idcStdFunction	RfirstB RnextB Rfirst0 Rnext0 RfirstB0
syn keyword idcStdFunction	RnextB0 add_dref del_dref Dfirst Dnext
syn keyword idcStdFunction	DfirstB DnextB XrefType fopen fclose
syn keyword idcStdFunction	filelength fseek ftell loadfile savefile
syn keyword idcStdFunction	fgetc fputc fprintf readshort readlong
syn keyword idcStdFunction	writeshort writelong readstr writestr
syn keyword idcStdFunction	rename unlink mkdir MakeFunction
syn keyword idcStdFunction	DelFunction SetFunctionEnd NextFunction
syn keyword idcStdFunction	PrevFunction GetFunctionAttr
syn keyword idcStdFunction	SetFunctionAttr GetFunctionFlags
syn keyword idcStdFunction	SetFunctionFlags GetFunctionName
syn keyword idcStdFunction	GetFunctionCmt SetFunctionCmt
syn keyword idcStdFunction	ChooseFunction GetFuncOffset
syn keyword idcStdFunction	FindFuncEnd GetFrame GetFrameLvarSize
syn keyword idcStdFunction	GetFrameRegsSize GetFrameArgsSize
syn keyword idcStdFunction	GetFrameSize MakeFrame GetSpd GetSpDiff
syn keyword idcStdFunction	SetSpDiff AddAutoStkPnt2 DelStkPnt GetMinSpd
syn keyword idcStdFunction	RecalcSpd GetFchunkAttr SetFchunkAttr
syn keyword idcStdFunction	GetFchunkReferer NextFchunk PrevFchunk
syn keyword idcStdFunction	AppendFchunk RemoveFchunk SetFchunkOwner
syn keyword idcStdFunction	FirstFuncFchunk NextFuncFchunk
syn keyword idcStdFunction	GetEntryPointQty AddEntryPoint
syn keyword idcStdFunction	GetEntryOrdinal GetEntryPoint GetEntryName
syn keyword idcStdFunction	RenameEntryPoint GetNextFixupEA GetPrevFixupEA
syn keyword idcStdFunction	GetFixupTgtType GetFixupTgtSel GetFixupTgtOff
syn keyword idcStdFunction	GetFixupTgtDispl SetFixup DelFixup MarkPosition
syn keyword idcStdFunction	GetMarkedPos GetMarkComment BeginTypeUpdating
syn keyword idcStdFunction	EndTypeUpdating GetStrucQty GetFirstStrucIdx
syn keyword idcStdFunction	GetLastStrucIdx GetNextStrucIdx GetPrevStrucIdx
syn keyword idcStdFunction	GetStrucIdx GetStrucId GetStrucIdByName
syn keyword idcStdFunction	GetStrucName GetStrucComment GetStrucSize
syn keyword idcStdFunction	GetMemberQty GetMemberId GetStrucPrevOff
syn keyword idcStdFunction	GetStrucNextOff GetFirstMember GetLastMember
syn keyword idcStdFunction	GetMemberOffset GetMemberName GetMemberComment
syn keyword idcStdFunction	GetMemberSize GetMemberFlag GetMemberStrId
syn keyword idcStdFunction	IsUnion AddStrucEx DelStruc SetStrucIdx
syn keyword idcStdFunction	SetStrucName SetStrucComment AddStrucMember
syn keyword idcStdFunction	DelStrucMember SetMemberName SetMemberType
syn keyword idcStdFunction	SetMemberComment GetEnumQty GetnEnum GetEnumIdx
syn keyword idcStdFunction	GetEnum GetEnumName GetEnumCmt GetEnumSize
syn keyword idcStdFunction	GetEnumWidth GetEnumFlag GetConstByName
syn keyword idcStdFunction	GetConstValue GetConstBmask GetConstEnum
syn keyword idcStdFunction	GetConstEx GetFirstBmask GetLastBmask
syn keyword idcStdFunction	GetNextBmask GetPrevBmask GetBmaskName
syn keyword idcStdFunction	GetBmaskCmt SetBmaskName SetBmaskCmt
syn keyword idcStdFunction	GetFirstConst GetLastConst GetNextConst
syn keyword idcStdFunction	GetPrevConst GetConstName GetConstCmt
syn keyword idcStdFunction	AddEnum DelEnum SetEnumIdx SetEnumName
syn keyword idcStdFunction	SetEnumCmt SetEnumFlag SetEnumBf SetEnumWidth
syn keyword idcStdFunction	IsBitfield AddConstEx DelConstEx SetConstName
syn keyword idcStdFunction	SetConstCmt CreateArray GetArrayId RenameArray
syn keyword idcStdFunction	DeleteArray SetArrayLong
syn keyword idcStdFunction	SetArrayString DelArrayElement GetFirstIndex
syn keyword idcStdFunction	GetLastIndex GetNextIndex GetPrevIndex SetHashLong
syn keyword idcStdFunction	SetHashString GetHashLong GetHashString DelHashElement
syn keyword idcStdFunction	GetFirstHashKey GetNextHashKey GetLastHashKey
syn keyword idcStdFunction	GetPrevHashKey GetSourceFile DelSourceFile
syn keyword idcStdFunction	SetLineNumber GetLineNumber DelLineNumber LoadTil
syn keyword idcStdFunction	Til2Idb GetType GetTinfo GetTinfo string GuessType
syn keyword idcStdFunction	ApplyType SetType ParseType sizeof GetMaxLocalType
syn keyword idcStdFunction	SetLocalType GetLocalTinfo GetLocalTypeName HideArea
syn keyword idcStdFunction	DelHiddenArea LoadDebugger StartDebugger StopDebugger
syn keyword idcStdFunction	PauseProcess GetProcessQty GetProcessPid
syn keyword idcStdFunction	GetProcessName AttachProcess DetachProcess
syn keyword idcStdFunction	GetThreadQty GetThreadId GetCurrentThreadId
syn keyword idcStdFunction	SelectThread SuspendThread ResumeThread GetFirstModule
syn keyword idcStdFunction	GetNextModule GetModuleName GetModuleSize StepInto
syn keyword idcStdFunction	StepOver RunTo StepUntilRet GetDebuggerEvent
syn keyword idcStdFunction	RefreshDebuggerMemory TakeMemorySnapshot GetProcessState
syn keyword idcStdFunction	GetEventId GetEventPid GetEventTid GetEventEa
syn keyword idcStdFunction	IsEventHandled string GetEventModuleName
syn keyword idcStdFunction	GetEventModuleBase GetEventModuleSize GetEventExitCode
syn keyword idcStdFunction	GetEventInfo GetEventBptHardwareEa GetEventExceptionCode
syn keyword idcStdFunction	GetEventExceptionEa GetEventExceptionInfo
syn keyword idcStdFunction	SetDebuggerOptions GetDebuggerEventCondition
syn keyword idcStdFunction	SetDebuggerEventCondition SetRemoteDebugger
syn keyword idcStdFunction	GetExceptionQty GetExceptionCode string GetExceptionName
syn keyword idcStdFunction	GetExceptionFlags DefineException ForgetException
syn keyword idcStdFunction	GetRegValue SetRegValue GetBptQty GetBptEA GetBptAttr
syn keyword idcStdFunction	set_abs_bpt set_sym_bpt set_rel_bpt SetBptAttr
syn keyword idcStdFunction	SetBptCndEx AddBptEx AddBptEx SetBptCnd DelBpt EnableBpt
syn keyword idcStdFunction	CheckBpt EnableTracing GetStepTraceOptions
syn keyword idcStdFunction	SetStepTraceOptions LoadTraceFile SaveTraceFile
syn keyword idcStdFunction	CheckTraceFile DiffTraceFile ClearTraceFile SetTraceDesc
syn keyword idcStdFunction	GetTraceDesc GetMaxTev GetTevEa GetTevType GetTevTid
syn keyword idcStdFunction	GetTevRegVal GetTevRegMemQty GetTevRegMem GetTevRegMemEa
syn keyword idcStdFunction	GetTevCallee GetTevReturn GetBptTevEa Appcall
syn keyword idcStdFunction	SetAppcallOptions GetAppcallOptions CleanupAppcall
syn keyword idcStdFunction	SetColor GetNsecStamp ArmForceBLJump ArmForceBLCall
syn keyword idcStdFunction	Compile OpOffset OpNum OpChar OpSegment OpDec OpAlt1
syn keyword idcStdFunction	OpAlt2 StringStp LowVoids HighVoids TailDepth Analysis
syn keyword idcStdFunction	Tabs Comments Voids XrefShow Indent CmtIndent AutoShow
syn keyword idcStdFunction	MinEA MaxEA BeginEA set_start_cs set_start_ip WriteMap
syn keyword idcStdFunction	WriteTxt WriteExe AddConst AddStruc AddUnion OpStroff
syn keyword idcStdFunction	OpEnum DelConst GetConst AnalyseArea MakeStruct Name
syn keyword idcStdFunction	GetTrueName MakeName GetFrame GetFrameLvarSize
syn keyword idcStdFunction	GetFrameRegsSize GetFrameArgsSize GetFunctionFlags
syn keyword idcStdFunction	SetFunctionFlags SegStart SegEnd SetSegmentType AddSeg
syn keyword idcStdFunction	SegCreate SegDelete SegBounds SegRename SegClass
syn keyword idcStdFunction	SegAddrng SegDefReg Comment RptCmt MakeByte MakeWord
syn keyword idcStdFunction	MakeDword MakeQword MakeOword MakeYword MakeFloat
syn keyword idcStdFunction	MakeDouble MakePackReal MakeTbyte MakeCustomData SetReg

hi def link idcStdFunction idcFunction

" Operators
syn match idcOperator	"\(<<\|>>\|[-+*/%&^|<>!=]\)="
syn match idcOperator	"<<\|>>\|&&\|||\|++\|--\|->"
syn match idcOperator	"[.!~*&%<>^|=,+-]"
syn match idcOperator	"/[^/*=]"me=e-1
syn match idcOperator	"/$"
syn match idcOperator	"&&\|||"
syn match idcOperator	"[][]"

" Functions
syn match idcUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=cType,cDelimiter,cDefine
hi def link idcUserFunction idcFunction

" Delimiters
syn match idcDelimiter    "[();\\]"
" foldmethod=syntax fix, courtesy of Ivan Freitas
syn match idcBraces display "[{}]"

" Booleans
syn keyword idcBoolean true false TRUE FALSE


" Links
hi def link idcFunction Statement
hi def link idcIdentifier Identifier
hi def link idcDelimiter Delimiter
" foldmethod=syntax fix, courtesy of Ivan Freitas
hi def link idcBraces Delimiter
hi def link idcBoolean Boolean
