class RegistrationsController < ApplicationController
  before_action :set_user, only: [:show]

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  def show
  end

  def new
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
