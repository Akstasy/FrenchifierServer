class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  # before_action only: [:update] { require_mcs_or_self(@user) }

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    render json: show_user(@current_user)
  end

  # POST /users
  def create
    # byebug
    @current_user = User.new(user_params)
    if @current_user.save
      render json: show_user(@current_user), status: :created
    else
      render json: @current_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @current_user.update(user_update_params)
      render json: show_user(@current_user), status: :ok
    else
      render json: @current_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @current_user.destroy
    render json: show_user(@current_user), status: :ok
  end

  private

  def show_user(user)
    {email: user.email, notification: (user.notification.nil? ? false : (user.notification == "t" ? true: false)), os: user.os, device_id: user.device_id}
  end
  
  def user_params
    params.permit(:email, :password, :notification, :device_id, :os)
  end

  def user_update_params
    params.permit(:password, :notification, :device_id, :os)
  end
end
