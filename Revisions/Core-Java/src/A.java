/*call by value / pass by value*/
class A 
{
	int i;

	static void test(int i)
	{
		System.out.println("test(int) begin: " + i);
		i = 20;
		System.out.println("test(int) end: " + i);
	}

	public static void main(String[] args) 
	{
		A a1 = new A();
		System.out.println("before calling test(int): " + a1.i);
		a1.i = 10;
		test(a1.i);
		System.out.println("after calling test(int): " + a1.i);
	}
}
