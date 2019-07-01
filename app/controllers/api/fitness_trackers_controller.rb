class Api::FitnessTrackersController < ApplicationController

  def index
    @fitness_trackers = FitnessTracker.all
    render "index.json.jbuilder"
  end
end
