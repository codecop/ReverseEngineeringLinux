# Hubbub

Link: https://app.hackthebox.com/challenges/Hubbub

Description: In the cacophony of noise lies the potential for a clear message. (The flag format is `HTB{SOME TEXT HERE}`.)

ZIP PASSWORD: hackthebox

## Execute

```
bash: ./Hubbub: cannot execute binary file: Exec format error
```

Idee vielleicht einen Emulator...

### file

ELF 32-bit LSB executable, Atmel AVR 8-bit, version 1 (SYSV), statically linked, with debug_info, not stripped

die anderen Dateien waren

ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=0bddc0a794eca6f6e2e9dac0b6190b62f07c4c75, for GNU/Linux 3.2.0, not stripped

Das heißt also schlicht:

* Die Datei ist ein ELF-Executable,
* Zielarchitektur = Atmel AVR 8-bit,
* ABI-Version = 1,
* ELF-System = System V.

Es ist ein C++ Programm fuer Arduino.

## AVR Toolchain

sudo apt update
sudo apt install gcc-avr binutils-avr gdb-avr avr-libc avrdude make

### avr-objdump

```
avr-objdump -x ...
```

nothing new.

```
avr-objdump -d ...
```

erstellt ASM file. Das Main schaut immer so aus:

* delay
* delay
* delay
* constprop.bla

### Ghidra disassembled

fragt nach Variante

* size 16 oder 24?
* compiler? - ist GCC

#### 16 bit

probieren mal default-16 bit Address space - Ghidra hat Address out of bounds

* 1 Fehler: kein Dwarf

#### 24 bit

probieren atmega-24 und es kommt kein OutOfBounds error.
