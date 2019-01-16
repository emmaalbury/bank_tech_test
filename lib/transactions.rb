require_relative 'statement'
require_relative 'record'

class Transaction

  def initialize
    @record = Record.new
    @statement = Statement.new
  end

  def deposit(amount)
    if amount < 0
      raise 'Please enter a positive amount'
    else
      @record.update_balance(amount)
      @record.add_to_history('deposit', amount)
    end
  end

  def withdraw(amount)
    if amount < 0
      raise 'Please enter a positive amount'
    else
      @record.update_balance(0 - amount)
      @record.add_to_history('withdraw', amount)
    end
  end

  def print_statement
    @statement.print(@record)
  end
end
