#include <time.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

typedef uint32_t uint;
typedef unsigned char byte;

int main(void)
{
    int randomNumber;
    uint seconds;
    uint randomNumber2;
    long i;
    FILE *sourceFile;
    size_t flag_length;
    void *flag; /* memory buffer */
    FILE *encodedFile;

    sourceFile = fopen("flag.enc", "rb");        /* open source file "flag" for reading as binary */
    fseek(sourceFile, 0, 2);                 /* jump to end of file, (position 0 from END) */
    flag_length = ftell(sourceFile) - 4;         /* the number of bytes from the beginning of the file. */
    fseek(sourceFile, 0, 0);                 /* jump to beginning */
    flag = malloc(flag_length);              /* speicher f�r Flag allozieren */
    fread(&seconds, 1, 4, sourceFile);
    fread(flag, flag_length, 1, sourceFile); /* read all flag into buffer */
    fclose(sourceFile);

    srand(seconds); /* init the randoms */

    for (i = 0; i < (long)flag_length; i = i + 1)
    {                          /* gehen ganzes Flag byteweise durch */
        randomNumber = rand(); /* holen sich random1 */
        randomNumber2 = rand();            /* holen sich random2 */

        randomNumber2 = randomNumber2 & 7; /* reduziere random auf 3 rechte bit, value 0-7 */
        *(byte *)((long)flag + i) =
            (*(byte *)((long)flag + i) >> ((byte)randomNumber2)) |
            (*(byte *)((long)flag + i) << (8 - (byte)randomNumber2));
        /* flag[i] = flag[i] << randomNumber2     |
                     flag[i] >> (8-randomNumber2)
         */

        *(byte *)((long)flag + i) = *(byte *)((long)flag + i) ^ (byte)randomNumber;
        /* flag[i] = flag[i] ^ randomNumber1 */
    }

    encodedFile = fopen("flag.dec", "wb");     /* open encoded file as binary for write */
    fwrite(&seconds, 1, 4, encodedFile);       /* von seconds,1x4 bytes = uint32 bit */
    fwrite(flag, 1, flag_length, encodedFile); /* schreibe encoded flag selber */
    fclose(encodedFile);

    return 0;
}
