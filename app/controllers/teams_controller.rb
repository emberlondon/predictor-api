class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    render json: Team.all
  end

  def show
    render json: Team.find(params[:id])
  end

  def create
    team = Team.new(team_params)

    if team.save
      render json: team
    else
      render json: team.errors, status: :unprocessable_entity
    end
  end

  def update
    if team.update(team_params)
      render json: team
    else
      render json: team.errors, status: :unprocessable_entity
    end
  end

  def destroy
    team.destroy
    head :no_content
  end

  private

    def set_team
      team = Team.find(params[:id])
    end


    def team_params
      params.require(:team).permit(:country)
    end
end
