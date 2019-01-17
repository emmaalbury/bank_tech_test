require 'record'

describe Record do
  subject(:record) { Record.new }
  let(:transaction) { double('transaction') }

  describe '#update_balance' do
    it 'updates the balance' do
      record.balance = 250
      expect(record.update_balance(750)).to eq(1000)
    end
  end

  describe '#add_to_history' do
    it 'returns the last withdraw transaction' do
      allow(record).to receive(:date).and_return('10/03/88')
      expect(record.add_to_history('withdraw', '900')).to eq ({:date=>"10/03/88", :credit=>nil, :debit=>"900", :balance=>0})
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
