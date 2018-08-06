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
  if @sender.valid? && @receiver.valid? && @sender.balance >= @amount
    return true
  else
    false
end 
end

def execute_transaction
  counter = 0
  if self.valid? == true && counter = 0
    @receiver.deposit(@amount)
    @sender.balance = @sender.balance - @amount
    @status = 'complete'
    counter += 1
else 
  @status = 'rejected'
  return "Transaction rejected. Please check your account balance."
end 
end 
end 