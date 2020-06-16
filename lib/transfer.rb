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
    @sender.valid? && @reciever.valid?
end   
