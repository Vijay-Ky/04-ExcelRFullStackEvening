class T 
{
	int i;

	static T test()
	{
		T t1 = new T();
		t1.i = 10;
		return t1;
	}

	public static void main(String[] args) 
	{
		//Object reference we are supplying throuh a method return value.
		T obj = test();
		System.out.println("from main: " + obj.i);
	}
}
