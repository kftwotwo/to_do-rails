class TasksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @task = @list.tasks.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to list_path(@task.list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:list_id])
    @task = Task.find(params[:id])
    render :edit
  end

  def update
    @list = List.find(params[:list_id])
    @task = Task.find(params[:id])
    if @task.update(task_params)
                  # Redirects to this this and passes in it's tasks
      redirect_to list_path(@task.list)
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @task = Task.find(params[:id])
    @task.destroy
                #lists_path would take you to all lists
    redirect_to list_path(@task.list)
  end

private
  def task_params
    params.require(:task).permit(:description)
  end
end
