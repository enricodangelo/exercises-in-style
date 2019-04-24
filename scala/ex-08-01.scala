class BankAccount(var initialBalance: Double) {
  //private var balance = initialBalance

  def deposit(amount: Double) = {
    balance += amount; balance
  }
  
  def withdraw(amount: Double) = {
    balance -= amount; balance
  }
}

class CheckingAccount(var initialBalance: Double) extends BankAccount(initialBalance) {
  override def deposit(amount: Double) = {
    super.deposit(amount - 1)
  }

  override def withdraw(amount: Double) {
    super.withdraw(amount + 1)
  }
}
/*
class CheckingAccount(initialBalance: Double = 0, commission: Double = 1.0) extends BanckAccount(initialBalance) {
  override def deposit(amount: Double) = {
    super.deposit(amount - commission)
  }

  override def withdraw(amount: Double) {
    super.withdraw(amount + commission)
  }
}
*/
