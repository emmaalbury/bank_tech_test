require 'statement'

describe Statement do

  let(:transaction) { { date: '14/01/2012', credit: '100.00', debit: nil, balance: '100.00' } }
  let(:record) { double('record', history: [transaction]) }

  describe '#print' do
    it 'prints out statement' do
      expected_output = "date || credit || debit || balance\n14/01/2012 || 100.00 ||  || 100.00\n"
      expect { subject.print(record) }.to output(expected_output).to_stdout
    end
  end
end
