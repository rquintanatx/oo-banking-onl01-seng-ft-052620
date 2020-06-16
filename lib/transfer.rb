class Transfer
  attr_reader :sender, :receiver
  
  def initialize(sender, reciever, amt)
    @sender = sender
    @receiver = reciever
  end
end   
