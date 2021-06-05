class ListsController < ApplicationController
  before_action :find_lists, only: [:show, :edit, :update, :delete]
  
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to list_path(@task)
  end

  def delete
    @task.destroy(task_params)
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def find_lists
    @list = List.find(params[:id])
  end
end
