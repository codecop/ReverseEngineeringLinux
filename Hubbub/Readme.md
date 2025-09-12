# Hubbub

Scenario: In the cacophony of noise lies the potential for a clear message. (The flag format is `HTB{SOME TEXT HERE}`.)

password: hackthebox

## Execute

## Run it

```[bash]
bash: ./Hubbub: cannot execute binary file: Exec format error
```

Idee vielleicht einen Emulator...

### file

zeigt

ELF 32-bit LSB executable, Atmel AVR 8-bit, version 1 (SYSV), statically linked, with debug_info, not stripped

die anderen Dateien waren aber

ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=0bddc0a794eca6f6e2e9dac0b6190b62f07c4c75, for GNU/Linux 3.2.0, not stripped

Das heißt also

* Die Datei ist ein ELF-Executable,
* Zielarchitektur = Atmel AVR 8-bit,
* ABI-Version = 1,
* ELF-System = System V.

Es ist ein C++ Programm fuer Arduino.

## AVR Toolchain

### Install on Linux

```[bash]
sudo apt update
sudo apt install gcc-avr binutils-avr gdb-avr avr-libc avrdude make
```

### avr-objdump

```[bash]
avr-objdump -x ...
```

nothing new

```[bash]
avr-objdump -d ...
```

erstellt ASM file. Das Main schaut immer so aus:

* `delay`
* `delay`
* `delay`
* `constprop.bla`

### Ghidra disassembled

fragt nach Variante

* size 16 oder 24?
* compiler? ist GCC

#### 16 bit Address space

probieren mal default-16 bit Address space -> Ghidra hat Address out of bounds

#### 24 bit Address space

probieren 25 bit `atmega-24` und es kommt kein OutOfBounds error. OK.
Code aber gleich. Schwer zu durchschauen. Wirklich Noise!

## Emulation

### Wokwi (Web)

* Sehr beliebter Online-Arduino- und ESP32-Simulator.
* Sehr realistisch, schnell, unterstützt viele Libraries und Peripherie.
* Ideal, wenn man "Arduino IDE im Browser" will.
* Scheint aber eine IDE und kein Simulator zu sein. Sehe nicht wie man Programm hochlädt.

### simavr

https://github.com/buserror/simavr

Schaut sehr vielversprechend aus. Hat ein UI.

```[bash]
apt-get install simavr
```

```[bash]
$ simavr Hubbub -t
Loaded 5028 .text at address 0x0
Loaded 2 .data
avr_make_mcu_by_name: AVR '' not known
simavr: AVR '' not known
```

bedeutet, dass simavr nicht weiß, welchen AVR-Typ (MCU) er simulieren soll ? er bekommt also einen leeren oder unbekannten String. Da musst du den MCU-Namen angeben.

Beispiel für den Arduino Uno (ATmega328P): `./run_avr -m atmega328p -f 16000000 firmware.elf`

* `-m` = MCU-Typ (z. B. atmega328p, atmega32u4, atmega2560 ...)
* `-f` = Taktfrequenz in Hz
* `firmware.elf` = das kompilierte Programm (z. B. mit avr-gcc gebaut)

Ok läuft jetzt.

```[bash]
simavr -m atmega328p -v -f 16000000 -v -t -v Hubbub
```

Durchs Laufen selber haben wir nichts Neues gesehen.

### Debuggen?

```[bash]
simavr -m atmega328p -f 16000000 -g Hubbub &
avr-gdb blink.elf
(gdb) target remote localhost:1234
c
```

Typische GDB-Befehle

* break main -> Breakpoint setzen
* continue oder c -> Programm starten
* step oder s -> Schrittweise ausführen (in Funktionen hinein)
* next oder n -> nächste Zeile (Funktion überspringen)
* info registers -> Register anzeigen
* x/16bx 0x100 -> Speicher ab 0x100 anzeigen
* quit -> beenden

Bisschen über Tooling gelernt. Kein Hinweis.
