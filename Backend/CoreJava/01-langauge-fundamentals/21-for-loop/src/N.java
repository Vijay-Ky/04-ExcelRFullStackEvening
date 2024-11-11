class N
{
	public static void main(String[] args)
	{
		int i, j;
		for(i = 0, j = 10; i < 5; i++, j--)
		{
			System.out.println(i + ":" + j);
		}
		System.out.println("main end: " + i + ":" + j);
	}
}
/*
//i = 0, 1, 2, 3, 4, 5
//j = 10, 9, 8, 7, 6, 5

0:10
1:9
2:8
3:7
4:6
main end: 5:5

*/