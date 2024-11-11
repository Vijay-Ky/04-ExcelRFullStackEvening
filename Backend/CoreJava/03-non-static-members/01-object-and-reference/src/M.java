class M 
{
	int i;//attribute, field, properties, member variable, object member

	public static void main(String[] args) 
	{
		M m1 = new M();
		System.out.println(m1.i);//0
		m1.i = 10;
		System.out.println(m1.i);//10
	}
}
