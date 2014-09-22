class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :rating , null: false
      t.integer :restaurant_id, null: false

      t.timestamps
    end
  end
end
