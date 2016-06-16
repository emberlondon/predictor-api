class MatchSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :date

  has_many :matches_teams
end
