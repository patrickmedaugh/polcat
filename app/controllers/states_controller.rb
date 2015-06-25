class StatesController < ApplicationController

  def show
    @reps = RepCreator.find_by_state(params[:state])
    respond_to do |format|
      format.json { render json: @reps }
    end
  end

  def representative_show
    @rep, @committees, @floor_updates = [
      Thread.new{RepCreator.find_by_bioguide(params[:bioguide])},
      Thread.new{RepCreator.get_committees(params[:bioguide])},
      Thread.new{RepCreator.get_floor_updates(params[:bioguide])},
    ].map(&:value)
    @votes = Thread.new{VoteCreator.retrieve_recent_votes(@rep['govtrack_id'])}.value
  end

end
