class M38
{
	public static void main(String[] args)
	{
		System.out.println("main begin");
		int i = test();
		System.out.println(i);
		System.out.println("main end");
	}
	static int test()
	{
		System.out.println("from test");
		return 12 - 4 * 4 / 2;
	}
}

/*
BODMAS
Brackets
Orders (i.e., powers and square roots, etc.)
Division
Multiplication
Addition
Subtraction
*/
