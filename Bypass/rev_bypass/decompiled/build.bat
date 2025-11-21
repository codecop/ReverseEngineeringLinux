rmdir /S /Q bin
rmdir /S /Q obj

call dotnet restore decompiled.sln
call dotnet build decompiled.sln

del *.exe
copy bin\Debug\net452\*.exe .

rmdir /S /Q bin
rmdir /S /Q obj
