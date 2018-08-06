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
  counter = 0
  while self.vaild? == true && counter = 0
  @receiver.balance = @receiver.balance + @amount
  @sender.balance = @sender.balance - @amount
  @status = 'complete'
  counter += 1
end 
else 
  @status = 'rejected'
end 
end 
