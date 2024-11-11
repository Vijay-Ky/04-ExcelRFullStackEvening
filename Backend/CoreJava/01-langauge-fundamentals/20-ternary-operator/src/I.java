class I
{
	public static void main(String[] args) 
	{
		int firstNum = -5110;
		int secondNum = -2110;
		int thirdNum = -1110;
		int fourthNum = -770;

		int min = (firstNum < secondNum && firstNum < thirdNum && firstNum < fourthNum) ? firstNum : (secondNum < thirdNum && secondNum < fourthNum) ? secondNum : (thirdNum < fourthNum) ? thirdNum : fourthNum;

		System.out.println(min);
	}
}
