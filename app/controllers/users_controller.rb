class UsersController < ApplicationController
def index
    @users = User.all
  end

  def show
    set_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    set_user
  end

  def update
    set_user.update(user_params)
    if @user.valid?
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    set_user.destroy
    redirect_to users_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name)
    end
end