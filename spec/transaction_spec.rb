require 'transaction'

describe Transaction do
  let(:transaction) { Transaction.new }

  describe '#deposit' do
    it 'stores the funds deposited in each transaction' do
      allow($stdin).to receive(:gets).and_return( '500' )
      expect(transaction.deposit).to eq 500
    end
  end

  describe '#withdraw' do
    it 'debits the funds withrawn in each transaction' do
      allow($stdin).to receive(:gets).and_return( '250' )
      expect(transaction.withdraw).to eq 250
    end
  end
end
