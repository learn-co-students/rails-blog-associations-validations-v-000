class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(params.require(:user).permit(:name))
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def destroy
    @user = User.find_by(params[:id])
    if !@user.nil?
      @user.destroy
    end
    redirect_to users_path
  end

  def show
    @user = User.find_by(params[:id])
  end
end
