class User < ActiveRecord::Base
  include Clearance::User
  has_many :games, dependent: :destroy
end
