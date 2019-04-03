class Transfer
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = "pending"
  end
  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end
  def execute_transaction
    if @status == "pending" && self.valid? == true
      @sender.deposit(-@transfer_amount)
      @receiver.deposit(@transfer_amount)
      @status = "complete"
    end
  end
  def reverse_transfer
    if @status == "complete"
      @sender.deposit(@transfer_amount)
      @receiver.deposit(@transfer_amount)
    end
  end
end
