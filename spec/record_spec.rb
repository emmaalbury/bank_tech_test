require 'record'

describe Record do

  let(:transaction) { double :transaction }
  subject(:record) { described_class.new }

  describe '#deposit' do
    it 'returns the current balance of your funds' do
      allow(record).to receive(:date).and_return('11/02/81')
      expect(record.deposit(500)).to eq ({:date=>"11/02/81",
      :credit=>500, :debit=>nil, :balance=>500,})
    end

    it 'throws error if deposit is a negative number' do
      expect{ record.deposit(-300) }.to raise_error('Please enter a positive amount')
    end
  end

  describe '#withdraw' do
    it 'returns the current balance of your funds' do
      allow(record).to receive(:date).and_return('10/11/79')
      expect(record.withdraw(250)).to eq ({:date=>"10/11/79",
      :credit=>nil, :debit=>250, :balance=>-250})
    end
  end

  describe '#add_to_history' do
    it 'returns the last withdraw transaction' do
      allow(record).to receive(:date).and_return('10/03/88')
      expect(record.add_to_history('withdraw', '900')).to eq ({:date=>"10/03/88", :credit=>nil, :debit=>"900", :balance=>0})
    end

    it 'returns the last deposit transaction' do
      allow(record).to receive(:date).and_return('11/02/81')
      expect(record.add_to_history('deposit', '200')).to eq ({:date=>"11/02/81", :credit=>"200", :debit=>nil, :balance=>0})
    end
  end

  describe '#date' do
    it 'returns date of transaction' do
      time = Time.parse("Feb 11 1981")
      expect(Time).to receive(:now).and_return(time)
      expect(record.date).to eq('11/02/81')
    end
  end
end
