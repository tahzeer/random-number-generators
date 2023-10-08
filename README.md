# Random Number Generators

This GitHub repository contains implementations of two commonly used random number generators, Linear Congruential Generator (LCG) and Linear Feedback Shift Register (LFSR), in Fortran. Additionally, there is a Jupyter notebook that demonstrates how to implement these generators in Python.

## Introduction to Random Number Generators

Random Number Generators (RNGs) are essential components in various computational and statistical applications. They are algorithms or devices that produce sequences of numbers that appear random. These sequences can be categorized into two main types:

1. **True Random Number Generators (TRNGs):** TRNGs generate random numbers from a physical source of entropy, such as electronic noise or radioactive decay. They are considered truly random because they rely on inherently unpredictable physical processes.

2. **Pseudo-Random Number Generators (PRNGs):** PRNGs are algorithms that use an initial value called a seed to produce a sequence of numbers that appears random. While they are deterministic (reproducible with the same seed), good PRNGs exhibit properties that make the generated numbers statistically close to true random numbers.

## Linear Congruential Generator (LCG)

The Linear Congruential Generator is one of the oldest and simplest PRNGs. It generates pseudo-random numbers using a linear recurrence relation. The LCG algorithm can be expressed as:

```
Xn+1 = (a * Xn + c) mod m
```

Where:
- `Xn` is the current pseudo-random number.
- `Xn+1` is the next pseudo-random number.
- `a`, `c`, and `m` are constants that define the generator.
  - `a` is the multiplier.
  - `c` is the increment.
  - `m` is the modulus.

This repository includes a Fortran implementation of the LCG algorithm along with a Jupyter notebook demonstrating its usage in Python.

## Linear Feedback Shift Register (LFSR)

A Linear Feedback Shift Register is another type of PRNG that operates using shift operations and bitwise XOR operations. It uses a shift register to store a fixed number of bits and generates a pseudo-random bit at each step based on a linear combination of the bits in the register.

The key components of an LFSR include:
- The shift register, which stores the bits.
- Feedback taps, which determine how the bits are combined to produce the next bit.

LFSRs are widely used in applications such as stream ciphers, error detection, and sequence generation.

In this repository, you will find a Fortran implementation of the LFSR algorithm, allowing you to explore its functionality and use it for generating pseudo-random sequences.

Feel free to explore the code and documentation in this repository to gain a deeper understanding of these random number generators and their applications.
