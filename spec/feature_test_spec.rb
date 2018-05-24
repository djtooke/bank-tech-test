require 'account'
require 'printer'
require 'transaction'
require 'formatter'

describe 'Bank' do

  account = Account.new
  account.log_transaction('10/01/2012', 1000, nil)
  account.log_transaction('13/01/2012', 2000, nil)
  account.log_transaction('14/01/2012', nil, 500)
  printer = Printer.new

  it 'should print a statement' do
    expect { printer.print(account.log.history) }.to output("date || credit || debit || balance
14/01/2012 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00
").to_stdout
  end

end
