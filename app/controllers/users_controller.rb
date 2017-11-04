class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.new(name: params[:user][:name])
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    set_user
  end

  def edit
    set_user
  end

  def update
    set_user
    @user.update(name: params[:user][:name])
    if @user.valid?
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    set_user
    @user.destroy
    redirect_to tags_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
