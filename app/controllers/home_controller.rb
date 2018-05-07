class HomeController < ApplicationController
  def feed
  end

  def users
  end

  def restaurants
    @restaurants = Restaurant.all
  end
end
