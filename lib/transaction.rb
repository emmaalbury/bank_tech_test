class Transaction
  def initialize
    @statement = []
  end

  def deposit
    puts 'What amount would you like to deposit?'
    deposit = gets.chomp.to_i
    @statement << { :date => date, :credit => deposit }
  end

  def withdraw
    puts 'What amount would you like to withdraw?'
    withdraw = gets.chomp.to_i
    @statement << { :date => date, :debit => withdraw }
  end

  def date
    t = Time.now
    date = t.strftime('%d/%m/%y')
    return date
  end
  # date || credit || debit || balance
  # 14/01/2012 || || 500.00 || 2500.00
  # 13/01/2012 || 2000.00 || || 3000.00
  # 10/01/2012 || 1000.00 || || 1000.00
end
