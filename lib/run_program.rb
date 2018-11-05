require_relative 'record'
require_relative 'transaction'

def run_program
  transaction = Transaction.new
  record = Record.new(transaction)
  return record
end
