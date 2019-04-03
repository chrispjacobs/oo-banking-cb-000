class BankAccount
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  attr_reader :name, :status
  def deposit(value_being_deposited)
    @balance += value_being_deposited
  end
  def display_balance
    @balance
  end
  def valid?
    if self.status == "open" && display_balance > 0
      true
    else
      false
    end
    def close_account
      @status = "closed"
    end
end
