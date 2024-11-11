class L
{
	public static void test()
	{
		this.test(10);
		System.out.println("from L test()");
	}

	public void test(int i)
	{
		System.out.println("from L test(int i)");
	}

	public static void main(String[] args) 
	{
		L obj = new L();
		obj.test();
		System.out.println("done");
	}
}
