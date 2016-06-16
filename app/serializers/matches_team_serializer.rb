class MatchesTeamSerializer < ActiveModel::Serializer
  attributes :id,
             :team_id,
             :score
end
