class H
{
	static int test()
	{
		try
		{
			//code
			//int i = 10 / 0;
			//return 10;
		}
		catch (ArithmeticException ex)
		{
			//code
		}
		catch (NullPointerException ex)
		{
			//code
		}
		finally
		{
			return 20;
		}
	}

	public static void main(String[] args) 
	{
		System.out.println(test());
	}
}
