class AddUserIdToDynamicRatings < ActiveRecord::Migration
  def change
    remove_column :dynamic_ratings, :user_id
    add_column :dynamic_ratings, :user_id, :integer
  end
end
