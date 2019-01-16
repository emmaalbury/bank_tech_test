require 'transactions'

describe 'Transaction' do

  subject(:transaction) { Transaction.new }
  let(:record) { double('record') }

  before(:each) do
    allow(record).to receive(:date).and_return('11/02/81')
  end

  describe '#deposit' do
    it 'returns the balance of funds after deposit' do
      time = Time.parse("Feb 11 1981")
      expect(Time).to receive(:now).and_return(time)
      expect(transaction.deposit(500)).to eq ({:date=>"11/02/81",
      :credit=>500, :debit=>nil, :balance=>500,})
    end

    it 'throws error if deposit is a negative number' do
      expect{ transaction.deposit(-300) }.to raise_error('Please enter a positive amount')
    end
  end

  describe '#withdraw' do
    it 'returns the balance of funds after withdrawal' do
      time = Time.parse("Feb 11 1981")
      expect(Time).to receive(:now).and_return(time)
      expect(transaction.withdraw(250)).to eq ({:date=>"11/02/81",
      :credit=>nil, :debit=>250, :balance=>-250})
    end

    it 'throws error if withdrawal is a negative number' do
      expect{ transaction.withdraw(-650) }.to raise_error('Please enter a positive amount')
    end
  end
end
