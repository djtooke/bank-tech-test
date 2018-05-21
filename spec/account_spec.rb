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

    it 'should update the balance when adding a credit' do
      account.log_transaction('10/01/2012', 1000, nil)
      expect(account.balance).to eq (2000)
    end

    it 'should update the balance when adding a debit' do
      account.log_transaction('10/01/2012', nil, 500)
      expect(account.balance).to eq (500)
    end

  end

end
