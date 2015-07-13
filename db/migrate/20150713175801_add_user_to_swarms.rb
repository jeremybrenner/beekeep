class AddUserToSwarms < ActiveRecord::Migration
  def change
    add_reference :swarms, :user, index: true, foreign_key: true
  end
end
