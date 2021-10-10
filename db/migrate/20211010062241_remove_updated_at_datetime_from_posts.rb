class RemoveUpdatedAtDatetimeFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :updated_at_datetime, :string
  end
end
