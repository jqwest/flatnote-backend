class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    
    if user
      render json: user
    else
      render json: {error: 'User not Found'}
    end
  end

  

  def create

  end

  def update
  end

  def destroy
  end
end
