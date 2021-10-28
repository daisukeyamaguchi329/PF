class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_uniqueness_of :post_id, scope: :user_id
  default_scope -> { order(created_at: :desc) }

  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true, null: false
      t.references :post, foreign_key: true, null: false
      t.timestamps
    end
  end
end
