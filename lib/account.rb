require_relative './log.rb'

class Account

  attr_reader :log
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
    @log = Log.new
  end

  def log_transaction(date, credit, debit)
    update_balance(credit, debit)
    @log.log_transaction(date, credit, debit, @balance)
  end

  private

  def update_balance(credit, debit)
    @balance += credit.to_i
    @balance -= debit.to_i
  end

end
