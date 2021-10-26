class ChangeBooleanWifiEquipmentOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :posts, :wifi_equipment, false, 0
  end
end
