class G 
{
	static int counter;

	{
		counter++;//0-1//1-2//2-3//3-4//4-5//5-6
	}

	public static void main(String[] args) 
	{
		G obj1 = new G();
		G obj2 = new G();
		G obj3 = new G();
		G obj4 = new G();
		G obj5 = new G();
		G obj6 = new G();
		System.out.println("Number of Objects that got created for G class is: " + counter);//6
	}
}
