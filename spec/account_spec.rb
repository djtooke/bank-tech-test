require 'account'

describe Account do

  subject(:account) {Account.new(1000)}

  it 'should have an accessible instance variable for balance' do
    expect(subject).to respond_to (:balance)
  end

  it 'should be able to be initialized with a certain balance' do
    expect(account.balance).to eq (1000)
  end
  
end
