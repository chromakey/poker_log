class ChartsController < ApplicationController
  def index
    @games = current_user.games.sort_by(&:start_date)
  end
end
