class Api::FitnessTrackersController < ApplicationController

  def index
    @fitness_trackers = FitnessTracker.all
    render "index.json.jbuilder"
  end

  def show
    @fitness_tracker = FitnessTracker.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @fitness_tracker = FitnessTracker.create(
      weight: params[:weight],
      bpm: params[:bpm],
      mood: params[:mood]
    )
    render "show.json.jbuilder"
  end

  def update
    @fitness_tracker = FitnessTracker.find(params[:id])
    @fitness_tracker.weight = params[:weight] || @fitness_tracker.weight
    @fitness_tracker.bpm = params[:bpm] || @fitness_tracker.bpm
    @fitness_tracker.mood = params[:mood] || @fitness_tracker.mood
    @fitness_tracker.save
    render "show.json.jbuilder"
  end
end
