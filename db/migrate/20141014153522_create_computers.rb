class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :mac_address
      t.boolean :online
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
