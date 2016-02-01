class AddUserToAsins < ActiveRecord::Migration
  def change
    add_reference :asins, :user, index: true, foreign_key: true
  end
end
