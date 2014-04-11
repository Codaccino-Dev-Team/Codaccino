class RenameAdminIdToUserIdInDynamicRatings < ActiveRecord::Migration
  def change
    rename_column :dynamic_ratings, :admin_id, :user_id
  end
end
