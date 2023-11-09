class BankAccount {
  String accountNumber;
  double balance;
  DateTime dateOfOpening;
  String customerName;

  BankAccount({
    required this.accountNumber,
    required this.balance,
    required this.dateOfOpening,
    required this.customerName,
  });

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposit of \$${amount.toStringAsFixed(2)} successful.');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrawal of \$${amount.toStringAsFixed(2)} successful.');
    } else if (amount > balance) {
      print('Insufficient funds.');
    } else {
      print('Invalid withdrawal amount.');
    }
  }

  void checkBalance() {
    print('Account Number: $accountNumber');
    print('Customer Name: $customerName');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
    print('Date of Opening: $dateOfOpening');
  }
}

void main() {
  BankAccount myAccount = BankAccount(
      accountNumber: "123456789",
      balance: 1000.0,
      dateOfOpening: DateTime.now(),
      customerName: "John Doe");

  myAccount.checkBalance();

  myAccount.deposit(500.0);
  myAccount.withdraw(200.0);
  myAccount.withdraw(2000.0); 
  myAccount.checkBalance();
}
