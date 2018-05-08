class AddRestaurantPicToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :restaurant_pic, :string
  end
end
