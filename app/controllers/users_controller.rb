class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def set_user
      @user = User.find(params[:email])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role)
    end
end
