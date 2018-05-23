require_relative './transaction.rb'

class Log

  attr_reader :history

  def initialize
    @history = []
  end

  def log_transaction(date, credit, debit, balance)
    @history << Transaction.new(date, credit, debit, balance)
  end

end
