class HomeController < ApplicationController
  def feed
    @restaurants = Restaurant.all
    @users = User.all
  end

  def users
  	@restaurants = Restaurant.all
  end

  def restaurants
    @restaurants = Restaurant.all
  end
end
