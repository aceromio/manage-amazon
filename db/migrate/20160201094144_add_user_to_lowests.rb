class AddUserToLowests < ActiveRecord::Migration
  def change
    add_reference :lowests, :user, index: true, foreign_key: true
  end
end
