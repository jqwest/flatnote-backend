class UsersController < ApplicationController

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

  def create
    user = User.new(
      username: params[:username],
      password: params[:password],
    )

    if user.save
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {errors: user.errors.full_messages}
    end
  end
end