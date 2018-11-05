require 'record'

describe Record do

  let(:record) { Record.new}

  describe '#balance' do
    it 'returns the current balance of your funds' do
    expect(record.balance).to eq(500)
    end
  end
end
