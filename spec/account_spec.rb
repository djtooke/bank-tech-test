require 'account'

describe Account do

  subject(:account) {Account.new(1000)}

  it 'should have an accessible instance variable for balance' do
    expect(subject).to respond_to (:balance)
  end

  it 'should be able to be initialized with a certain balance' do
    expect(account.balance).to eq (1000)
  end

  describe 'log_transaction' do

    it 'should accept a date, credit and debit amount to log transactions' do
    expect(subject).to respond_to(:log_transaction).with(3).arguments
    end

  end

end
