class U 
{
	public static void main(String[] args) 
	{
		int i;
		int j = 10 + (i = 20) + i;
		System.out.println(i);
		System.out.println(j);
	}
}
