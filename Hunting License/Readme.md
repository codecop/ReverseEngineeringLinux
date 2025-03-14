# 1. Hunting License

password: hackthebox

## `file license`

```[bash]
license: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=5be88c3ed329c1570ab807b55c1875d429a581a7, for GNU/Linux 3.2.0, not stripped
```

## `strings license`

```[bash]
/lib64/ld-linux-x86-64.so.2
__gmon_start__
readline
exit
puts
getchar
strcmp
__libc_start_main
free
libreadline.so.8
libc.so.6
GLIBC_2.2.5
[]A\A]A^A_
So, you want to be a relic hunter?
First, you're going to need your license, and for that you need to pass the exam.
It's short, but it's not for the faint of heart. Are you up to the challenge?! (y/n)
Not many are...
Well done hunter - consider yourself certified!
Okay, first, a warmup - what's the first password? This one's not even hidden:
PasswordNumeroUno
Not even close!
Getting harder - what's the second password?
You've got it all backwards...
Your final test - give me the third, and most protected, password:
Failed at the final hurdle!
;*3$"
0wTdr0wss4P
G{zawR}wUz}r
GCC: (Debian 10.2.1-6) 10.2.1 20210110
crtstuff.c
deregister_tm_clones
__do_global_dtors_aux
completed.0
__do_global_dtors_aux_fini_array_entry
frame_dummy
__frame_dummy_init_array_entry
main.c
__FRAME_END__
__init_array_end
_DYNAMIC
__init_array_start
__GNU_EH_FRAME_HDR
_GLOBAL_OFFSET_TABLE_
__libc_csu_fini
reverse
free@GLIBC_2.2.5
puts@GLIBC_2.2.5
_edata
readline
__libc_start_main@GLIBC_2.2.5
exam
__data_start
strcmp@GLIBC_2.2.5
getchar@GLIBC_2.2.5
__gmon_start__
__dso_handle
_IO_stdin_used
__libc_csu_init
_dl_relocate_static_pie
__bss_start
main
exit@GLIBC_2.2.5
__TMC_END__
.symtab
.strtab
.shstrtab
.interp
.note.gnu.build-id
.note.ABI-tag
.gnu.hash
.dynsym
.dynstr
.gnu.version
.gnu.version_r
.rela.dyn
.rela.plt
.init
.text
.fini
.rodata
.eh_frame_hdr
.eh_frame
.init_array
.fini_array
.dynamic
.got
.got.plt
.data
.bss
.comment
```

## objdump

```[bash]
objdump -d license > license.asm
objdump -M intel -d license > license_intel.asm
```

## Running it

1. PasswordNumeroUno
2. P4ssw0rdTw0 (reversed with function)
3. (xored with 0x13) \
   `47 7b 7a 61 77 52 7d 77 55 7a 7d 72 7f 32 32 32 13` \
   https://xor.pw/ \
   5468697264416e6446696e616c21212100 \
   ThirdAndFinal!!!

### `license`

So, you want to be a relic hunter? \
First, you're going to need your license, and for that you need to pass the exam. \
It's short, but it's not for the faint of heart. Are you up to the challenge?! (y/n) \
y \
Okay, first, a warmup - what's the first password? This one's not even hidden: PasswordNumeroUno \
Getting harder - what's the second password? P4ssw0rdTw0 \
Your final test - give me the third, and most protected, password: ThirdAndFinal!!! \
Well done hunter - consider yourself certified!

### Flag

Read the writeup ;-) Could have answered it all.

Flag: HTB{l1c3ns3_4cquir3d-hunt1ng_t1m3!}

## Nachtrag `ltrace`

3x `$ sudo ltrace ./license` laufen lassen und die `strcmp("x", "pw")` pruefen.

1. PasswordNumeroUno
2. P4ssw0rdTw0
3. ThirdAndFinal!!!
