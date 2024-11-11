class I
{
	public static void main(String[] args)
	{
		for(int i = 1; i <= 5; i++)
		{
			if(i == 2)
			{
				System.out.println("current i value is 2: " + i);
			}
			else if(i == 3)
			{
				System.out.println("current i value is 3: " + i);
			}
			else if(i == 5)
			{
				System.out.println("current i value is 5: " + i);
			}
			else
			{
				System.out.println("current i value is other than 2, 3, 5: " + i);
			}
		}
	}
}
/*
Possibilities
----------------
case 1: if block alone is possible
case 2: one if and correspondigly one else
case 3: one if and any no. of else if blocks
case 4: one if and any no. of else if blocks and at last one else

Impossibilities
----------------
case 1: else alone
case 2: else if alone is not possible
case 3: for one if multiple else block not possible
case 4: one if block after multiple else-ifs then you cant develop more than one else
*/
