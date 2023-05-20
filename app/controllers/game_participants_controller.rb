class GameParticipantsController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    GameParticipant.create(game: @game, user: current_user)
    redirect_to game_path(@game)
  end

  def destroy
    @game_participant = GameParticipant.find(params[:id])
    @game_participant.destroy
    if request.referer == 'http://localhost:3000/my_games'
      redirect_to my_games_path
    else
      redirect_to game_path(@game_participant.game)
    end
  end
end
