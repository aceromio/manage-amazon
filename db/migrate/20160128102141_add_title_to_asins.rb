class AddTitleToAsins < ActiveRecord::Migration
  def change
    add_column :asins, :title, :string
  end
end
