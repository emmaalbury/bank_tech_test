| [Set-Up](#set-up) | [Run](#to_run) | [Test](#to_test) | [Technologies](#technologies) | [Specifications](#specifications) | [Features](#features) |

# Bank Tech Test #

A REPL bank program with which users can make financial deposits, withdrawals, see their balance and print a statement.

### <a name="set-up">**To Set-Up**</a>

* Fork this repo
* Clone it in terminal
* cd into the local repo
* run the command bundle install

### <a name="to_run">**To Run**</a>

Enter in the command line:

* irb
* require './lib/transactions.rb'
* transaction = Transaction.new
* to make a deposit -
transaction.deposit(chosen amount)
* to make a withdrawal -
transaction.withdrawal(chosen amount)
* to print a statement -
transaction.print_statement
* control z to close session

### <a name="to_test">**To Test**</a>

Enter in the command line:

* rspec

### <a name="technologies">**Technologies**</a>

Ruby, RSpec, Simplecov, Rubocop

### <a name="specifications">**Specifications**</a>

REQUIREMENTS:

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).


ACCEPTANCE CRITERIA:

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

### <a name="features">**Features**</a>

As a client,
I can make deposits,
so that I can add to my funds.

As a client,
I can withdrawal my money,
so that I can use my money.

As a client,
I can print a statement,
so that I can have a record of my transactions and balance.

As a client,
I can have a record of my transactions saved,
so that I can access my history.

### Improvements

* Encapsulation: some of these methods should be made private.
* Refactor: The methods in the Transaction class and the add_to_history method in
the Record class could be combined as they are currently redundant.
The transaction type and amount could be input as arguments in the add_to_history
method (which would then need to be more appropriately named) rather than having
separate methods for this functionality.
* Instances: I feel my current design choice is backwards. I currently
have one Transaction object that I pass around when really it would make more
sense for me to create multiple instances of Transaction (one for each action).
Considering these objects and their relationship, it would make more sense for
me to pass these instances into Record and Statement as opposed to me currently
passing instances of Record and Statement into the Transaction.
