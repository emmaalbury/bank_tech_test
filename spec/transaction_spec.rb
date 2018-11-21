require 'record'

describe '#deposit' do
  it 'returns the balance of funds after deposit' do
    allow(record).to receive(:date).and_return('11/02/81')
    expect(record.deposit(500)).to eq ({:date=>"11/02/81",
    :credit=>500, :debit=>nil, :balance=>500,})
  end

  it 'throws error if deposit is a negative number' do
    expect{ record.deposit(-300) }.to raise_error('Please enter a positive amount')
  end
end

describe '#withdraw' do
  it 'returns the balance of funds after withdrawal' do
    allow(record).to receive(:date).and_return('10/11/79')
    expect(record.withdraw(250)).to eq ({:date=>"10/11/79",
    :credit=>nil, :debit=>250, :balance=>-250})
  end

  it 'throws error if withdrawal is a negative number' do
    expect{ record.withdraw(-650) }.to raise_error('Please enter a positive amount')
  end
end
