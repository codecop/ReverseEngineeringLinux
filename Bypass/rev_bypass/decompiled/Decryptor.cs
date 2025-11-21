using System.IO;
using System.Security.Cryptography;

public static class Decryptor
{
	public const int _0 = default(int);

	private static byte[] DecryptUsingRijndael(byte[] rawBytes)
	{
		// handle encryption and decryption of byte arrays using the Rijndael algorithm, 
		// which is the basis for the Advanced Encryption Standard (AES).
		using RijndaelManaged rijndaelManaged = new RijndaelManaged();
		rijndaelManaged.BlockSize = 128;
		rijndaelManaged.Mode = CipherMode.CBC;
		rijndaelManaged.GenerateKey();
		rijndaelManaged.GenerateIV();

		using MemoryStream memoryStream = new MemoryStream(rawBytes);
		// lese key und IV aus den rawBytes
		byte[] array = new byte[rijndaelManaged.Key.Length];
		byte[] array2 = new byte[rijndaelManaged.IV.Length];
		memoryStream.Read(array, 0, array.Length);
		memoryStream.Read(array2, 0, array2.Length);

		// decryption
		using ICryptoTransform transform = rijndaelManaged.CreateDecryptor(array, array2);
		using CryptoStream cryptoStream = new CryptoStream(memoryStream, transform, CryptoStreamMode.Read);
		byte[] decryptedRawBytes = new byte[memoryStream.Length - memoryStream.Position];
		cryptoStream.Read(decryptedRawBytes, 0, decryptedRawBytes.Length);
		return decryptedRawBytes;
	}

	public static byte[] Decrypt(Stream rawStream)
	{
		// copy stream to array
		byte[] array = new byte[rawStream.Length];
		rawStream.Read(array, 0, array.Length);
		// decrypt
		return DecryptUsingRijndael(array);
	}
}
