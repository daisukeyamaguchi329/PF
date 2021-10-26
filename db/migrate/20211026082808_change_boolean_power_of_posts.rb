class ChangeBooleanPowerOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :power, false, 0
  end
end
