class M11
{
	public static void main(String[] args)
	{
		Ancestor ancestor1 = (Ancestor) new GrandFather();//doing explicitly
		Ancestor ancestor2 = new GrandFather();
		Father father1 = new Father();
		Father father2 = (Father) new Son();//doing explicitly
		System.out.println("done");
	}
}