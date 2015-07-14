class AddLatitudeAndLongitudeToSwarm < ActiveRecord::Migration
  def change
    add_column :swarms, :latitude, :float
    add_column :swarms, :longitude, :float
  end
end
