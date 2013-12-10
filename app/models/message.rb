class Message
  include ActiveAttr::Model
  
  attribute :name
  attribute :email
  attribute :age
  attribute :goal
  
  validates_presence_of :name
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
  validates :age, numericality: { only_integer: true }
  validates_presence_of :goal


end