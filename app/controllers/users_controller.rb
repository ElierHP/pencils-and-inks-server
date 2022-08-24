class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]
  before_action :authorize_user, only: %i[index]
  before_action :authorize_admin, only: %i[show]

  # GET /users
  def index
      render json: current_user_as_json
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new({**user_params, role: 'member'})

    if @user.save
      log_in @user
      render json: current_user_as_json, 
        status: :created, 
        location: @user
    else
      render json: @user.errors, status: :conflict
    end
  end

  # PUT/PATCH /users/1
  def update
    if @user.update(user_params)
      render json: current_user_as_json
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
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
    end
end
