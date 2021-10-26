class ChangeTimeBusinessHoursEndOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :business_hours_end, false, 0
  end
end
