require_relative './account.rb'
require_relative './printer.rb'
require_relative './transaction.rb'
require_relative './formatter.rb'

require 'pry'
require 'irb'

account = Account.new
account.log_transaction('10/01/2012', 1000, nil)
account.log_transaction('13/01/2012', 2000, nil)
account.log_transaction('14/01/2012', nil, 500)
printer = Printer.new

binding.irb
