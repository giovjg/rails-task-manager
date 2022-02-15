class TasksController < ApplicationController
  def index
    @task = Task.all
  end

  def show
  # raise type params in the console
    @task = Task.find(params[:id])
  end

  def new
    @task = task.new # needed to instantiate the form_for
  end

  def create
    @task = task.new(params[:task])
    @task.save
      # no need for app/views/tasks/create.html.erb
    redirect_to task_path(@task) # need to pass an id so @task and rediretc to the show page
  end
end
