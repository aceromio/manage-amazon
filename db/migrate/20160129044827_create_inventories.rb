class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :volume
      t.string :price_per_one
      t.integer :total_price
      t.string :arrived
      t.string :asin
      t.string :jan
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
