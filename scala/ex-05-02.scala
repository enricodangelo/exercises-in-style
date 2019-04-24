class BankAccount {
  private var balance: Int = 0

  def balance {
    balance
  }

  def deposit(x: Int) {
    if (x > 0) {
      balance += x
    }
  }

  def withdraw(x: Int) {
    if (x > 0) {
      balance -= x
    }
  }
}
