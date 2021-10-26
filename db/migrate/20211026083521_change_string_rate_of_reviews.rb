class ChangeStringRateOfReviews < ActiveRecord::Migration[5.2]
  def change
    change_column_null :reviews, :rate, false, 0
  end
end
