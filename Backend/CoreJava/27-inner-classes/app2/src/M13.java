class M13
{
	public static void main(String[] args) 
	{
		C c1 = new C()
		{
			void test1()
			{
				System.out.println("from AIC.test1()");
			}
		};
		c1.test1();
		System.out.println("done");
	}
}
