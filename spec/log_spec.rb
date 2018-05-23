require 'log'

describe Log do

  let(:account)            { double :account }
  let(:Transaction)        { double :Transaction }
  let(:transaction_double) { double :transaction }

  before :each do
    allow(Transaction).to receive(:new).and_return(transaction_double)
    allow(account).to receive(:update_balance)
    allow(account).to receive(:balance).and_return(1000)
  end

  it 'should accept a date, credit and debit amount to log transactions' do
    expect(subject).to respond_to(:log_transaction).with(4).arguments
  end

  it 'should create a Transaction object and push it to the transactions array' do
    subject.log_transaction('10/01/2012', 1000, nil, account)
    expect(subject.history[0]).to eq transaction_double
  end

end
