class M4 
{
	static D test1()
	{
		D d1 = new D();
		return d1;
	}

	static A test2()
	{
		return new A();
	}

	public static void main(String[] args) 
	{
		D d1 = test1();
		A a1 = test2();
		System.out.println("done");
	}
}
