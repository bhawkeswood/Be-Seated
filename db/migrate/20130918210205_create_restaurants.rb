class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :price_range
      t.string :menu_url
      t.string :address

      t.timestamps
    end
  end
end
