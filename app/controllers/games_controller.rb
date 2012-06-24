class GamesController < ApplicationController
  def index
    @games = Game.all
    @game = Game.new
  end

  def show
  end

  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(params[:game])
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
