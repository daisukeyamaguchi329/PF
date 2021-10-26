class ChangeStringNameOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :name, false, 0
  end
end
