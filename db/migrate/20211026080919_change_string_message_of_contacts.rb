class ChangeStringMessageOfContacts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :contacts, :message, false, 0
  end
end
