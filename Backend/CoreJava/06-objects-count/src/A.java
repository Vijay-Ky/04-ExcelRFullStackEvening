class A 
{
	static int x;

	A()
	{
		//IIB
		x += 10;//x = x + 10 ==> 20 + 10 == 30
	}

	{
		x += 20;// x = x + 20
	}

	void test1()
	{
		x += 30;// x = x + 30 ==> 30 + 30 == 60
	}

	static void test2()
	{
		x += 40;// x = x + 40 ==> 60 + 40 == 100
	}

	public static void main(String[] args) 
	{
		System.out.println("A: " + x);
		A a1 = new A();
		System.out.println("B: " + x);
		a1.test1();
		System.out.println("C: " + x);
		a1.test2();//==>A.test2();
		System.out.println("D: " + x);
	}
}
