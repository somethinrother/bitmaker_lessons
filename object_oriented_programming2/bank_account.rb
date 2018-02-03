class BankAccount
  # # Class Variables
  @@interest_rate = 1.02
  @@accounts = []

  # # Instance Variables
  def initialize
    # puts "What is account owner's name?"
    @balance = 40
    # @owner = gets.chomp
  end

  # # Readers
  def balance
    @balance
  end

  # # Writer
  def change_balance(number)
    @balance = number
  end

  # # Class Methods

  def self.accounts_list
    @@accounts
  end

  def self.create
    account = BankAccount.new
    @@accounts << account
  end

  def self.total_funds
    total = 0

    @@accounts.inject do |account|
      total += account.account_balance
    end

    return total

  end

  def self.interest_time
    @@accounts.map do |account|
      account.change_balance(account.account_balance * @@interest_rate)
    end
  end

  # # Instance Methods
  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end

# # Create 5 accounts
BankAccount.create
BankAccount.create
BankAccount.create
BankAccount.create
BankAccount.create

# # Shows process
puts BankAccount.total_funds # Returns 200
BankAccount.interest_time
puts BankAccount.total_funds # Returns 204
puts BankAccount.accounts_list[3].inspect # Shows the balance of 40.8
