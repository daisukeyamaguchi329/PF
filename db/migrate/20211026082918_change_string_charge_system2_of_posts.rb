class ChangeStringChargeSystem2OfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :charge_system2, false, 0
  end
end
