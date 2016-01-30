class CreateSkus < ActiveRecord::Migration
  def change
    create_table :skus do |t|
      t.string :sku
      t.string :asin
      t.string :jan
      t.string :uk
      t.string :de
      t.string :fr
      t.string :it
      t.string :es
      t.string :us
      t.string :ca
      t.string :mx
      t.string :jp

      t.timestamps null: false
    end
  end
end
