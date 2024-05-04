# As-3

## Overview

`As-3` is a C program that implements the quicksort algorithm recursively. The program efficiently sorts arrays by dividing them into partitions and recursively sorting these partitions. It consists of the following main components:

- **Partition**: A function that reorganizes the array such that elements less than a chosen pivot are on the left of the pivot and those greater are on the right. It then returns the index of the pivot element correctly placed in the array.
- **Quicksort**: The core recursive function that sorts an array segment between two indices by repeatedly partitioning it.

Sorce : [as-3.c](as-3.c)

## Compiled Assembly Files

| Arch | Compiler | Version | Style | File |
|:-----:|:-----:|:-----:|:-----:|:-----:|
| W64-MinGW | gcc | 13.1.0 | AT&T  | [as3.s](W64-MinGW/gcc/as3.s) |
| W64-MinGW | gcc | 13.1.0 | Intel | [as3.asm](W64-MinGW/gcc/as3.asm) |
| W64-MinGW |clang| 16.0.2 | Intel | [as3.asm](W64-MinGW/clang/as3.asm) |
| x86-64 | clang | 18.1.0 | Intel | [as3.asm](x86-64/clang/as3.asm) |
| x86-64 | gcc | 13.2 | Intel | [as3.asm](x86-64/gcc/as3.asm) |
| x86-64 | gcc | 13.2 | AT&T  | [as3.s](x86-64/gcc/as3.s) |
| x86-64 | icx | 2024.0.0 | Intel | [as3.asm](x86-64/icx/as3.asm) |
| x86-64 | icx | 2024.0.0 | AT&T  | [as3.asm](x86-64/icx/as3.s) |
| x86-64 | icc | 2021.10.0 | Intel  | [as3.asm](x86-64/icc/as3.asm) |
| arm64 | msvc | 19.38  | MS   | [as3.asm](arm64/msvc/as3.asm) |
