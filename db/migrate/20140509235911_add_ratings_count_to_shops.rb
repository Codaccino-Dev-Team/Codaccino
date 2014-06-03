class AddRatingsCountToShops < ActiveRecord::Migration
  def change
    add_column :shops, :rating, :integer, :default => 1
    add_column :shops, :ratings_count, :integer, :default => 1
  end
end
