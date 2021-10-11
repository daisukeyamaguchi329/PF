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
end
