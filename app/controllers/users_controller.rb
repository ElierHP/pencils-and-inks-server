class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  def show
    render json: {id: @user[:id], email: @user[:email]}
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: 'success', status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role)
    end
end