class AddTableColumnToRestaurants < ActiveRecord::Migration
  def up
    add_column :restaurants, :description, :text
  end

  def down
    remove_column :restaurants, :description, :text
  end

end
