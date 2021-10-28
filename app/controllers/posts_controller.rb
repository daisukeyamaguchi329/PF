class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).includes(:reviews).eager_load(:favorites).search(params[:keyword]).page(params[:page])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    redirect_to posts_path unless @post.user == current_user
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
    params.require(:post).permit(:name, :location, :image, :business_hours_start, :business_hours_end, :charge_system,
                                 :charge_system2, :wifi_equipment, :power, :caption, :longitude, :latitude)
  end
end
