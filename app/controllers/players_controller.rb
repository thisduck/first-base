class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create player_params

    if @player.errors.any?
      render :new
    else
      flash[:notice] = "Player created!"
      redirect_to players_path
    end
  end

  def edit
    @player = Player.find params[:id]
  end

  def update
    @player = Player.find params[:id]
    @player.update_attributes(player_params)

    if @player.errors.any?
      render :edit
    else
      flash[:notice] = "Player edited!"
      redirect_to edit_player_path(@player)
    end

  end

  def destroy
  end

  def player_params
    params.require(:player).permit(:name, :gender, :email)
  end
end
