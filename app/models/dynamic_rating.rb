class DynamicRating < ActiveRecord::Base
  belongs_to :shop, polymorphic: true
  #belongs_to :rateable, polymorphic: true
  
  belongs_to :user
  

end

