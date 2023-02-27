class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @list_name = @list.name
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to all_lists_path, notice: "List was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
