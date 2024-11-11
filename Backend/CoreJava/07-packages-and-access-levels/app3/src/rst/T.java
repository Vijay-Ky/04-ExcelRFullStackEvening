package rst;
import excelr.N;
class T extends N
{
	T()
	{
		System.out.println("T()");
	}

	public static void main(String[]args)
	{
		T t1 = new T();
		System.out.println("------");	
		T t2 = new T();
		System.out.println("------");	
		T t3 = new T();
		System.out.println("------");	
		T t4 = new T();
		System.out.println("------");	
		System.out.println("done");	
	}
}
 