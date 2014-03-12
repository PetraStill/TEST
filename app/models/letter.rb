class Letter < ActiveRecord::Base
  attr_accessible :description, :titel, :user_id
  belongs_to :user
end
