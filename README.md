# Bank Tech  Test

HOW TO USE THIS PROGRAM:

To install:

* Fork this repo
* Clone it in terminal
* cd into the local repo
* run the command bundle install

To run the program:

run these commands -

* irb
* require './lib/run_program'
* run = run_program
* call chosen method on run variable i.e to make a deposit and see the balance run.balance_after_deposit, to make a withdrawal and see the balance
run.balance_after_withdrawal or to print a statement run.print_statement
* control z to close session

To run tests:
run these commands -
rspec

rubocop

SPECIFICATION:

Requirements -
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

Acceptance criteria -
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

FEATURES:

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
