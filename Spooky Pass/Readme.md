## Spooky Pass

Same as Hunting License

* file
* strings -> password

### ltrace

Trace library calls.

```
$ sudo ltrace ./pass
puts("Welcome to the \033[1;3mSPOOKIEST\033["......he year.)                   = 54
printf("Before we let you in, you'll nee"...)                                  = 59
fgets(Before we let you in, you'll need to give us the password: foo
"foo\n", 128, 0x7f64ea72caa0)                                                  = 0x7ffff9ff36a0
strchr("foo\n", '\n')                                                          = "\n"
strcmp("foo", "s3cr3t_p455_f0r_gh05t5_4nd_gh0ul"...)                           = -13
puts("You're not a real ghost; clear o"...You're not a real ghost; clear off!) = 36
+++ exited (status 0) +++
```

### Flag

HTB{un0bfu5c4t3d_5tr1ng5}

### strace

Trace system calls.

`$ sudo strace ./pass` zeigt 

* read/write
* random
* signals

Does not help here.
