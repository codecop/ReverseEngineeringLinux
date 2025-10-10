# 4. Simple Encryptor

password: hackthebox

## file

* `encrypt` ist ein ELF file, normal.
* Das `flag.enc` ist ein binary, 33 bytes lang.

## strings

```[bash]
u+UH
dH3<%(
[]A\A]A^A_
flag
flag.enc
:*3$"
```

Es erwartet ein `flag` File, sonst Segmentation Fault.

## Execute

```[bash]
rm flag.enc
mv something.txt flag
$ ./encrypt
```

* neues `flag` war 12 Characters.
* `flag.enc` ist 16/17 Characters.
* Wir sehen kein Pattern.
* Am ende ist ein `+`.

## ltrace/strace

Es lädt die Datei, verschlüsselt mit `random` und schreibt dann das `.enc` File.
Eventuell wird `rand` 2x pro Character aufgerufen.

## objdump - Assembly

* Zeile 246, es wird `time` aufgerufen und damit `srand` initialisiert.
* Das ist mühsam, besser wäre decompiler.
* C Funktionen nachschauen im [Cpp Reference](https://en.cppreference.com/w/)

## Ghidra - C++

```[c]
undefined8 main(void) {
    int    randomNumber;
    time_t time;
    long   in_FS_OFFSET;
    uint   seconds;
    uint   randomNumber2;
    long   i;
    FILE*  sourceFile;
    size_t flag_length;
    void*  flag;                        /* memory buffer */
    FILE*  encodedFile;
    long   local_10;

    local_10 = * (long*)(in_FS_OFFSET + 0x28);

    sourceFile = fopen("flag", "rb");   /* open source file "flag" for reading as binary */
    fseek(sourceFile, 0, 2);            /* jump to end of file, (position 0 from END) */
    flag_length = ftell(sourceFile);    /* the number of bytes from the beginning of the file. */
    fseek(sourceFile, 0, 0);            /* jump to beginning */
    flag = malloc(flag_length);         /* speicher für Flag allozieren */
    fread(flag, flag_length, 1, sourceFile); /* read all flag into buffer */
    fclose(sourceFile);

    time = ::time((time_t*) 0x0);       /* get current system time (in seconds) as some uint */
    seconds = (uint) time;
    srand(seconds);                     /* init the randoms */

    for (i = 0; i < (long) flag_length; i = i + 1) { /* gehen ganzes Flag byteweise durch */
        randomNumber = rand();                       /* holen sich random1 */
        *(byte*)((long) flag + i) = *(byte*)((long) flag + i) ^ (byte) randomNumber;
                                                     /* flag[i] = flag[i] ^ randomNumber1 */

        randomNumber2 = rand();                      /* holen sich random2 */
        randomNumber2 = randomNumber2 & 7;           /* reduziere random auf 3 rechte bit, value 0-7 */
        *(byte*)((long) flag + i) =
            *(byte*)((long) flag + i) << (sbyte) randomNumber2 |
            *(byte*)((long) flag + i) >> 8 - (sbyte) randomNumber2;
                                                     /* flag[i] = flag[i] << randomNumber2     |
                                                                  flag[i] >> (8-randomNumber2)
                                                      */
    }

    encodedFile = fopen("flag.enc", "wb");     /* open encoded file as binary for write */
    fwrite(&seconds, 1, 4, encodedFile);       /* von seconds,1x4 bytes = uint32 bit */
    fwrite(flag, 1, flag_length, encodedFile); /* schreibe encoded flag selber */
    fclose(encodedFile);

    if (local_10 != * (long*)(in_FS_OFFSET + 0x28)) {
        /* WARNING: Subroutine does not return */
        __stack_chk_fail();
    }

    return 0;
}
```

## Reverse Algorithm

1. read time `seconds` from file, the first four bytes as uint 32 bits
1. init `srand(seconds)`
1. read remaining file into buffer
1. go by byte for (i = 0; i < (long) flag_length; i = i + 1)
1. get random 1
1. get random 2
1. un-shift with random 2, just opposite directions
1. xor with random 1
1. write out buffer

* braucht Linux Environment, oder mindestens 64 bit. Auf Windows ging es nicht.

### Bit examples

```
XOR example 11011 ^ 00101 = 11110
            11110 ^ 00101 = 11011 = input again, "reversing"
```

```
AND example 11011 & 00101 = 00001
            00001 & 00101 = 00001 = "idempotent"
```

```
OR example 11011 | 00101 = 11111
           11111 | 00101 = 11111 = "idempotent"
```

7 = 0b00000111

```
>> example 11011 >> 2 = 00_110
           11011 >>> 2 = 11_110
```

What does the shifting do?

```
   shift = 3
   flag = 00011011
   flag = flag << shift | flag >> (8-shift)
   flag = flag << 3 | flag >> 5
          11011___  |  _____000 = 11011000 = x
   x =    x >> 3    | x << 5
          ___11011  | 000_____ = 00011011 = flag
```

How can we revers it? Just reverse the operations.

### ad Random

<https://www.geeksforgeeks.org/dsa/pseudo-random-number-generator-prng/>

### Flag

HTB{vRy_s1MplE_F1LE3nCryp0r}
