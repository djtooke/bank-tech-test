require 'transaction'

describe Transaction do

  subject(:credit_transaction) {Transaction.new('10/01/2012', 1000.00, nil, 2000.00)}
  subject(:debit_transaction) {Transaction.new('14/01/2012', nil, 500.00, 500.00)}


  it 'should store the transaction date' do
    expect(credit_transaction.date).to eq ('10/01/2012')
  end

  it 'should store the transaction credit' do
    expect(credit_transaction.credit).to eq (1000.00)
  end

  it 'should store the transaction debit' do
    expect(debit_transaction.debit).to eq (500.00)
  end

  it 'should store the balance after the transaction has happened' do
    expect(credit_transaction.balance).to eq (2000.00)
  end
  
end
