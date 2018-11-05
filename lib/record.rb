class Record

  attr_reader :balance

  def initialize(transaction)
    @transaction = transaction
    @balance = 0
  end

  def balance_after_deposit
    @balance += @transaction.deposit
  end

  def balance_after_withdrawal
    @balance -= @transaction.withdraw
  end

end
