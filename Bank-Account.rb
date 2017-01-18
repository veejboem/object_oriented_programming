class BankAccount
  attr_reader :balance
  attr_writer :interest_rate
  attr_accessor "balance", "interest_rate"

  def initialize
    @balance = balance
    @interest_rate = interest_rate
  end
end

account = BankAccount.new

class Deposit
  def deposit(amount)
    @deposit = amount + :balance
  end
end

deposit = Deposit.new
