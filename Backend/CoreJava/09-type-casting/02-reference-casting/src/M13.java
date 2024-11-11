class M13
{
	public static void main(String[] args)
	{
		Ancestor ancestor = new GrandFather();
		GrandFather grandFather = (GrandFather)ancestor;
		System.out.println("done");
	}
}