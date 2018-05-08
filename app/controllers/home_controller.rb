class HomeController < ApplicationController
  def feed
  end

  def users
  	@restaurants = Restaurant.all
  end

  def restaurants
    @restaurants = Restaurant.all
  end
end
