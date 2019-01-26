class PlayersController < ApplicationController

  before_action :authenticate_player!, except: [:new, :create]

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end


  def destroy
  end

  private

  def player_params
    params.require(:player).permit(:user_name, :email, :password)
  end

end
