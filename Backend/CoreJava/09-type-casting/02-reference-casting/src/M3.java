class M3 
{
	public static void test1(A obj)//A objs = a1;
	{
		System.out.println("test1(A)");
	}

	public static void main(String[] args) 
	{
		A a1 = new A();
		test1(a1);
		System.out.println("done");
	}
}
