class GameParticipantsController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    GameParticipant.create(game: @game, user: current_user)
    redirect_to game_path(@game)
  end

  def destroy
  end
end
