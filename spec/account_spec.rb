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

  it 'should have a log object to store the transactions history' do
    expect(account.log).to be_instance_of Log
  end

  it 'should update the balance when adding a credit' do
    expect{ account.log_transaction('10/01/2012', 1000, nil) }.to change { account.balance }.by(1000)
  end

  it 'should update the balance when adding a debit' do
    expect{ account.log_transaction('14/01/2012', nil, 500) }.to change { account.balance }.by(-500)
  end

end
