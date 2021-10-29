class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.includes(:reviews).page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
    redirect_to root_path unless @user == current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :email, :encrypted_password)
  end
end
