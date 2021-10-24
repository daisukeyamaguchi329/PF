class FavoritesController < ApplicationController
  before_action :set_post, except: :show
  before_action :authenticate_user!

  def show
    @favorite_list = current_user.favorites
  end

  def create
    @post = Post.find(params[:post_id])
    @favorite = Favorite.create!(user_id: current_user.id, post_id: @post.id) if @post.user_id != current_user.id
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
