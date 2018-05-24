require_relative './formatter.rb'

class Printer < Formatter

  def print(account)
    puts format(account.log.history)
  end

end
