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
      
      # If valid and sufficient funds
      # Remove amount from sender
      # Add amount to receiver
      # Change status to "complete"
      
      # Else
      # Then "Transaction rejected. Please check your account balance."
      # Change status to "rejected"
      
      
    
    if self.valid? && @sender.balance > @amount
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    else #invalid account or insufficient funds 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
    
  end 
  
  def reverse_transfer
    
    # If status is "complete"
      # Remove amount from receiver 
      # Add amount to sender 
      # Change status to "reversed"
      
    # Else (status is "pending" or "rejected")
     # Do nothing
    
  end 
  
  
end 


