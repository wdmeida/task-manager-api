class Api::V2::TasksController < Api::V2::BaseController
  before_action :authenticate_user!

  def index
    tasks = current_user.tasks.ransack(params[:q]).result
    render json:  tasks, status: :ok
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

  def update
    task = current_user.tasks.find(params[:id])

    if task.update_attributes(task_params)
      render json: task, status: :ok
    else
      render json: { errors: task.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    task = current_user.tasks.find(params[:id])
    task.destroy

    head :no_content
  end

  private
    def task_params
      params.require(:task).permit(:title, :description, :deadline, :done)
    end
end
