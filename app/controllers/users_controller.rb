class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Thanks for joining!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:name, :password,
                                 :password_confirmation)
  end

end
