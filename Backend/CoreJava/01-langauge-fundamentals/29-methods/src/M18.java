class M18
{
	public static void main(String[] args)
	{
		System.out.println("browser begin");
		website();
		website();
		System.out.println("brower end");
	}
	static void website()
	{
		System.out.println("website begin");
		int age = 18;
		if (age == 18)
		{
			return;
		}
		System.out.println("continue website");
	}
}