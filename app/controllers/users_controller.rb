class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
      if@user.valid?
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}
      else
        render json: {error: "Invalid username or password"}
    end
  end

  def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  def auto_login
    render json: @user
  end

  def index
    users = User.all
    render json: users, status: 200
  end

  def show
    user = User.find_by(username: params[:username])
    render json: user
  end

  def get_notes
    puts params
    notes = Note.where(user_id: params[:id])
    render json: notes
  end

  private

  def user_params
    params.permit(:username, :password)
  end

  
end