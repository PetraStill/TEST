class User < ActiveRecord::Base
  attr_accessible :age, :name, :surname
  has_many :letters
end
