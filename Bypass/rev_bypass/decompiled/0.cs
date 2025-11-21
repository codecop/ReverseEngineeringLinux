using System;

public class _0
{
	public static string _0;

	public static string _1;

	public static string _2 = _5._8;

	public static void main()
	{
		if (FakeAskForUserNameAndPassword())
		{
			ChallengeForFlag();
			return;
		}
		Console.WriteLine(_5.userNamePasswordFailedMessage);
		main();
	}

	public static bool FakeAskForUserNameAndPassword()
	{
		Console.Write(_5.userNamePrompt);
		string text = Console.ReadLine();
		Console.Write(_5.pwPrompt);
		string text2 = Console.ReadLine();
		return false;
	}

	public static void ChallengeForFlag()
	{
		string text = _5.expectedInput;
		Console.Write(_5.challengePrompt);
		string text2 = Console.ReadLine();
		if (text == text2)
		{
			Console.Write(_5._5 + _5._8 + _5._6);
			return;
		}
		Console.WriteLine(_5.challengeFailedMessage);
		ChallengeForFlag();
	}
}
