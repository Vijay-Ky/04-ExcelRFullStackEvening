class I
{
	public static void main(String[] args) throws ClassNotFoundException
	{
		System.out.println("main begin");
		if (true)
		{
			throw new ClassNotFoundException();

			/*
			try
			{
				throw new ClassNotFoundException();
			}
			catch (ClassNotFoundException ex)
			{
			}*/
		}
		System.out.println("main end");
	}
}
