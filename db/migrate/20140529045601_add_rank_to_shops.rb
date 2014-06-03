class AddRankToShops < ActiveRecord::Migration
  def change
    add_column :shops, :rank, :decimal, :length=>4, :place=>2
  end
end
