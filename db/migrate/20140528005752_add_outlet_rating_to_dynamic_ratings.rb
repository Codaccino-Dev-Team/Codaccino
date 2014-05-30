class AddOutletRatingToDynamicRatings < ActiveRecord::Migration
  def change
    add_column :dynamic_ratings, :outlet_rating, :integer
  end
end
