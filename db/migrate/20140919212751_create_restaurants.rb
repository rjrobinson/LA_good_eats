class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :address, null: false
      t.string :city, null: false
      t.string :name, null: false
      t.string :state, null: false
      t.integer :zip_code, null: false
      t.text :description

      t.timestamps

    end
  end
end
