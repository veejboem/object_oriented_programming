class BankAccount
  attr_accessor :balance, :interest_rate, :amount

  def initialize (balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance = (@balance * @interest_rate) + @balance
  end
end
