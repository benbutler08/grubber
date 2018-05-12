class Restaurant < ApplicationRecord
  has_many :ratings
  mount_uploader :restaurant_pic, RestaurantPicUploader

  def find_average_rating
    if ratings.count > 0
      sum_of_ratings = []
        ratings.each do |rating|
        sum_of_ratings.push(rating.score)
      end
      averaged_rating = sum_of_ratings.inject(:+)/(sum_of_ratings.length)
    else
      0
    end
  end
end
