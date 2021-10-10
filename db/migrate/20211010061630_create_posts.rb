class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :image_id
      t.string :location
      t.string :business_hours
      t.string :charge_system
      t.boolean :wifi_equipment
      t.boolean :power
      t.text :caption
      t.datetime :created_at
      t.string :updated_at_datetime

      t.timestamps
    end
  end
end
