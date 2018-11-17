require 'record'

describe Record do

  subject(:record) { described_class.new }

  describe '#print_statement' do
    it 'prints out statement' do
      allow(record).to receive(:date).and_return('10/01/2012', '13/01/2012', '14/01/2012')
      record.deposit(1000)
      record.deposit(2000)
      record.withdraw(500)
      expect { record.print_statement }.to output("date || credit || debit || balance\n"\
      "14/01/2012 ||  || 500 || 2500\n"\
      "13/01/2012 || 2000 ||  || 3000\n"\
      "10/01/2012 || 1000 ||  || 1000\n").to_stdout
    end
  end
end
