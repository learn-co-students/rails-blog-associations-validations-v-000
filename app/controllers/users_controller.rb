class UsersController < ApplicationController
  def index
    @users= User.all
  end
  def new
    @user= User.new
  end
  def create
    @user= User.new(params.require(:user).permit(:name,:post_ids => []))
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end
  def edit
      @user= User.find(params[:id])
  end
  def update
    @user= User.find(params[:id])
    if @user.update(params.require(:user).permit(:name,:post_ids => []))
      redirect_to user_path(@user)
    else
      render :edit
    end
  end
  def destroy
      @user= User.find(params[:id]).destroy
      redirect_to users_path
  end
end
