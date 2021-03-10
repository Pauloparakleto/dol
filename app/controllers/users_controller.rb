class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.admin?
      @users = User.all
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:banished)
  end
end
