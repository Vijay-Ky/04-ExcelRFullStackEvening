class Z
{
	public static void main(String[] args) 
	{
		//int a = 8;
		//a= 8, 9, 10, 9, 8
	     //  8  + 10  - 10  + 8
		 //  16
		//a = a++ + ++a - a-- + --a;
		//System.out.println(a);
		int i, j;
		for (i = 1; i <= 5; i++)
		{
			for (j = 1; j <= i; j++)
			{
				System.out.print("*");
			}
			System.out.println();
		}
	}
}