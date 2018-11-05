require 'transaction'

describe Transaction do

  describe '#deposit' do
    it 'stores the funds deposited in each transaction' do
      transaction = Transaction.new
      expect(transaction.deposit('$500.00')).to eq ([{deposit: '$500.00'}])
    end
  end
end
