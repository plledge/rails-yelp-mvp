class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :create_restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :category
      t.string :reviews

      t.timestamps
    end
  end
end