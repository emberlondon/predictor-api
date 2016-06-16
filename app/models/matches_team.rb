class MatchesTeam < ActiveRecord::Base
  belongs_to  :team
  belongs_to  :match
  has_many    :predictions
end
