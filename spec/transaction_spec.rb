require 'transaction'

describe Transaction do

  let(:transaction) { Transaction.new}

  describe '#deposit' do
    it 'stores the funds deposited in each transaction' do
      balance = 500
      expect(transaction.deposit).to eq (500)
    end
  end
end
