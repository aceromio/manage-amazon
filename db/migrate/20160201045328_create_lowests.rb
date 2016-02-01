class CreateLowests < ActiveRecord::Migration
  def change
    create_table :lowests do |t|
      t.string :asin
      t.string :jan
      t.string :amazon
      t.string :yodobashi
      t.string :rakuten
      t.string :kakaku
      t.string :yahoo

      t.timestamps null: false
    end
  end
end
