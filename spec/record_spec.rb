require 'record'

describe Record do

  subject(:record) { described_class.new }

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
