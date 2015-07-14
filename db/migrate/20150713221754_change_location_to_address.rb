class ChangeLocationToAddress < ActiveRecord::Migration
  def change
    rename_column :swarms, :location, :address
    rename_column :users, :location, :address
  end
end
