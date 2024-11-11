import java.util.ArrayList;
import java.util.Iterator;

public class M39
{
	@SuppressWarnings("unchecked")
	public static void main(String[] args)
	{
		ArrayList list = new ArrayList();
		list.add(90);
		list.add(9);
		list.add(0);
		list.add(40);

		Iterator it = list.iterator();

		it.add(50);
		
		while (it.hasNext())
		{
			System.out.println(it.next());
		}
		

		System.out.println(list);
	}
}
