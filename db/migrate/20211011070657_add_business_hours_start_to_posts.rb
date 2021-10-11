class AddBusinessHoursStartToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :business_hours_start, :time
  end
end
