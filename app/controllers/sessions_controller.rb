class SessionsController < ApplicationController
  def create
    
    user = User.find_by(email: params[:email])
    
    if user.authenticate(params[:password])
      render json: user, status: :ok
    else
      render json: {errors: ["Check your credentials and try agai."] }, status: :unauthorized
    end

  end
end
