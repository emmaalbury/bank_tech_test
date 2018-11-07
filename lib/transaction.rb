class Transaction

  def deposit
    puts 'What amount would you like to deposit?'
    deposit = $stdin.gets.chomp.to_i
  end

  def withdraw
    puts 'What amount would you like to withdraw?'
    withdraw = $stdin.gets.chomp.to_i
  end
end
