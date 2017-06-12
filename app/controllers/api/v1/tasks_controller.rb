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
end
