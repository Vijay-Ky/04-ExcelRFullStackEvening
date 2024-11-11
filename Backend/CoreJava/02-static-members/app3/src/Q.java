class Q
{
	static
	{
		//usage before declaration is not possible (IFR)
		System.out.println(i);
	}

	static int i = 10;

	public static void main(String[] args) 
	{
		System.out.println(i);
	}
}
