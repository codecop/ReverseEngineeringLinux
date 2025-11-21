using System;

[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Class)]
public class Attribute1 : Attribute
{
	public string _0;

	public Attribute1()
	{
		_0 = ResourceBundle.Attribute1Value;
	}
}
