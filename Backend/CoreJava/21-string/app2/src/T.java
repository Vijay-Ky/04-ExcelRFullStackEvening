class T 
{
	public static void main(String[] args) 
	{
		String s1 = "java is easy and also very popular java";
		//           012345678911234567892123456789312345678
		int i = s1.indexOf("java");
		System.out.println(i);
		int j = s1.indexOf("java", 11);
		System.out.println(j);
	}
}
