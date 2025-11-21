using System.Reflection;

internal static class ResourceBundle
{
	internal static string userNamePasswordFailedMessage;

	internal static string userNamePrompt;

	internal static string pwPrompt;

	internal static string expectedInput;

	internal static string challengePrompt;

	internal static string _5; // OUTPUT 1

	internal static string _6; // OUTPUT 3

	internal static string challengeFailedMessage;

	internal static string _8; // OUTPUT 2

	internal static string Attribute1Value;

	internal static string Attribute2Value;

	internal static string Attribute3Value;

	internal static string Attribute4Value;

	// is not called from any code, we believed it is initialised somehow
	static ResourceBundle()
	{
		CustomBinaryReader reader = new CustomBinaryReader(global::Decryptor.Decrypt(Assembly.GetExecutingAssembly().GetManifestResourceStream("EncryptedResource")));
		userNamePasswordFailedMessage = reader.ReadString();
		userNamePrompt = reader.ReadString();
		pwPrompt = reader.ReadString();
		expectedInput = reader.ReadString();
		challengePrompt = reader.ReadString();
		_5 = reader.ReadString();
		_6 = reader.ReadString();
		challengeFailedMessage = reader.ReadString();
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
