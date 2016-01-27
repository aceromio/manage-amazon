class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_id
      t.string :sku
      t.string :asin
      t.string :sold_price
      t.string :fee

      t.timestamps null: false
      t.index [:order_id], unique: true
    end
  end
end
