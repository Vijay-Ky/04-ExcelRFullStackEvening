import java.util.Scanner;
public class BankAccount
{
    private int balance;

    public BankAccount(int initialBalance) {
        assert initialBalance >= 0 : "Initial balance must be non-negative";
        this.balance = initialBalance;
    }

    public void deposit(int amount) {
        assert amount > 0 : "Deposit amount must be positive";
        balance += amount;
    }

    public void withdraw(int amount) {
        assert amount > 0 : "Withdrawal amount must be positive";
        assert balance - amount >= 0 : "Insufficient funds"	;
        balance -= amount;
    }

	public static void main(String[] args) 
	{
		BankAccount ba = new BankAccount(10000);
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter withdraw amount");
		int i = sc.nextInt();
		ba.withdraw(i);
		System.out.println("Enter deposit amount");
		int j = sc.nextInt();
		ba.deposit(j);
		System.out.println("Enter withdraw amount");
		int k = sc.nextInt();
		ba.withdraw(k);
		System.out.println("Enter withdraw amount");
		int l = sc.nextInt();
		ba.withdraw(l);
	}
}
