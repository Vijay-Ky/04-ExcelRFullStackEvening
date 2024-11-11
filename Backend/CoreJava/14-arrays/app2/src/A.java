class A 
{
	public static void main(String[] args) 
	{
		int[][][] a = new int[2][][];
		
		a[0] = new int[2][];
		a[0][0] = new int[3];
		a[0][1] = new int[2];

		a[1] = new int[2][];
		a[1][0] = new int[2];
		a[1][1] = new int[3];

		
		

		a[1][0][0] = 100;

		System.out.println("Hello World!: " + a[1][0][0]);
	}
}
