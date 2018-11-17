class Record
  attr_reader :balance

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    if amount < 0
      raise 'Please enter a positive amount'
    else
      @balance += amount
      add_to_history('deposit', amount)
    end
  end

  def withdraw(amount)
    if amount < 0
      raise 'Please enter a positive amount'
    else
      @balance -= amount
      add_to_history('withdraw', amount)
    end
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
    @history.reverse_each do |transaction|
      printed_transaction = "#{transaction[:date].to_s}" + " || " + \
      "#{transaction[:credit].to_s}" + " || " + "#{transaction[:debit].to_s}" \
      + " || " + "#{transaction[:balance].to_s}"
      puts printed_transaction
    end
  end
end
