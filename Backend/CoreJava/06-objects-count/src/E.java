class E 
{
	//counter = 0, 10, 20, 40, 80
	static int counter = 10;

	E()
	{
		counter *= 2;//counter = counter * 2;//counter = 10 * 2; ==> 20
	}

	E(int i)
	{
		counter *= 2;//counter = counter * 2;//counter = 20 * 2; ==> 40
	}

	E(int i, int j)
	{
		counter *= 2;//counter = counter * 2;//counter = 40 * 2; ==> 80
	}

	public static void main(String[] args) 
	{
		E obj1 = new E();
		E obj2 = new E(10);
		E obj3 = new E(10, 20);
		System.out.println("A: " + obj1.counter);
		System.out.println("B: " + obj2.counter);
		System.out.println("C: " + obj3.counter);
	}
}
