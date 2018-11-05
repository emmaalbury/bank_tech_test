require 'record'

describe Record do

  let(:record) { Record.new}

  describe '#balance' do
    it 'returns the current balance of your funds' do
    balance = 500
    expect(record.balance).to eq('Your current balance is $500')
    end
  end
end
