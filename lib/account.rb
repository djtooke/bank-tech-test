class Account

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def log_transaction(date, credit, debit)
    @balance += credit.to_i
    @balance -= debit.to_i
  end

end
