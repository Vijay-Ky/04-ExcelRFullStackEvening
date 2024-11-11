class F 
{
	static int i = 10;

	static int test()
	{
		System.out.println("from test()");
		return 20;
	}
}
//in Java JDK <= 1.6 executing a class without main method is possible
//from Java JDK >= 1.7 executing a class without main method is not possible
