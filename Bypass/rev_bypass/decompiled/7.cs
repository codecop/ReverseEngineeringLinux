using System.IO;
using System.Security.Cryptography;

public static class _7
{
	public const int _0 = default(int);

	public static byte[] _2(byte[] _0)
	{
		using RijndaelManaged rijndaelManaged = new RijndaelManaged();
		rijndaelManaged.BlockSize = 128;
		rijndaelManaged.Mode = CipherMode.CBC;
		rijndaelManaged.GenerateKey();
		rijndaelManaged.GenerateIV();
		using MemoryStream memoryStream = new MemoryStream(_0);
		byte[] array = new byte[rijndaelManaged.Key.Length];
		byte[] array2 = new byte[rijndaelManaged.IV.Length];
		memoryStream.Read(array, 0, array.Length);
		memoryStream.Read(array2, 0, array2.Length);
		using ICryptoTransform transform = rijndaelManaged.CreateDecryptor(array, array2);
		using CryptoStream cryptoStream = new CryptoStream(memoryStream, transform, CryptoStreamMode.Read);
		byte[] array3 = new byte[memoryStream.Length - memoryStream.Position];
		cryptoStream.Read(array3, 0, array3.Length);
		return array3;
	}

	public static byte[] _3(Stream _0)
	{
		byte[] array = new byte[_0.Length];
		_0.Read(array, 0, array.Length);
		return _2(array);
	}
}
