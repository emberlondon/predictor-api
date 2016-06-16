class PredictionsController < ApplicationController
  before_action :set_prediction, only: [:show, :edit, :update, :destroy]

  def index
    render json: Prediction.all
  end

  def show
    render json: Prediction.find(params[:id])
  end

  def create
    prediction = Prediction.new(prediction_params)

    if prediction.save
      render json: prediction
    else
      render json: prediction.errors, status: :unprocessable_entity
    end
  end

  def update
    if prediction.update(prediction_params)
      render json: prediction
    else
      render json: prediction.errors, status: :unprocessable_entity
    end
  end

  def destroy
    prediction.destroy
    head :no_content
  end

  private

    def set_prediction
      prediction = Prediction.find(params[:id])
    end

    def prediction_params
      params.require(:prediction).permit(:matches_team_id, :user_id, :score)
    end
end
