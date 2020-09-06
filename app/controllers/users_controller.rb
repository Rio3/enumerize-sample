class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to action: :index
    else
      redirect_to action: :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to action: :index
    else
      redirect_to action: :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:gender)
  end
end
