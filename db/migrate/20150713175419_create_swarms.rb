class CreateSwarms < ActiveRecord::Migration
  def change
    create_table :swarms do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :location
      t.boolean :active_status, default: true
      t.boolean :assigned, default: false
      t.text :description

      t.timestamps null: false
    end
  end
end
