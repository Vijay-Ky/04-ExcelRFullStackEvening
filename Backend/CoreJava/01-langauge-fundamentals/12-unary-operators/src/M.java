class M
{
	public static void main(String[] args)
	{
		int i = 0;
		//      1   + 2   +  3  + 3
		int j = ++i + ++i + ++i + i;
		System.out.println(i);//3
		System.out.println(j);//9
	}
}