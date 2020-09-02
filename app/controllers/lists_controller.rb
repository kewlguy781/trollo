class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destory, :edit]
  
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
    render :_form
  end

  def create
      @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def list_params
    params.require(:list).permit(:title, :desc)
  end

end
