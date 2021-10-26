class ChangeStringLocationOfPosts < ActiveRecord::Migration[5.2]
  def change
     change_column_null :posts, :location, false, 0
  end
end
