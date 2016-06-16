class PredictionSerializer < ActiveModel::Serializer
  attributes  :matches_team_id,
              :score
end
