package app1;

class I < X >
{
	X f1;
}
class Manager8
{
	public static void main(String [] args)
	{
		I <Object> obj1  = new I <Object> ();
		I <String> obj2 = new I<String>();
		obj1.f1 = new Object();
		obj2.f1 = "abc";
		System.out.println("done");		
	}
}