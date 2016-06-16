class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def update
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    user.destroy
    head :no_content
  end

  private

    def set_user
      user = User.find(params[:id])
    end


    def user_params
      params.require(:user).permit(:email, :password)
    end
end
