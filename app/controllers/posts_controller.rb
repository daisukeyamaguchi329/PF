class PostsController < ApplicationController

  def search
    @posts = Post.search(params[:keyword]).page(params[:page]).reverse_order
  end
  
  def index
    @posts = Post.all.page(params[:page]).reverse_order
    favorites = Favorite.where(user_id: current_user.id).order(created_at: :desc).pluck(:post_id)  # ログイン中のユーザーのお気に入りのpost_idカラムを取得
    @favorite_list = Post.find(favorites) 
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.user_id  = current_user.id
    post.save
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:name, :location, :image, :business_hours_start, :business_hours_end, :charge_system,:charge_system2, :wifi_equipment, :power, :caption)
  end

end