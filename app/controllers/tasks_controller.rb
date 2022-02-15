class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  # raise type params in the console
    @task = Task.find(params[:id])
  end

  def new
    @task = task.new # needed to instantiate the form_for
  end

  def create
    @tasks = task.new(params[:task])
    @tasks.save
    # no need for app/views/tasks/create.html.erb
    #redirect_to task_path(@task) # need to pass an id so @task and rediretc to the show page
  end

  def edit
    @task = task.find(params[:id])
  end

  def update
    @task = task.find(params[:id])
    @task.update(params[:task])
    redirect_to task_path(@task)
  end

  def destroy
  @task = task.find(params[:id])
  @task.destroy
  redirect_to task_path(@task)
  end
end
