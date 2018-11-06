require 'record'

describe Record do

  let(:transaction) { double :transaction}
  let(:record) { Record.new(transaction) }

  describe '#balance_after_deposit' do
    it 'returns the current balance of your funds' do
      allow(transaction).to receive(:deposit).and_return(500)
      expect(record.balance_after_deposit).to eq(500)
    end
  end

  describe '#balance_after_withdrawal' do
    it 'returns the current balance of your funds' do
      allow(transaction).to receive(:withdraw).and_return(250)
      expect(record.balance_after_withdrawal).to eq(-250)
    end
  end

end
