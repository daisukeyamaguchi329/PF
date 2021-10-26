class RemoveTitleFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :Title, :string
  end
end
