class GamesController < ApplicationController
  def index
    @games = current_user.games.sort_by(&:start_date)
    @game = Game.new
  end

  def show
  end

  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(params[:game])
    @game.user_id = current_user.id
    @game.save
    redirect_to games_url, notice: "Saved!"
  end

  def edit
  end

  def update
  end

  def destroy
    Game.find(params[:id]).destroy 
    redirect_to games_path, notice: "Deleted Game"
  end
end
