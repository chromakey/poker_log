class ChartsController < ApplicationController
  def index
    @games = Game.where(user_id:current_user.id)
  end
end
