class Transaction

  def deposit(balance)
    puts "What amount would you like to deposit?"
    deposit = gets.chomp
    balance += deposit
  end

end
