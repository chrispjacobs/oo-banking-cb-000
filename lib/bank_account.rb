class BankAccount
  def initialize(name)
    @name = name
    @balance = 1000
  end
  attr_reader :name, :balance
end
