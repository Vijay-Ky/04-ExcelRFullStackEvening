class D
{
	public static void main(String[] args) 
	{
		//switch or switch condition accepts one argument and search for the matching case, if found, it will execute from that case.
		int i = 3;
		switch(i)
		{
			case 2:
				System.out.println("from case 2");
			    for (int var1 = 1; var1 <= 20; var1++)
			    {
					System.out.println("from case 2: " + var1);
			    }
			case 3:
				System.out.println("from case 3");
			    int j = 1;
				while(j <= 10)
				{
					System.out.println("from case 3: " + j);
					j++;
				}
			case 5:
				System.out.println("from case 5");
			    int k = 100;
				do
			    {
					k++;
					System.out.println("from case 5: " + k);
			    }
			    while (k <= 120);
		}
	}
}
