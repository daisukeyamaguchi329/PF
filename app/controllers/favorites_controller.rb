class FavoritesController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!
  
  def index
  end
  
  
  def create
      @post = Post.find(params[:post_id])
    if @post.user_id != current_user.id   # 投稿者本人以外に限定
      @favorite = Favorite.create!(user_id: current_user.id, post_id: @post.id)
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @favorite = Favorite.find_by(user_id: current_user.id, post_id: @post.id)
    @favorite.destroy
  end
  
  private
  def set_post
    @post = Post.find(params[:post_id])
  end
  
  def favorite_params
    params.require(:favorite).permit(:user_id, :post_id)
  end
end
