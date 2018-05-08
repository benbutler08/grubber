class HomeController < ApplicationController
  def feed
    @restaurants = Restaurant.all
    @users = User.all
  end

  def users
  end

  def restaurants
    @restaurants = Restaurant.all
  end
end
