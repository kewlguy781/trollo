class TasksController < ApplicationController
  before_action :set_task, only: [:show, :destory, :edit]
  
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
    render :_form
  end

  def create
      @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:title, :desc)
  end

end
