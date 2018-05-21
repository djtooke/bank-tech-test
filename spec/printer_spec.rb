require 'printer'

describe Printer do

  let(:account) {double :account}

  it 'should store a given account in an instance variable on initialize' do
    printer = Printer.new(account)
    expect(printer.account).to eq (account)
  end

end
