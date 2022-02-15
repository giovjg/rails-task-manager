class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  # raise type params in the console
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @tasks = Task.new(params[:task])
    @tasks.save
    # no need for app/views/tasks/create.html.erb
    redirect_to task_path(@task) # need to pass an id so @task and rediretc to the show page
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path(@task)
  end
end
