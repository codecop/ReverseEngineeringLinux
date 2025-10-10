# 3. Behind the Scenes

Scenario: It should now be impossible to figure out how our programs work!

password: hackthebox

## Run it

```[bash]
$ ./behindthescenes
./challenge <password>
```

Wir vermuten ein Password wird verlangt.

## ltrace

```[bash]
sudo apt-get install ltrace
sudo ltrace ./behindthescenes 123
```

zeigt nur `SIGILL (Illegal instruction)`.

(Chat GPT) Anti-Debugging Mechanisms: Many reverse engineering challenges and malware samples intentionally include illegal instructions or traps to detect debuggers or tracing tools like ltrace and gdb.

## strace

```[bash]
sudo strace ./behindthescenes 123
```

zeigt etwas, aber auch `SIGILL` und nichts Konkretes.

## strings

zeigt main und andere Referenzen auf CGLIB, ist also ein C Programm.

## Ghidra

* New Project
* Import File
* Symbol Tree (links) - Functions - `main`

### main method

Vorher ist `memset(&signal, 0, 0x98);`, das tut nur die ganze Struct auf 0 setzen.

Wir sehen library Methodes `sigemptyset` und `sigaction`, die löschen alle Signale und registrieren einen Handler.

Das Ziel ist `sigill_sigaction` mit 3 Argumenten `void signal_handler(int signum, siginfo_t *info, void *context);` (Chat GPT)

* `signum` - Die Signalnummer (z.B. SIGSEGV, SIGILL, SIGTRAP)
* `siginfo_t *info` - Struktur mit detaillierten Infos ueber das Signal (z.B. die Adresse des Segfaults oder der Prozess, der das Signal geschickt hat)
* `void *context` - CPU-Register und Stack-Frame zum Zeitpunkt des Signals (wird oft fuer Exploits und Reverse Engineering genutzt)

Du kannst sogar Control-Flow-Hijacking machen, indem du die Register im `ucontext_t`-Struktur manipulierst. Das Signal erhaelt alle Register in einem struct, `ucontext_t`, und bei `0xa8` ist der RIP (Instruction Pointer). Bei uns ist das genau so.

### UD2

OK er sprint 2 bytes hinter den Befehl. Der C Code hat eine Schleife dort, das stimmt aber nicht. Im Ghidra den Assembly dahinter mit `D` disassemble und wir bekommen den echten Code mit Calls auf Standfunktionen, wie erwartet:

* prueft auf 2 Argumente (1. ist Filename)
* prueft auf Laenge 12.
* prueft auf "Itz" vielleicht bei Pos 0?
* "_0n" bei pos 3
* "Ly_" bei 6
* "UD2" bei 9

Flag: HTB{Itz_0nLy_UD2}
