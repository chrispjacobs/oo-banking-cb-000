class BankAccount
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  attr_reader :name, :balance
  def deposit(value_being_deposited)
    @balance += value_being_deposited
  end
end
