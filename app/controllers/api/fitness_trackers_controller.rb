class Api::FitnessTrackersController < ApplicationController

  def index
    @fitness_trackers = FitnessTracker.all
    render "index.json.jbuilder"
  end

  def show
    @fitness_tracker = FitnessTracker.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
