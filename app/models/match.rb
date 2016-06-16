class Match < ActiveRecord::Base
  has_many :matches_teams
  has_many :teams, through: :matches_teams
end
