class Z 
{
	public static void main(String[] args) 
	{
		String s1 = "abc";
		
		System.out.println(s1.substring(0, 0).length());
		System.out.println(s1.substring(0, 1).length());
		System.out.println(s1.substring(0, 2).length());
		System.out.println(s1.substring(1, 3).length());
		System.out.println(s1.substring(2, 3).length());
	}
}
