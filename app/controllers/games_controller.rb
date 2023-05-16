class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_game, only: %i[show update edit destroy]
  before_action :game_params, only: %i[create]

  def index
    @games = Game.all
    @user = current_user
    @user_games = Game.where(user: @user).limit(3)
  end

  # create in progress
  # variavel newdate não sendo usada ainda.
  def create
    date = params[:game][:date].blank? ? nil : Date.strptime(params[:game][:date], '%Y-%m-%d')
    time = params[:game][:time].blank? ? nil : Time.strptime(params[:game][:time], "%H:%M")
    new_game = { neighborhood: params[:game][:neighborhood],
                 date:,
                 time:,
                 user: current_user }
    @game = Game.new(new_game)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def show
    @display_time = "#{@game.time.hour}h#{@game.time.min.zero? ? '00' : @game.time.min.to_s}"
  end

  def update
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  def my_games
    @user = current_user
    @user_games = Game.where(user: @user)
  end

  private

  def game_params
    params.require(:game).permit(:neighborhood, :date, :time, :id)
  end

  def set_game
    @game = Game.find(params[:id])
    @game_participants = GameParticipant.where(game_id: @game.id)
  end
end

# DateTime.strptime(variavel, '%Y-%m-%dT%H:%M:%S%z')
