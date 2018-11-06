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
# date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00
