require 'record'

describe Record do

  let(:transaction) { double :transaction }
  subject(:record) { described_class.new }

  describe '#print_statement' do
    it 'prints out statement' do
      allow(record).to receive(:date).and_return('06/11/79')
      allow($stdin).to receive(:gets).and_return( '1000' )
      record.balance_after_deposit
      expect { record.print_statement }.to output("date || credit || debit || balance\n"\
      "06/11/79 || 1000 ||  || 1000\n").to_stdout
    end
  end
end
