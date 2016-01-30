class AddShipfeeToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :shipfee, :string
  end
end
