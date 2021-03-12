class BanishController < ApplicationController
  
  def banished_way
  end  

  def banish
        @user = User.find(params[:id])
        @user.banished = !@user.banished?
       if current_user.admin? && @user.save
        puts "User banished"
        redirect_to users_path
       else
        puts "Unprocessed entity"
        redirect_to users_path
       end
    end


    private

  def user_params
    params.require(:user).permit(:banished)
  end

end