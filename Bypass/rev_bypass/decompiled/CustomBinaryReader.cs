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
