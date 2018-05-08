class HomeController < ApplicationController
  def feed
    @restaurants = Restaurant.all
    @users = User.all
  end

  def users
  end

  def now_following
    current_user.following.push(params[:id].to_i)
    current_user.save
    redirect_to show_user_path(id: params[:id])
  end

  def restaurants
    @restaurants = Restaurant.all
  end
end
