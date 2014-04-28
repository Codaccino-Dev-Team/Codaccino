class AddAttributesToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :location, :string
    add_column :user_profiles, :languages, :string
    add_column :user_profiles, :github_profile_link, :string
  end
end
