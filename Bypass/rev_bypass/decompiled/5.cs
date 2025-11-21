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

	internal static string Attribute1Value;

	internal static string Attribute2Value;

	internal static string Attribute3Value;

	internal static string Attribute4Value;

	// is not called from any code, we believed it is `main` in last session
	public static void main()
	{
		CustomBinaryReader reader = new CustomBinaryReader(global::Decryptor.Decrypt(Assembly.GetExecutingAssembly().GetManifestResourceStream("0")));
		_0 = reader.ReadString();
		_1 = reader.ReadString();
		_2 = reader.ReadString();
		_3 = reader.ReadString();
		_4 = reader.ReadString();
		_5 = reader.ReadString();
		_6 = reader.ReadString();
		_7 = reader.ReadString();
		_8 = reader.ReadString();
		Attribute1Value = reader.ReadString();
		Attribute2Value = reader.ReadString();
		Attribute3Value = reader.ReadString();
		Attribute4Value = reader.ReadString();

		// resource enthält key, seed, 13 Strings (length + characters)
		// von 1616 bytes
		// falls es 1 char ist, so 2 bytes jeweils.
	}
}
