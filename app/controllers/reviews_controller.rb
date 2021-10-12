class ReviewsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @reviews = @post.reviews
  end

  def new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to posts_path
    else
      @post = Post.find(params[:id])
      render post_path(post.id)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  def review_params
    params.require(:review).permit(:post_id, :title, :rate, :comment )
  end
end
