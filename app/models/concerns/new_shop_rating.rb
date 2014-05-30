class NewShopRating

  def self.new_rating(new_rating, current_rating, ratings_count)
    puts "@@@@@@New Rating: #{new_rating} / Current Rating: #{current_rating}"
    ((new_rating + (current_rating * ratings_count)) / (ratings_count + 1))
  end


end