interface A
{
	int i = 0;
	void test1();
}
interface B
{
	int i = 100;
	void test1();
}
class F implements A, B
{
	public void test1()
	{
		System.out.println("test1()");
	}
	public static void main(String[] args) 
	{
		F f1 = new F();
		System.out.println("done: " + f1.i);
		f1.test1();
	}
}