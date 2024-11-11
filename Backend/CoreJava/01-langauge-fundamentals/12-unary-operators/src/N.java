class N
{
	public static void main(String[] args)
	{
		int i = 0;
		int j = ++i + i + ++i + i;//1 + 1 +  2 + 2
		i = 0;
		int k = --i + i + --i + i;// -1 + -1 + -2 + -2
		System.out.println(i);//-2
		System.out.println(j);//6
		System.out.println(k);//-6
	}
}
//i = 0, -1, -2
//j = 6
//k = -6