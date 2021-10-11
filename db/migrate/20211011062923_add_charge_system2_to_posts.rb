class AddChargeSystem2ToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :charge_system2, :string
  end
end
