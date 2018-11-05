require 'record'

describe Record do

  let(:record) { Record.new(Transaction.new) }

  describe '#update_balance' do
    it 'returns the current balance of your funds' do
    expect(record.update_balance).to eq(500)
    end
  end
end
