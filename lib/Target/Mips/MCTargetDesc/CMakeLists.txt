add_llvm_library(LLVMMipsDesc
  MipsAsmBackend.cpp
  MipsDirectObjLower.cpp
  MipsMCAsmInfo.cpp
  MipsMCCodeEmitter.cpp
  MipsMCTargetDesc.cpp
  MipsELFObjectWriter.cpp
  MipsReginfo.cpp
  )

add_dependencies(LLVMMipsDesc MipsCommonTableGen)
