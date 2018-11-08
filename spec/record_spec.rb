require 'record'

describe Record do

  let(:transaction) { double :transaction }
  subject(:record) { described_class.new }
  describe '#balance_after_deposit' do
    it 'returns the current balance of your funds' do
      allow($stdin).to receive(:gets).and_return( '500' )
      allow(record).to receive(:date).and_return('11/02/81')
      expect(record.balance_after_deposit).to eq ({:date=>"11/02/81",
      :credit=>500, :debit=>nil, :balance=>500,})
    end
  end

  describe '#balance_after_withdrawal' do
    it 'returns the current balance of your funds' do
      allow($stdin).to receive(:gets).and_return( '250' )
      allow(record).to receive(:date).and_return('10/11/79')
      expect(record.balance_after_withdrawal).to eq ({:date=>"10/11/79",
      :credit=>nil, :debit=>250, :balance=>-250})
    end
  end

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

# allow(record).to receive_message_chain({}, {}, {}, {}).with(:date),
# .with(:credit).with(:debit).with(:balance).and_return([{ :date => '06/11/79'},
#   { :credit => '06/11/79'}, { :debit => '06/11/79'}, { :balance => '06/11/79'}])
