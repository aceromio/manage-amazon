class AddEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string, unique: true
    add_column :users, :prefecture, :string
    add_column :users, :phone, :string
  end
end
