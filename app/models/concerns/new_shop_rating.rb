class NewShopRating
  attr_writer :new, :old, :count

  def initialize new_hash, old_hash, count
    @new = new_hash
    @old = old_hash
    @count = count
  end

  def rating_for type
    (@new[type] + (@old[type] * @count)) / (@count + 1)
  end

  def self.new_rating(new_rating, current_rating, ratings_count)
    #puts "@@@@@@New Rating: #{new_rating} / Current Rating: #{current_rating}"
    ((new_rating + (current_rating * ratings_count)) / (ratings_count + 1))
  end

end
