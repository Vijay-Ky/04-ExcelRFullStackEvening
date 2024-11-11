class J
{
	int test()
	{
		try
		{
			//code
			return 10;
		}
		catch (ArithmeticException ex)
		{
			//code
			return 20;
		}
		catch (NullPointerException ex)
		{
			//code
			return 60;
		}
		finally
		{
			//code
			return 30;
		}
		System.out.println("end of main");
	}
}
