class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :title
      t.integer :score
      t.text :description
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
