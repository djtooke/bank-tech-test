require 'account'

describe Account do

  subject(:account)        { Account.new(1000) }
  let(:Transaction)        { double :Transaction }
  let(:transaction_double) { double :transaction }

  before :each do
    allow(Transaction).to receive(:new).and_return(transaction_double)
  end

  it 'should have an accessible instance variable for balance' do
    expect(subject).to respond_to :balance
  end

  it 'should be able to be initialized with a certain balance' do
    expect(account.balance).to eq 1000
  end

  it 'should have an array to store the transactions log' do
    expect(account.transactions).to be_instance_of Array
  end

  describe 'log_transaction' do

    it 'should accept a date, credit and debit amount to log transactions' do
      expect(subject).to respond_to(:log_transaction).with(3).arguments
    end

    it 'should update the balance when adding a credit' do
      account.log_transaction('10/01/2012', 1000, nil)
      expect(account.balance).to eq 2000
    end

    it 'should update the balance when adding a debit' do
      account.log_transaction('10/01/2012', nil, 500)
      expect(account.balance).to eq 500
    end

    it 'should create a Transaction object and push it to the transactions array' do
      account.log_transaction('10/01/2012', 1000, nil)
      expect(account.transactions[0]).to eq transaction_double
    end

  end

end
