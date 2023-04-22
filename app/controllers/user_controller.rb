class UserController < ApplicationController
  before_action :get_user, only: %i[show edit update destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
