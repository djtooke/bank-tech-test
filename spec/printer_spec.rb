require 'printer'

describe Printer do

  let(:account) {double :account}
  subject(:printer) {Printer.new(account)}

  it 'should store a given account in an instance variable on initialize' do
    expect(printer.account).to eq (account)
  end

  it 'should be able to print a header' do
    expect{printer.send(:print_header)}.to output('date || credit || debit || balance').to_stdout
  end

end
