class AuthController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    
    if user && user.authenticate(params[:password])
      token = encode_token(user.id)
        render json: {user: user, token: token}
    else
      flash[:danger] = 'Invalid email/password'
      render json: {}
    end
  end

  def logout
    reset_session
    render json: { status: 200, logged_out: true } 
  end

  def show
    auth = request.headers[:Authorization]
    token = auth.split(' ')[1]
    my_secret = "super_secret_code"
    decoded_token = JWT.decode token, my_secret, true, { algorithm: 'HS256' }
    user_id = decoded_token[0]['user_id']
    user = User.find_by(id: user_id)
    if user
        render json: { user: user, notes: user.notes, token: token }
      else
        render json: { error: "invalid Token"}, status: 401
      end
  end
    
  # def auto_login
  #   if session_user
  #       render json: session_user
  #   else 
  #     render json: {errors: "User not found"}
  #   end
  # end
end
