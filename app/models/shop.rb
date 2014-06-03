class Shop < ActiveRecord::Base
  has_many :comments, as: :commentable
  #has_many :dynamic_ratings, :rateable
  has_many :dynamic_ratings

  mount_uploader :shop_image, ShopImageUploader

  validates :name, length: { minimum: 4 }, presence: true

  validates :address, length: { minimum: 8}, presence: true

  validates :site, presence: true

  validates :phone, format: /\A[1-9]\d{2}-\d{3}-\d{4}/
  validates :wifi_up, format: /\d/

  validates :wifi_down, format: /\d/

  validates :outlet_rating, format: /\d/

  validates :noise, format: /\d/

end
