class RemoveImageIdFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :image_id, :integer
  end
end
