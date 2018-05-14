class HomeController < ApplicationController
  def feed
    @restaurants = Restaurant.all
    @users = User.all
    @ratings = Rating.all


    @restaurant = Restaurant.first
    @average_rating = @restaurant.find_average_rating
    
  end

  def users
  	@restaurants = Restaurant.all
    @users = User.all
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
