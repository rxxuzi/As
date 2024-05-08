# As-4

## Overview

`As-4` is a C program that implements the SHA-256 hashing algorithm. This algorithm is widely used to ensure the integrity of digital data. The program focuses on generating hash values for data, which is essential in security-related applications.

## Main Components

- **Initialization**: The `SHA256Init` function initializes the hash context.
- **Update**: The `SHA256Update` function adds data and updates the hash state.
- **Finalization**: The `SHA256Final` function computes the final hash value and returns the result.

## Source

Source : [as-4.c](as-4.c)

## Compiled Assembly Files

| Arch         | Compiler | Version |  Style |  File                           |
|:------------:|:--------:|:-------:|:------:|:-------------------------------:|
| x86-64       | gcc      | 13.2    | Intel  | [as4.asm](x86-64/gcc/as4.asm)   |
| x86-64       | gcc      | 13.2    | AT&T   | [as4.s](x86-64/gcc/as4.s)       |
