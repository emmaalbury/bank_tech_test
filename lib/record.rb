class Record

  attr_reader :balance

  def initialize(transaction)
    @transaction = transaction
    @balance = 0
  end

  def update_balance
    @balance += @transaction.deposit
  end

end
