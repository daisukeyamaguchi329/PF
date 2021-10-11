class RemoveBusinessHoursFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :business_hours, :string
  end
end
