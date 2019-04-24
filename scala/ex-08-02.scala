class BankAccount(var initialBalance: Double) {
  private var balance = initialBalance

  def deposit(amount: Double) = {
    balance += amount
    balance
  }

  def withdraw(amount: Double) = {
    balance -= amount
    balance
  }
}

class SavingsAccount(var initialBalance: Double = 0, var commission: Double = 1.0, val interestRateYear: Double = 0.10, var freeOperations: Int = 3) extends BankAccount(initialBalance) {
  private var currentFreeOperations: Int = 0

  def earlyMonthEarnings = {
    currentFreeOperations = 0
    super.deposit(balance * interestRateYear / 12)
  }

  def deposit(amount: Double) = {
    if (currentFreeOperations < freeOperations) {
      currentFreeOPerations += 1
    } else {
      amount -= commission
    }
    balance += amount
    balance
  }

  def withdraw(amount: Double) = {
    if (currentFreeOperations < freeOperations) {
      currentFreeOPerations += 1
    } else {
      amount += commission
    }
    balance -= amount
    balance
  }

}
