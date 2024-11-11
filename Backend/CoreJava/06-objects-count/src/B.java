class B 
{
	static int x;

	public static void main(String[] args) 
	{
		System.out.println("A: " + x);// 0
		System.out.println("B: " + B.x);// 0

		//for both the objects static int x would be common(are part) same static int x
		B b1 = new B();
		B b2 = new B();

		System.out.println("C: " + b1.x);// 0
		System.out.println("D: " + b2.x);// 0
	}
}
