class B 
{
	{
		System.out.println("B-IIB1");
	}

	B()
	{
		//IIB
		System.out.println("B()");
	}

	B(int i)
	{
		this(10, 20);
		System.out.println("B(int)");
	}

	B(int i, int j)
	{
		this();
		System.out.println("B(int, int)");
	}

	public static void main(String[] args) 
	{
		B b1 = new B();
		System.out.println("------------------");
		B b2 = new B();
		System.out.println("------------------");
		B b3 = new B(90);
		System.out.println("------------------");
		B b4 = new B(10, 20);
		System.out.println("------------------");
	}

	{
		System.out.println("B-IIB2");
	}
}
