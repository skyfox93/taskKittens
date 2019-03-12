class Api::V1:AuthController < ApplicationController
skip_before_action :authorized, only: [:create]

  def create #api/v1/login
    @user=user.find_by(user_params[:email])
    if @user && @user.authenticate(user_params[:password])
      @token=JSON.encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token:@token},status: :accepted
    else
      render json: {message:'incorrect username or password'}, status: :unauthorized
    end
  end

end
