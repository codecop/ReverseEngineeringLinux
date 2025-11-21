using System.Reflection;

internal static class _5
{
	internal static string _0;

	internal static string _1;

	internal static string _2;

	internal static string _3;

	internal static string _4;

	internal static string _5;

	internal static string _6;

	internal static string _7;

	internal static string _8;

	internal static string _9;

	internal static string a;

	internal static string b;

	internal static string c;

	// is not called from any code, we believed it is `main` in last session
	public static void main()
	{
		CustomBinaryReader reader = new CustomBinaryReader(global::Decryptor.Decrypt(Assembly.GetExecutingAssembly().GetManifestResourceStream("0")));
		global::_5._0 = reader.ReadString();
		_1 = reader.ReadString();
		_2 = reader.ReadString();
		_3 = reader.ReadString();
		_4 = reader.ReadString();
		_5 = reader.ReadString();
		_6 = reader.ReadString();
		_7 = reader.ReadString();
		_8 = reader.ReadString();
		_9 = reader.ReadString();
		a = reader.ReadString();
		b = reader.ReadString();
		c = reader.ReadString();
	}
}
