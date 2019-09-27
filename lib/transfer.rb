class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    if @sender.valid? && @receiver.valid? 
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    
    # Execute transaction
      
      # Unless invalid account or insufficient funds 
      # Then "Transaction rejected. Please check your account balance."
      # Change status to "rejected"
      
      # If valid and sufficient funds
      # Remove amount from sender
      # Add amount to receiver
      # Change status to "complete"
    
    
    
  end 
  
  def reverse_transfer
  
  
  end 
  
  
end 


