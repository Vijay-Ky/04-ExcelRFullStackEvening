class F
{
	public static void main(String[] args) 
	{
		int firstNum = 5;
		int secondNum = 0;
		int thirdNum = 10;
		if(firstNum < secondNum && firstNum < thirdNum)
		{
			System.out.println("Among firstNum, secondNum, thirdNum : " + firstNum + " is minimum");
		}
		else if(secondNum < thirdNum)
		{
			System.out.println("Among firstNum, secondNum, thirdNum : " + secondNum + " is minimum");
		}
		else
		{
			System.out.println("Among firstNum, secondNum, thirdNum : " + thirdNum + " is minimum");
		}
	}
}
