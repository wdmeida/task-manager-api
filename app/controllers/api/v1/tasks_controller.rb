class Api::V1::TasksController < ApplicationController
  before_action :authenticate_with_token!

  def index
    tasks = current_user.tasks
    render json: { tasks: tasks }, status: :ok
  end

  def show
    begin
      task = current_user.tasks.find(params[:id])
      render json: task, status: :ok
    rescue
      head :not_found
    end
  end

  def create
    task = current_user.tasks.build(task_params)
    
    if task.save
      render json: task, status: :created
    else
      render json: { errors: task.errors }, status: :unprocessable_entity 
    end
  end

  private
    def task_params
      params.require(:task).permit(:title, :description, :deadline, :done)
    end
end
