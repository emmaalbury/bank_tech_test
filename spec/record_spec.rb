require 'record'

describe Record do

  let(:record) { Record.new(Transaction.new) }

  describe '#balance_after_deposit' do
    it 'returns the current balance of your funds' do
    expect(record.balance_after_deposit).to eq(500)
    end
  end
end
