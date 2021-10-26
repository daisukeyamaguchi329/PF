class ChangeStringNameOfContacts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :contacts, :name, false, 0
  end
end
