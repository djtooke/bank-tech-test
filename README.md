# Bank tech test

A tech test which replicates the workings of a simple bank account. I wrote this test in object-oriented Ruby, encapsulating three classes for account, transaction, and printer. This ensures that objects have separate concerns, and can be passed into one another to pass their information up to other objects.

### Installation

* You will need Ruby 2.5.0 installed
* Clone this repository
* Run `bundle install`
* Run `ruby bank_tech_test.rb` and start creating your objects!

### Usage

* To create an account, create a variable set to `account.new`. You can pass in an argument with a number to initialize the account with an opening balance.
* To check your balance, run `.balance` on your account
* To log a transaction, use the `.log_transaction` method. You need to pass it three arguments in order: the date (as a string), a credit value, and a debit value. If crediting, you will probably want to set the debit to nil, and vice versa. For example, to input a credit of 500 on New Year's day 2018, run `.log_transaction(01/01/2018, 500, nil)` on your account variable.
* To print your log of transactions, initialize a new printer object. Run `.print` on your printer object, passing in your account as an argument, and it will output a log of all the transactions made.

![screenshot](https://user-images.githubusercontent.com/35489501/40368075-d6cf8c9e-5dd2-11e8-82de-bb671d26e300.png)

### Testing

* To run unit tests, run `rspec` from the root folder
* To run a feature test, run the `ruby './lib/feature_test.rb'`. This will load a file in which you can `printer.print` to see a result matching the acceptance criteria below.

## Original requirements

The following are the requirements set of this challenge:

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

#### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
