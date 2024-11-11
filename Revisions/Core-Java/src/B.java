//call-by-reference /  pass-by-referece
class B 
{
	int i;

	static void test1(B obj)
	{
		System.out.println("test1(int) begin: " + obj.i);
		obj.i = 20;
		System.out.println("test1(int) end: " + obj.i);
		test2(obj);
	}

	static void test2(B obj)
	{
		System.out.println("test2(int) begin: " + obj.i);
		obj.i = 40;
		System.out.println("test2(int) end: " + obj.i);
	}

	public static void main(String[] args) 
	{
		B b1 = new B();
		System.out.println("before calling test(B): " + b1.i);
		b1.i = 10;
		test1(b1);
		System.out.println("after calling test(B): " + b1.i);
	}
}
