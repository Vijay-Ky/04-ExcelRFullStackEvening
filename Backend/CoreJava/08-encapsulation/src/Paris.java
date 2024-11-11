class Eclairs
{
	private String smallChocolate = "choco";

	public String getSmallChocolate()
	{
		return smallChocolate;
	}

	public void setSmallChocolate(String ingredient)
	{
		smallChocolate = ingredient;
	}
}
class Paris
{
	public static void main(String[] args) 
	{
		Eclairs eclairs = new Eclairs();
		//System.out.println(eclairs.smallChocolate);
		System.out.println(eclairs.getSmallChocolate());
		eclairs.setSmallChocolate("salt");
		System.out.println(eclairs.getSmallChocolate());
	}
}