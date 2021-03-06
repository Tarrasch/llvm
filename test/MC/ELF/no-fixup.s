// RUN: llvm-mc -filetype=obj -triple x86_64-pc-linux-gnu %s -o %t -stats 2>%t.out
// RUN: FileCheck --input-file=%t.out %s

// Test that we create no fixups for this file since "a" and "b" are in the
// same fragment.

// CHECK:      assembler - Number of emitted object file bytes
// CHECK-NEXT: assembler - Number of fragment layouts

a:
  nop
b:
  .long b - a
