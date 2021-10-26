class RemoveSubjectFromContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :subject, :string
  end
end
