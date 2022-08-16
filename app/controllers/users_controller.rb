class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]
  before_action :authorize_user, only: %i[index]

  # GET /users
  def index
      render json: {email: current_user[:email], role: current_user[:role], id: current_user[:id]}
  end

  # GET /users/1
  def show
    render json: {email: @user[:email], role: @user[:role], id: @user[:id]}
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
      render json: {email: @user[:email], role: @user[:role], id: current_user[:id]}, status: :created, location: @user
    else
      render json: @user.errors, status: :conflict
    end
  end

  # PUT/PATCH /users/1
  def update
    if @user.update(user_params)
      render json: {email: @user[:email], role: @user[:role], id: current_user[:id]}
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
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
