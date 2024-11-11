//class reference
class C
{
	static void test()
	{
		System.out.println("from test()");
	}

	static int i;

	public static void main(String[] args) 
	{
		System.out.println("main1: " + i);
		System.out.println("------------------");
		int i = 10;
		System.out.println("main2: " + i);
		System.out.println("------------------");
		System.out.println("main3: " + C.i);
		System.out.println("------------------");
		i = 20;
		System.out.println("main4: " + i);
		System.out.println("------------------");
		C.i = 10;
		System.out.println("main5: " + i);
		System.out.println("main6: " + C.i);
		System.out.println("------------------");
		C.test();
		System.out.println("------------------");
		C c1 = new C();
		c1.test();
		System.out.println("------------------");
	}
}
class D
{
	public static void main(String[] args) 
	{
		System.out.println("-------from D main begin-----------: " + C.i);
		C.test();
		C.main(null);
		System.out.println("-------from D main end-----------: " + C.i);
	}
}
