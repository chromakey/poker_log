class Game < ActiveRecord::Base
  attr_accessible :earned, :end_time, :notes, :start_date, :start_time, :game_type
  belongs_to :user

  GameTypes = ['NLHE', 'LHE', 'PLO', 'Limit Omaha 8/b', 'Stud Hi', 'Stud 8/b', 'Razz']

  default_scope order: 'games.start_date DESC'
end
