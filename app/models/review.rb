class Review < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :rate, presence: true
  validates :comment, presence: true
end
