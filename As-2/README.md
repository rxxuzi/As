# As-2

## Overview

This program performs geometric calculations related to circles and spheres using a given radius $r$. The specific calculations implemented are:

- **Circle Area**: Calculates the area of a circle by squaring the radius and multiplying by the constant $\pi$. The formula used is $A = \pi r^2$.
- **Circle Circumference**: Computes the circumference of a circle by multiplying the radius by $2 \pi$. The formula is $C = 2\pi r$.
- **Sphere Surface Area**: Determines the surface area of a sphere by squaring the radius, then multiplying by $4 \pi$. This is given by $S = 4\pi r^2$.
- **Sphere Volume**: Calculates the volume of a sphere by cubing the radius and multiplying by $\frac{4}{3} \pi$. The formula used is $V = \frac{4}{3}\pi r^3$.

Source : [as-2.c](as-2.c)

## Compiled Assembly Files

| Arch | Compiler | Version | Style | File |
|:-----:|:-----:|:-----:|:-----:|:-----:|
| W64-MinGW | gcc | 13.1.0 | AT&T  | [as2.s](W64-MinGW/gcc/as2.s) |
| W64-MinGW | gcc | 13.1.0 | Intel | [as2.asm](W64-MinGW/gcc/as2.asm) |
| W64-MinGW |clang| 16.0.2 | Intel | [as2.asm](W64-MinGW/clang/as2.asm) |
| x86-64 | clang | 18.1.0 | Intel | [as2.asm](x86-64/clang/as2.asm) |
| x86-64 | gcc | 13.2 | Intel | [as2.asm](x86-64/gcc/as2.asm) |
| x86-64 | gcc | 13.2 | AT&T | [as2.s](x86-64/gcc/as2.s) |
| x86-64 | icx | 2024.0.0 | Intel | [as2.asm](x86-64/icx/as2.asm) |
| x86-64 | icx | 2024.0.0 | AT&T | [as2.s](x86-64/icx/as2.s) |
| arm64 | gcc | 13.2.0 | GNU | [as2.asm](arm64/gcc/as2.s) |
| arm64 | msvc | 19.38  | MS  | [as2.asm](arm64/msvc/as2.asm) |
