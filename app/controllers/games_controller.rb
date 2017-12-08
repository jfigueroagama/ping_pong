class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def index
    @games = current_user.games
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to games_path, notice: 'Game was created.'
    else
      render :new
    end
  end

  def show
    @game = Game.find_by_id(params[:id])
  end

  private
    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:game_date, :user_id, :contender_id)
    end
end
