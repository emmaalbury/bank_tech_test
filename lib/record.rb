class Record
  attr_reader :history
  attr_accessor :balance

  def initialize
    @history = []
    @balance = 0
  end

  def update_balance(amount)
    @balance += amount
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
end
