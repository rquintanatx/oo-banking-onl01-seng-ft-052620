class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver
  
  def initialize(sender, reciever, amt)
    @sender = sender
    @receiver = reciever
    @status = "pending"
  end
end   
