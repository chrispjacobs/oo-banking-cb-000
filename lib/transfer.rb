class Transfer
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = "pending"
    @completed = false
  end
  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end
  def execute_transaction
    if @completed == false && self.valid? == true
      @sender.deposit(-@transfer_amount)
      @receiver.deposit(@transfer_amount)
      @completed = true
    end
  end
end
