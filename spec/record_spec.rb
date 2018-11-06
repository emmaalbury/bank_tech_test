require 'record'

describe Record do

  let(:transaction) { double :transaction }
  let(:record) { Record.new }

  describe '#balance_after_deposit' do
    it 'returns the current balance of your funds' do
      allow(record).to receive(:date).and_return('11/02/81')
      allow(transaction).to receive(:deposit).and_return(500)
      expect(record.balance_after_deposit).to eq ({:balance=>500, :credit=>500,
      :date=>"11/02/81", :debit=>"   "})
    end
  end

  describe '#balance_after_withdrawal' do
    it 'returns the current balance of your funds' do
      allow(record).to receive(:date).and_return('10/11/79')
      allow(transaction).to receive(:withdraw).and_return(250)
      expect(record.balance_after_withdrawal).to eq ({:balance=>-250,
      :credit=>"   ", :date=>"10/11/79", :debit=>250})
    end
  end

  # describe '#print_statement' do
  #   it 'prints out statement' do
  #     allow(record.print_statement).to receive(:date).and_return('06/11/79')
  #     allow(record.print_statement).to receive(:credit).and_return(1000)
  #     allow(record.print_statement).to receive(:debit).and_return(" ")
  #     allow(record.print_statement).to receive(:balance).and_return(1000)
  #     expect(record.print_statement).to eq ('date     || credit || debit  || balance
  #     06/11/79 ||  1000   ||        ||  1000 ')
  #   end
  # end
end
