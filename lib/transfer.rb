class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, reciever, amt)
    @sender = sender
    @receiver = reciever
    @status = "pending"
    @amount = amt
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if self.valid? && status == "pending"
      @sender.withdrawal(@amount)
      @receiver.deposit(@amount)
      @status = "complete"
    else 
      @status = "rejected"
    end 
  end 
end   
