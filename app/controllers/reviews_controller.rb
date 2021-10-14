class ReviewsController < ApplicationController
   before_action :authenticate_user!, only: [:index]
  def index
    @post = Post.find(params[:post_id])
    @reviews = @post.reviews.order(created_at: :desc)
  end

  def new
    @post = Post.find(params[:post_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to  post_reviews_path
    else
      @post = Post.find(params[:post_id])
      render "reviews/new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    if  Review.exists?(id: params[:id])
      review = Review.find(params[:id])
      review.destroy
    end
    redirect_to post_reviews_path
  end

  def review_params
    params.require(:review).permit(:post_id, :title, :rate, :comment )
  end
end
