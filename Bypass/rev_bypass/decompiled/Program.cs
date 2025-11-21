using System;

public class Program
{
	public static string _0;

	public static string _1;

	public static string _2 = ResourceBundle._8;

	public static void Main()
	{
		if (FakeAskForUserNameAndPassword())
		{
			ChallengeForFlag();
			return;
		}
		Console.WriteLine(ResourceBundle.userNamePasswordFailedMessage);
		Main();
	}

	public static bool FakeAskForUserNameAndPassword()
	{
		Console.Write(ResourceBundle.userNamePrompt);
		string text = Console.ReadLine();
		Console.Write(ResourceBundle.pwPrompt);
		string text2 = Console.ReadLine();
		return false;
	}

	public static void ChallengeForFlag()
	{
		string text = ResourceBundle.expectedInput;
		Console.Write(ResourceBundle.challengePrompt);
		string text2 = Console.ReadLine();
		if (text == text2)
		{
			Console.Write(ResourceBundle._5 + ResourceBundle._8 + ResourceBundle._6);
			return;
		}
		Console.WriteLine(ResourceBundle.challengeFailedMessage);
		ChallengeForFlag();
	}
}
