class ChangeStringEmailOfContacts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :contacts, :email, false, 0
  end
end
