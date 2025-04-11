# 4. Simple Encryptor

password: hackthebox

Das `flag.enc` ist ein binary file, 33 bytes lang.

`encrypt`ist ein ELF file, normal.

## strings

´´´
u+UH
dH3<%(
[]A\A]A^A_
flag
flag.enc
:*3$"
´´´

## Execute

rm flag.enc 
mv something.txt flag
$ ./encrypt

* neues flag war 12 Characters
* flag.enc ist 17 Characters
* Wir sehen kein Pattern

## ltrace/strace

Es lädt die Datei, verschlüsselt mit random und schreibt dann das enc file.

