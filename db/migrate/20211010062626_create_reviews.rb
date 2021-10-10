class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :rate
      t.text :comment
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
