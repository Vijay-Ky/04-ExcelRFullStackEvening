class A 
{
	A()
	{
		//IIB
		System.out.println("A()");
	}

	{
		System.out.println(10);
	}

	A(int i)
	{
		//IIB
		System.out.println("A(int)");
	}

	public static void main(String[] args) 
	{
		A a1 = new A();
		System.out.println("--------------------------");
		A a2 = new A(10);
		System.out.println("--------------------------");
		{
			System.out.println("--------------------------");
		}
	}

	{
		System.out.println("A-IIB-2");
	}
}
