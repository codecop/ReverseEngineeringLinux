undefined8 main(void)

{
  int randomNumber;
  time_t time;
  long in_FS_OFFSET;
  uint seconds;
  uint randomNumber2;
  long i;
  FILE *sourceFile;
  size_t flag_length;
  void *flag;
  FILE *encodedFile;
  long local_10;
 
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  sourceFile = fopen("flag","rb");
  fseek(sourceFile,0,2);
  flag_length = ftell(sourceFile);
  fseek(sourceFile,0,0);
  flag = malloc(flag_length);
  fread(flag,flag_length,1,sourceFile);
  fclose(sourceFile);
  time = ::time((time_t *)0x0);
  seconds = (uint)time;
  srand(seconds);
  for (i = 0; i < (long)flag_length; i = i + 1) {
	randomNumber = rand();
	*(byte *)((long)flag + i) = *(byte *)((long)flag + i) ^ (byte)randomNumber;
	randomNumber2 = rand();
	randomNumber2 = randomNumber2 & 7;
	*(byte *)((long)flag + i) =
     	*(byte *)((long)flag + i) << (sbyte)randomNumber2 |
     	*(byte *)((long)flag + i) >> 8 - (sbyte)randomNumber2;
  }
  encodedFile = fopen("flag.enc","wb");
  fwrite(&seconds,1,4,encodedFile);
  fwrite(flag,1,flag_length,encodedFile);
  fclose(encodedFile);
  if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) {
                	/* WARNING: Subroutine does not return */
	__stack_chk_fail();
  }
  return 0;
}
