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
    
    if (self.valid?) && (@sender.balance > @amount) && (@status != "complete")
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    else #invalid account or insufficient funds 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
    
  end 
  
  def reverse_transfer
    
     if @status == "complete"
       @receiver.balance -= @amount 
       @sender.balance += @amount 
       @status = "reversed"
     end 
    
  end 
  
end 


