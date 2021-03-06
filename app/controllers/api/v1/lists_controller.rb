class Api::V1::ListsController < ApplicationController
  def index
    @user=User.find(params[:user_id])
    render json: @user.lists, status: :ok
  end

  def show
    @list=List.find(params[:id])
    render json: @list, status: :ok
  end

  def update
    @list=List.find(params[:id])
    @list.update(list_params)
    render json: @list, status: :ok
  end

  def create
    @list=List.create(list_params)
    if @list.valid?
      render json: @list, status: :ok
    else
      render json: {errors: @list.errors.full_messages}, status: 422
    end
  end

  def destroy
    @list=List.find(params[:id])
    @list.destroy()
    render json: {}
  end

  private
  def list_params
    params.require(:list).permit(:user_id,:title)
  end



end
