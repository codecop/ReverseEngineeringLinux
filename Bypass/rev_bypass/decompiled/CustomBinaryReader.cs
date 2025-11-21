using System.IO;
using System.Text;

internal class CustomBinaryReader
{
	private readonly BinaryReader reader;

	public CustomBinaryReader(Stream _0)
	{
		this.reader = new BinaryReader(_0, Encoding.Unicode);
	}

	public CustomBinaryReader(byte[] _0)
		: this(new MemoryStream(_0))
	{
	}

	public string ReadString()
	{
		/*
		Length Prefix: The length of the string is stored as a 7-bit encoded integer. 
		               This can consume between 1 and 5 bytes.
        String Bytes: The actual string bytes, encoded in UTF-8.
		 */
		return reader.ReadString();
	}

	// other methods seem unused

	public sbyte _7()
	{
		return reader.ReadSByte();
	}

	public int _8()
	{
		return reader.ReadInt32();
	}

	public long _9()
	{
		return reader.ReadInt64();
	}

	public float a()
	{
		return reader.ReadSingle();
	}

	public double b()
	{
		return reader.ReadDouble();
	}
}
