class I
{
	public static void main(String[] args)
	{
		boolean flag = !(!(!false != !true));
		if(flag)
		{
			System.out.println("from if");
		}
		System.out.println("end of main");
	}
}