class M9
{
	static void test(Ancestor ancestor)
	{
		System.out.println("from test");
	}

	public static void main(String[] args)
	{
		test(new GrandFather());
		test(new Father());
		test(new Son());
		GrandFather grandFather = new GrandFather();
		test(grandFather);
		Son son = new Son();
		test(son);
		System.out.println("done");
	}
}