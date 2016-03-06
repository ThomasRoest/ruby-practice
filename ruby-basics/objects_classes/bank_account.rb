class BankAccount
  attr_reader :name

  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("beginning balance", 0)
  end

  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end

  def credit(description, amount)
    add_transaction(description, amount)
  end

  def debit(description, amount)
    add_transaction(description, -amount)
  end

  def balance
    balance = 0
    @transactions.each do |t|
      balance += t[:amount]
    end
    return balance
  end

  def to_s
    "name: #{name}, balance: #{sprintf("%0.2f", balance)}"
  end

  def separator
    puts "*" * 40
  end

  def print_r
    puts "#{name}'s Bank account"
    separator
    puts "description".ljust(30) +  "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + "\t" + sprintf("%0.2f", transaction[:amount]).rjust(10)
      # ljust for string formatting
    end
    separator
    puts "Balance:".ljust(30) +  sprintf("%0.2f", balance).rjust(10)
    separator
  end
end

bank_account = BankAccount.new("thomas")
bank_account.credit("paycheck", 100)
bank_account.debit("Groceries", 40)
puts bank_account.inspect
bank_account.debit("Groceries", 240)

#sprintf to format the output as a currency output
puts bank_account
puts "register"
bank_account.print_r