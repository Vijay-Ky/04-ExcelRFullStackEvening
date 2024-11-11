//Token - is just a bunch of characters without space.

import java.util.Scanner;
class Facebook
{
	public static void main(String[] args) 
	{
		System.out.println("Welcome to Facebook! Please Register");
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter your First Name");
		String firstName = sc.next();

		System.out.println("Enter your sir name");
		String sirName = sc.next();

		System.out.println("Enter your Mobile Number");
		long mobileNumber = sc.nextLong();

		System.out.println("Enter your Email ID");
		String emailId = sc.next();

		System.out.println("Enter new password");
		String newPassword = sc.next();

		System.out.println("Enter your DOB");
		String dateOfBirth = sc.next();

		System.out.println("Enter your Gender");
		String gender = sc.next();

		System.out.println("Enter your Salary");
		double salary = sc.nextDouble();

		System.out.println("Enter your First initials");
		String firstInitial = sc.next();

		System.out.println("Enter your Favorite qoute");
		sc.nextLine();
		String qoute = sc.nextLine();

		System.out.println("Are you Alive?");
		boolean status = sc.nextBoolean();

		System.out.println("\n__________________________________________________\nYour details are listed below\n" +
		"First Name: " + firstName + "\n" + 
		"Sir Name: " + sirName + "\n" +
		"Mobile Number: " + mobileNumber + "\n" +
		"Email ID: " + emailId + "\n" +
		"Password: " + newPassword + "\n" +
		"Date Of Birth: " + dateOfBirth + "\n" +
		"Salary: " + salary + "\n" +
		"First Initial: " + firstInitial + "\n" +
		"Qoute: " + qoute + "\n" +
		"Are you Alive?: " + status);


		sc.close();
	}
}

		



		


