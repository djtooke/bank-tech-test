require_relative './formatter.rb'

class Printer

  include Formatter

  def print(account)
    puts format(account.transactions)
  end

end
