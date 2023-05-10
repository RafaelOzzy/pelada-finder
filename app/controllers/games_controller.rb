class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_game, only: %i[show update edit]

  def index
    @games = Game.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @display_time = "#{@game.time.hour}h#{@game.time.min.zero? ? '00' : @game.time.min.to_s}"
  end

  def update
  end

  def destroy
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
