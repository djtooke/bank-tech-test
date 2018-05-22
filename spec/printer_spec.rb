require 'printer'

describe Printer do

  let(:account)       { double :account }
  let(:transaction1)  { double :transaction }
  let(:transaction2)  { double :transaction }
  let(:transaction3)  { double :transaction }

  before (:each) do

    allow(account).to receive(:transactions).and_return([transaction1, transaction2, transaction3])

    allow(transaction1).to receive(:date).and_return('10/01/2012')
    allow(transaction1).to receive(:credit).and_return(1000.00)
    allow(transaction1).to receive(:debit).and_return(nil)
    allow(transaction1).to receive(:balance).and_return(1000.00)

    allow(transaction2).to receive(:date).and_return('13/01/2012')
    allow(transaction2).to receive(:credit).and_return(2000.00)
    allow(transaction2).to receive(:debit).and_return(nil)
    allow(transaction2).to receive(:balance).and_return(3000.00)

    allow(transaction3).to receive(:date).and_return('14/01/2012')
    allow(transaction3).to receive(:credit).and_return(nil)
    allow(transaction3).to receive(:debit).and_return(500.00)
    allow(transaction3).to receive(:balance).and_return(2500.00)
  end

  it 'should be able to print a header' do
    expect { subject.send(:print_header) }.to output('date || credit || debit || balance
').to_stdout
  end

  it 'should iterate over the transactions and print them' do
    expect { subject.send(:print_transactions, account) }.to output("14/01/2012 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00
").to_stdout
  end

  it 'should print the header and transactions together' do
    expect { subject.print(account) }.to output("date || credit || debit || balance
14/01/2012 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00
").to_stdout
  end

end
