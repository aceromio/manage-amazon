class AddPriceToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :price, :string
  end
end
