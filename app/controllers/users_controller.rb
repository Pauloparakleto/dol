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

  def banish_user
    @article = Article.find(params[:id])
    @article.banished = 1
    if @article.save
      redirect_to index_user_path
    else
      render index_user_path, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:banished)
  end
end
