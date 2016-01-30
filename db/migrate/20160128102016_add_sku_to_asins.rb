class AddSkuToAsins < ActiveRecord::Migration
  def change
    add_column :asins, :sku, :string
  end
end
