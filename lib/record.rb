require_relative 'transaction'

class Record
  attr_reader :balance

  def initialize
    @transaction = Transaction.new
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance += amount
    add_to_history('deposit', amount)
  end

  def balance_after_withdrawal
    withdraw = @transaction.withdraw
    @balance -= withdraw
    add_to_history('withdraw', withdraw)
  end

  def add_to_history(transaction_type, transaction_amount)
    if transaction_type == 'withdraw'
      @history << { :date => date, :credit => nil, :debit => transaction_amount,
      :balance => @balance }
    else
      @history << { :date => date, :credit => transaction_amount, :debit => nil,
      :balance => @balance }
    end
    return @history[-1]
  end

  def date
    t = Time.now
    date = t.strftime('%d/%m/%y')
    return date
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @history.each do |transaction|
      printed_transaction = "#{transaction[:date].to_s}" + " || " + \
      "#{transaction[:credit].to_s}" + " || " + "#{transaction[:debit].to_s}" \
      + " || " + "#{transaction[:balance].to_s}"
      puts printed_transaction
    end
  end
end
