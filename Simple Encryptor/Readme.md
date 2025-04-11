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
* `flag.enc` ist 17 Characters.
* Wir sehen kein Pattern.
* Am ende ist ein `+`.

## ltrace/strace

Es lädt die Datei, verschlüsselt mit `random` und schreibt dann das `.enc` File.
Eventuell wird `rand` 2x pro Character aufgerufen.

## objdump

* Zeile 246, es wird `time` aufgerufen und damit `srand` initialisiert.
* Das ist mühsam, besser wäre decompiler.
* C Funktionen nachschauen im [Cpp Reference](https://en.cppreference.com/w/)

## Ghidra

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
    void*  flag;
    FILE*  encodedFile;
    long   local_10;

    local_10 = * (long*)(in_FS_OFFSET + 0x28);

    sourceFile = fopen("flag", "rb");
    fseek(sourceFile, 0, 2);
    flag_length = ftell(sourceFile);
    fseek(sourceFile, 0, 0);
    flag = malloc(flag_length);
    fread(flag, flag_length, 1, sourceFile);
    fclose(sourceFile);

    time = ::time((time_t*) 0x0);
    seconds = (uint) time;
    srand(seconds);

    for (i = 0; i < (long) flag_length; i = i + 1) {
        randomNumber = rand();
        *(byte*)((long) flag + i) = *(byte*)((long) flag + i) ^ (byte) randomNumber;
        
        randomNumber2 = rand();
        randomNumber2 = randomNumber2 & 7;
        *(byte*)((long) flag + i) = 
            *(byte*)((long) flag + i) << (sbyte) randomNumber2 | 
            *(byte*)((long) flag + i) >> 8 - (sbyte) randomNumber2;
    }

    encodedFile = fopen("flag.enc", "wb");
    fwrite(&seconds, 1, 4, encodedFile);
    fwrite(flag, 1, flag_length, encodedFile);
    fclose(encodedFile);

    if (local_10 != * (long*)(in_FS_OFFSET + 0x28)) {
        /* WARNING: Subroutine does not return */
        __stack_chk_fail();
    }

    return 0;
}
```

### Reverse Algorithm

1. read time from file
2. get random 1
3. get random 2
4. unshift (how --> TODO table) with random 2
5. xor with random 1
6. write out
