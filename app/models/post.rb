class Post < ApplicationRecord

  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :image


  def self.search(search)
    if search != ""
      Post.where('location LIKE(?)', "%#{search}%") #
    else
      Post.all
    end
  end

  def avg_rate
    unless self.reviews.empty?
      reviews.average(:rate).round(1).to_f
    else
      0.0
    end
  end

  def review_rate_percentage
    unless self.reviews.empty?
      reviews.average(:rate).round(1).to_f*100/5
    else
      0.0
    end
  end

end
