require "pry"

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
    binding.pry
    if self.valid? && status == "pending" && @sender.balance >= @amount
      @sender.withdrawal(@amount)
      @receiver.deposit(@amount)
      @status = "complete"
    else 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end 
end   
