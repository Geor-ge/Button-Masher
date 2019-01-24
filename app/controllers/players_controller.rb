class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.valid?
      @player.save
      redirect_to "/welcome"
    end
  end

  def destroy
  end

  private

  def player_params
    params.require(:player).permit(:user_name, :email, :password)
  end

end
