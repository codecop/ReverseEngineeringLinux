using System;

[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Class)]
public class Attribute4 : Attribute
{
	public string _0;

	public Attribute4()
	{
		_0 = ResourceBundle.Attribute4Value;
	}
}
