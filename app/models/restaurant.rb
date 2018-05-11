class Restaurant < ApplicationRecord
  has_many :ratings
  mount_uploader :restaurant_pic, RestaurantPicUploader

  def find_average_rating
    sum_of_ratings = [0]
      ratings.each do |rating|
      sum_of_ratings.push(rating.score)
    end
    averaged_rating = sum_of_ratings.inject(:+)/(sum_of_ratings.length - 1 )
  end
end
