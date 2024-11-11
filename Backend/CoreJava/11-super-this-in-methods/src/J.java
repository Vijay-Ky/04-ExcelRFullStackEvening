class I
{
	static int i;
	boolean k;
}
class J extends I
{
	J()
	{
		super();
		System.out.println("J() begin");
		System.out.println(super.i);
		System.out.println(super.k);
		System.out.println("J() end");
	}

	{
		//super();
		System.out.println("J-IIB begin");
		System.out.println(super.i);
		System.out.println(super.k);
		System.out.println("J-IIB end");
	}

	public static void main(String[] args) 
	{
		System.out.println("main begin");
		J obj = new J();
		System.out.println("main end");
	}
}
