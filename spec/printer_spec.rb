require 'printer'

describe Printer do

  let(:account)       { double(:account, log: log) }
  let(:log)           { double(:log, history:[transaction1, transaction2, transaction3]) }
  let(:transaction1)  { double(:transaction, date: '10/01/2012', credit: 1000.00, debit: nil, balance: 1000.00) }
  let(:transaction2)  { double(:transaction, date: '13/01/2012', credit: 2000.00, debit: nil, balance: 3000.00) }
  let(:transaction3)  { double(:transaction, date: '14/01/2012', credit: nil, debit: 500.00, balance: 2500.00) }

  it 'should print the header and transactions together' do
    expect { subject.print(account) }.to output("date || credit || debit || balance
14/01/2012 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00
").to_stdout
  end

end
