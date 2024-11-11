class E 
{
	public static void main(String[] args) 
	{
		//label name must be a valid identifier(follow the identifier rules), followed a colon
		//labels can be kept on top any loop(while, do-while, for, for-each)
		//JDK 1.5

		int[] array1 = {1, 2, 3, 4, 5};
		int[] array2 = {10, 20, 30, 40, 50};

		enhance1:
		for (int i : array1)
		{
			System.out.println(i);
			for (int j:  array2)
			{
				System.out.println(j);
				if (j == 40)
				{
					continue enhance1;
				}
			}
		}

		any:
		for (int i = 0; i <= 10; i++)
		{
			System.out.println("outer loop begin");
			for (int j = 0; j <= 10; j++)
			{
				System.out.println("inner loop begin");
				if (j == 5)
				{
					continue any;
				}
				System.out.println("inner loop end");
			}
			System.out.println("outer loop end");
		}
		System.out.println("main end");
	}
}
