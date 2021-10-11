class RemoveBusinessHours2FromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :business_hours2, :string
  end
end
