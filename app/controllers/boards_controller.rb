class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :destory, :edit]
  
  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board = Board.new
    render :_form
  end

  def create
      @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def board_params
    params.require(:board).permit(:title, :desc)
  end

end
