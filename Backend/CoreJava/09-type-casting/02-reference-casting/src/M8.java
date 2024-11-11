class M8
{
	public static void main(String[] args)
	{
		Ancestor ancestor = null;
		GrandFather grandFather = null;
		Father father = null;
		Son son = null;

		ancestor =(Ancestor) grandFather;
		grandFather = father;
		father = son;
		Object object = father;
		System.out.println("done");
	}
}