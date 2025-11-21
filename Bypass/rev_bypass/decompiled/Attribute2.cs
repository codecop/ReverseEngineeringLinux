using System;

[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Class)]
public class Attribute2 : Attribute
{
	public string _0;

	public Attribute2()
	{
		_0 = ResourceBundle.Attribute2Value;
	}
}
