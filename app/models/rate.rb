class Rate < ActiveRecord::Base
   default_value_for :stars, 1
   belongs_to :rater, :class_name => "User"
   belongs_to :rateable, :polymorphic => true

   attr_accessible :rate, :dimension,:rater_id ,:rateable_id,:rateable_type,:stars
   
end
