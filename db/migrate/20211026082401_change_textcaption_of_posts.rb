class ChangeTextcaptionOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :caption, false, 0
  end
end
