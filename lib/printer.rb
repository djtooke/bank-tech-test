require_relative './formatter.rb'

class Printer

  include Formatter

  def print(account)
    puts format(account.log.history)
  end

end
