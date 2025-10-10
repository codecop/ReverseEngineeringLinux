using System.IO;
using System.Text;

internal class _6
{
	private readonly BinaryReader _0;

	public _6(Stream _0)
	{
		this._0 = new BinaryReader(_0, Encoding.Unicode);
	}

	public _6(byte[] _0)
		: this(new MemoryStream(_0))
	{
	}

	public string _6()
	{
		return _0.ReadString();
	}

	public sbyte _7()
	{
		return _0.ReadSByte();
	}

	public int _8()
	{
		return _0.ReadInt32();
	}

	public long _9()
	{
		return _0.ReadInt64();
	}

	public float a()
	{
		return _0.ReadSingle();
	}

	public double b()
	{
		return _0.ReadDouble();
	}
}
