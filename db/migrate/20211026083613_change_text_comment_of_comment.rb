class ChangeTextCommentOfComment < ActiveRecord::Migration[5.2]
  def change
    change_column_null :reviews, :comment, false, 0
  end
end
