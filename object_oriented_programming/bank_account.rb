puts "-----EXERCISE 1: BANK ACCOUNT-----"

class BankAccount
  def initialize
    @balance =  0
    @interest_rate = 1.02
  end

  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def deposit(amount)
    @balance = @balance + amount
    puts "Your new balance is $#{balance}."
  end

  def withdraw(amount)
    @balance = @balance - amount
    if @balance < 0
      puts "You are in overdraft by $#{balance.abs}."
    else
      puts "Your new balance is $#{balance}."
    end
  end

  def gain_interest
    @balance = balance * interest_rate
  end

end

james_acct = BankAccount.new

james_acct.deposit(902)
james_acct.withdraw(300)
james_acct.gain_interest

puts james_acct.balance
