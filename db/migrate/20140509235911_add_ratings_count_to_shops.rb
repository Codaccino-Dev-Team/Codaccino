class AddRatingsCountToShops < ActiveRecord::Migration
  def change
    add_column :shops, :rating, :integer, :default => 1
    add_column :shops, :ratings_count, :integer, :default => 1
    add_column :shops, :wifi_up_weight, :decimal, :default => 1
    add_column :shops, :wifi_down_weight, :decimal, :default => 1
    add_column :shops, :wifi_noise_weight, :decimal, :default => 1
    add_column :shops, :wifi_outlets_weight, :decimal, :default => 1
  end
end
