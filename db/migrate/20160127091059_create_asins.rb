class CreateAsins < ActiveRecord::Migration
  def change
    create_table :asins do |t|
      t.string :asin
      t.string :weight
      t.string :length
      t.string :width
      t.string :height
      t.string :jan

      t.timestamps null: false
      t.index [:asin], unique: true
    end
  end
end
