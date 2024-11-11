class D
{
 	public static void main(String[] args) 
	{
		System.out.println("main begin");
		try
		{
			System.out.println("from try begin: ");
			System.out.println(10 / 0);
			System.out.println("from try end");
		}
		finally
		{
			System.out.println("outer finally begin");
			try
			{	
				 System.out.println(10 / 0);
			}
			catch(ArithmeticException ex)
			{
				System.out.println("nested catch");
			}
			finally
			{
				System.out.println("nested finally");
			}

			System.out.println("outer finally end");
		}
		System.out.println("main end");
	}
}
