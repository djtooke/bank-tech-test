class Printer

attr_reader :account

  def initialize(account)
    @account = account
  end

private

  def print_header
    print 'date || credit || debit || balance'
  end

end
