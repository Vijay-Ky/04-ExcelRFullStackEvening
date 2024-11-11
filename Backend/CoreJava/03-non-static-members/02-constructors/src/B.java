class B 
{
	B()
	{
		System.out.println("B()");
	}

	public static void main(String[] args) 
	{
		B b1 = new B();
		System.out.println("done");
	}
}

/*
1. if at least one constructor kept by the user then compiler will not be keeping default constructor. 
2. Constructor name should be same as class name.
3. Constructors cant have a return type.
4. Constructors are not normal methods but internally they are speacial kind of methods.
5. Constructor is a non-static
6. Constructors are used to initialize the objects.
7. Constructors can take any no. of arguments.
8. Constructors must be having a body.
9. We can develop any no. of valid statments inside the constructor body.
10. In one class we can develop any no. of constructors but arguments must be different.
11. Constructors must be developed within the class and outside of any method or block.
*/
