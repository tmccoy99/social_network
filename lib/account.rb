class Account

  attr_accessor :id, :username, :email_address

  def initialize(username = nil, email_address = nil, id = nil)
    @username = username ; @email_address = email_address ; @id = id
  end
  
end