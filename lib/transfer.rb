class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  attr_reader :balance
  
  
def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = 'pending'
end 

def valid?
  if @sender.valid? && @receiver.valid?
    return true
  else
    false
end 
end

def execute_transaction
  if self.valid?
    counter = 0
  until counter == 1 
  @receiver.balance = @receiver.balance + @amount
  @sender.balance = @sender.balance - @amount
  @status = 'complete'
  counter += 1
else 
  @status = 'rejected'
  return
  "Transaction rejected. Please check your account balance."
end 
end 
end
