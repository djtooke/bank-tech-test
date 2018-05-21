class Account

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def log_transaction(date, credit, debit)
    @balance += credit.to_i
    @balance -= debit.to_i
    @transactions << Transaction.new(date, credit, debit, @balance)
  end

end
