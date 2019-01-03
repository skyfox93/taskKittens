class Api::V1::TasksController < ApplicationController

  def show
    @task=Task.find(params[:id])
    render json: @user, status: :ok
  end

  def update
    @task=Task.find(params[:id])
    @task.update(task_params)
    render json: @task, status: :ok
  end

  def create
    @task=Task.create(task_params)
    render json: @task, status: :ok
  end

  def destroy
    @task=Task.find(params[:id])
    @task.destroy
    @empty={}
    render json: @empty, status: :ok
  end

  private

  def task_params
    params.require(:task).permit(:title, :complete, :priority, :note, :due_date, :list_id)
  end
end
