class Prediction < ActiveRecord::Base
  belongs_to :matches_team
  belongs_to :user
end
