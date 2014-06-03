class DynamicRating < ActiveRecord::Base
  belongs_to :shop, polymorphic: true
  #belongs_to :rateable, polymorphic: true
  
  belongs_to :user
  
  validates_inclusion_of :noise, :in=>[0,1,2,3,4,5], :message =>"Please enter a value from 0 to 5 for Noise rating"
  
  
end

