class AddShipfeeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :shipfee, :string
  end
end
