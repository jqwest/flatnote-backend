class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def index
    users = User.all
    render json: users, status: ok
  end

  def create
    user = User.create(
      username: params[:username],
      password: params[:password]
    )
    if user.valid?
      user.save
      render json: user, status: :created
    else
      render json: {message: "User could not be created"}
    end
  end
end