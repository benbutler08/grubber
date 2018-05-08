class Restaurant < ApplicationRecord
  has_many :ratings
  mount_uploader :restaurant_pic, RestaurantPicUploader
end
