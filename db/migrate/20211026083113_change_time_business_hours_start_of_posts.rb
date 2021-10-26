class ChangeTimeBusinessHoursStartOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :business_hours_start, false, 0
  end
end
