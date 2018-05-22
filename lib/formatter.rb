module Formatter

  HEADER = "date || credit || debit || balance\n"

  def format(transactions)
    format_transactions(transactions)
    (HEADER + @formatted_transactions)
  end

  private

  def format_transactions(transactions)
    @formatted_transactions = ""
    transactions.reverse.each do |transaction|
      decimalise(transaction)
      @formatted_transactions << "#{transaction.date} || #{@temp_credit} || #{@temp_debit} || #{@temp_balance}\n"
    end
  end

  def decimalise(transaction)
    @temp_credit = transaction.credit ? '%.2f' % transaction.credit : ""
    @temp_debit = transaction.debit ? '%.2f' % transaction.debit : ""
    @temp_balance = '%.2f' % transaction.balance
  end

end
