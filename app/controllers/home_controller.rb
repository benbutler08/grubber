class HomeController < ApplicationController
  def feed
    @restaurants = Restaurant.all
    @users = User.all
    @ratings = Rating.all

    @average_rating = 0
    restaurant = params[:restaurant]

    @ratings.each do |rating|
      if rating.restaurant_id == restaurant.id
        @average_rating += rating.score
      end
    end

    @average_rating /= @ratings.length

  end

  def users
  	@restaurants = Restaurant.all
  end

  def now_following
    current_user.following.push(params[:id].to_i)
    current_user.save
    redirect_to show_user_path(id: params[:id])
  end

  def restaurants
    @restaurants = Restaurant.all
    @ratings = Rating.all
  end
end
