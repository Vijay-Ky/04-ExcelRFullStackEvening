class V 
{
	public static void main(String[] args) 
	{
		double d = 20.9;
		short f = (short)(int)(double)(byte)(short)(int)(long)(double)(float)(double)d;
		System.out.println("f: " + f);
	}
}
