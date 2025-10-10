# x. Bypass

Scenario: The Client is in full control. Bypass the authentication and read the key to get the Flag.

password: hackthebox

## Verify SHA

Use Powershell, `run with powershell -File check_hash.ps1`

## Run it somehow safely

Windows Sandbox (optional component), [just activate](https://www.giga.de/tipp/windows-10-11-sandbox-aktivieren-so-gehts/#doc-tzgX68HRKz)

Copy Exe into it with Copy/Paste

### Run the Exe

```
C:\Challenge>Bypass.exe
Enter a username: foo
Enter a password: bar
Wrong username and/or password
Enter a username:
Enter a password:
Wrong username and/or password
...
C:\Challenge>
```

## View the Exe

* dotNet 4.5.2

