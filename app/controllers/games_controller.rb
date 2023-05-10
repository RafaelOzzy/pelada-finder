class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_games, only: %i[show destroy]
  before_action :game_params, only: %i[create]

  def index
  end

  # create in progress
  # variavel newdate não sendo usada ainda.
  def create
    # p newdate = DateTime.strptime(params[:game][:date], '%Y-%m-%d')
    # @game = Game.new(game_params)
    # @game.save
    # redirect_to game_path(@game)
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def game_params
    params.require(:game).permit(:neighborhood, :date, :time)
  end

  def set_games
    @game = Game.find(params[:id])
  end
end

# DateTime.strptime(variavel, '%Y-%m-%dT%H:%M:%S%z')
