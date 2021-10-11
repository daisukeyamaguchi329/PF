class AddBusinessHours2ToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :business_hours2, :string
  end
end
