class UsersController < ApplicationController
	layout 'internals'
  def show
  	@user = User.find(params[:id])
  end
  def new
  	@user = User.new
  end
  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      log_in @user
      flash[:success] = "Bienvenido!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
