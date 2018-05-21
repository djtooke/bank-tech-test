require 'account'

describe Account do

  it 'should have an accessible instance variable for balance' do
    expect(subject).to respond_to (:balance)
  end
  
end
