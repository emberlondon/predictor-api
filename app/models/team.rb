class Team < ActiveRecord::Base
  has_many :matches_teams
  has_many :matches, through: :matches_teams
end
