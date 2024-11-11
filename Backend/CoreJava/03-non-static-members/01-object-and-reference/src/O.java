class O 
{
	int i;

	public static void main(String[] args) 
	{
		O o1 = new O();
		O o2 = o1;
		O o3 = o2;
		O o4 = o3;
		System.out.println(o1.i);
		System.out.println(o2.i);
		System.out.println(o3.i);
		System.out.println(o4.i);
		System.out.println("---------");
		o1.i = 10;
		System.out.println(o1.i);
		System.out.println(o2.i);
		System.out.println(o3.i);
		System.out.println(o4.i);
		System.out.println("---------");
		o2.i = 20;
		System.out.println(o1.i);
		System.out.println(o2.i);
		System.out.println(o3.i);
		System.out.println(o4.i);
		System.out.println("---------");
		o3.i = 30;
		System.out.println(o1.i);
		System.out.println(o2.i);
		System.out.println(o3.i);
		System.out.println(o4.i);
		System.out.println("---------");
		o4.i = 40;
		System.out.println(o1.i);
		System.out.println(o2.i);
		System.out.println(o3.i);
		System.out.println(o4.i);
		System.out.println("done");
	}
}
