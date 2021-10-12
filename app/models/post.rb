class Post < ApplicationRecord
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
  
  def avg_score
    unless self.reviews.empty?
      reviews.average(:rate).round(1).to_f
    else
      0.0
    end
  end
    
  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:rate).round(1).to_f*100/5
    else
      0.0
    end
  end

end
