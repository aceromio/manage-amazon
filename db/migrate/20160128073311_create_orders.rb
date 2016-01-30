class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.string :order_id
      t.string :sku
      t.string :asin
      t.string :sold_price
      t.string :fee
      t.string :country
      t.string :volume

      t.timestamps null: false
      t.index [:order_id], unique: true
      t.index [:user_id, :created_at]
    end
  end
end
