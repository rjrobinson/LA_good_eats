class ChangeColumnNameInReviews < ActiveRecord::Migration
  def up
    rename_column :reviews, :restaurant_id, :restaurants_id
  end

  def down
    rename_column :reviews, :restaurants_id, :restaurant_id
  end


end
