class Ting < ActiveRecord::Base
  attr_accessible :name, :qty
  
  validates :name,
    :presence => true,
    :length => {:maximum => 50},
    :uniqueness => true
    
  validates :qty,
    :presence => true,
    :numericality => {:greater_than => 0, :less_than => 1000001, :only_integer => true}
    
end
