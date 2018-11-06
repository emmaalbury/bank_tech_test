class Transaction

  def deposit
    puts "What amount would you like to deposit?"
    deposit = gets.chomp.to_i
  end

  def withdraw
    puts "What amount would you like to withdraw?"
    withdraw = gets.chomp.to_i
  end

  def date
    t = Time.now
    date = t.strftime("%d/%m/%y")
    return date
  end

end
