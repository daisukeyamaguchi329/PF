class ChangeStringChargeSystemOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :charge_system, false, 0
  end
end
