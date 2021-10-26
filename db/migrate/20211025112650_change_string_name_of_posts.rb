class ChangeStringNameOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :name, false, 0
  end
end
