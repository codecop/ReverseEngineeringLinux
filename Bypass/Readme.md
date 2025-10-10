# 6. Bypass

Scenario: The Client is in full control. Bypass the authentication and read the key to get the Flag.

password: hackthebox

## Run it "safely"

### Verify SHA

Use Powershell, `run with powershell -File check_hash.ps1`

### Windows Sandbox

* Windows Sandbox (optional component)
* [just activate](https://www.giga.de/tipp/windows-10-11-sandbox-aktivieren-so-gehts/#doc-tzgX68HRKz)
* copy exe into it with Copy/Paste

### Run it

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

## HexEditor

* dotNet 4.5.2
* sonst nichts gesehen

## Analyse with pestudio

* [pestudio](https://www.winitor.com/download)
* hat auch Strings
* nichts gefunden
* es gibt keine Exports, wir k�nnen Teile des Codes nicht einfach so aufrufen.

## Disassemble

Starter [blog](https://starkeblog.com/reverse-engineering/dotnet/2024/04/18/reverse-engineering-dotnet-applications.html)

* [ILDasm](https://learn.microsoft.com/en-us/dotnet/framework/tools/ildasm-exe-il-disassembler), kommt mit Visual Studio (habe ich nicht)
* ILSpy

### ILSpy

<https://github.com/icsharpcode/ILSpy/>

* hat auch Strings
* die App verwendet nur `mscore.lib`
* Source Code
  * obfuscated, keine Symbole, nur Positionen
  * Der Code sieht so aus, als w�rde ein Teil mit Cypher decrypted sein.

* Modul 0 -> 5.0()
* 5.0() macht

  ```[cs]
  public static void 0()
  {
    6 obj = new 6(global::7.3(Assembly.GetExecutingAssembly().GetManifestResourceStream("0")));
    global::5.0 = obj.6();
    1 = obj.6();
    2 = obj.6();
    3 = obj.6();
    4 = obj.6();
    5 = obj.6();
    6 = obj.6();
    7 = obj.6();
    8 = obj.6();
    9 = obj.6();
    a = obj.6();
    b = obj.6();
    c = obj.6();
  }
  ```

* 6 ist von Type `BinaryReader`
* Resource `0` wird gelesen in 7.3()

  ```[cs]
  using System.IO;
  
  public static byte[] 3(Stream 0)
  {
    byte[] array = new byte[0.Length];
    0.Read(array, 0, array.Length);
    return 2(array);
  }
  ```

* und dann in 7.2

  ```[cs]
  using System.IO;
  using System.Security.Cryptography;
  
  public static byte[] 2(byte[] 0)
  {
    using RijndaelManaged rijndaelManaged = new RijndaelManaged();
    rijndaelManaged.BlockSize = 128;
    rijndaelManaged.Mode = CipherMode.CBC;
    rijndaelManaged.GenerateKey();
    rijndaelManaged.GenerateIV();
    using MemoryStream memoryStream = new MemoryStream(0);
    byte[] array = new byte[rijndaelManaged.Key.Length];
    byte[] array2 = new byte[rijndaelManaged.IV.Length];
    memoryStream.Read(array, 0, array.Length);
    memoryStream.Read(array2, 0, array2.Length);
    using ICryptoTransform transform = rijndaelManaged.CreateDecryptor(array, array2);
    using CryptoStream cryptoStream = new CryptoStream(memoryStream, transform, CryptoStreamMode. Read);
    byte[] array3 = new byte[memoryStream.Length - memoryStream.Position];
    cryptoStream.Read(array3, 0, array3.Length);
    return array3;
  }
  ```

TODO weiter code ansehen und umbenennen
