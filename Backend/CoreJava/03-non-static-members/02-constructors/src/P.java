class P 
{
	P(int i)
	{
		this();
		System.out.println("P(int)");
	}

	P()
	{
		System.out.println("P()");
	}

	public static void main(String[] args) 
	{
		P obj1 = new P();
		P obj2 = new P(10);
		System.out.println("done");
	}
}
//we can keep this() calling statement inside the constructor body as a first statement
//this() - invokes the current class constructor according to the argument we are passing.
//this() - can be used within a constructor as well as within a method also.
