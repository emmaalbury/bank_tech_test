require_relative 'transaction'

class Record
  attr_reader :balance

  def initialize
    @transaction = Transaction.new
    @balance = 0
    @statement = []
  end

  def balance_after_deposit
    deposit = @transaction.deposit
    @balance += deposit
    update_statement('deposit', deposit)
  end

  def balance_after_withdrawal
    withdraw = @transaction.withdraw
    @balance -= withdraw
    update_statement('withdraw', withdraw)
  end

  def update_statement(transaction_type, transaction_amount)
    if transaction_type == 'withdraw'
      @statement << { :date => date, :credit => nil, :debit => transaction_amount,
      :balance => @balance }
    else
      @statement << { :date => date, :credit => transaction_amount, :debit => nil,
      :balance => @balance }
    end
    return @statement[-1]
  end

  def date
    t = Time.now
    date = t.strftime('%d/%m/%y')
    return date
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @statement.each do |transaction|
      printed_transaction = "#{transaction[:date].to_s}" + " || " + \
      "#{transaction[:credit].to_s}" + " || " + "#{transaction[:debit].to_s}" \
      + " || " + "#{transaction[:balance].to_s}"
      puts printed_transaction
    end
  end
end
