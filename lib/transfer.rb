class Transfer
  attr_reader :sender
  
  def initialize(sender, recv_bank, amt)
    @sender = sender
  end
end   
