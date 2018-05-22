class Printer

attr_reader :account

  def initialize(account)
    @account = account
  end

  def print
    print_header
    print_transactions
    nil
  end

private

  def print_header
    puts 'date || credit || debit || balance'
  end

  def stringify(transaction)
    @temp_credit = transaction.credit ? '%.2f' % transaction.credit : ""
    @temp_debit = transaction.debit ? '%.2f' % transaction.debit : ""
    @temp_balance = '%.2f' % transaction.balance
  end

  def print_transactions
    @account.transactions.reverse.each do |transaction|
      stringify(transaction)
      puts transaction.date.to_s + " || " + @temp_credit + " || " + @temp_debit + " || " + @temp_balance
    end
  end

end
