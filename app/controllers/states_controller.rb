class StatesController < ApplicationController

  def show
    @reps = RepCreator.find_by_state(params[:state])
    respond_to do |format|
      format.json { render json: @reps }
    end
  end

  def representative_show
    @rep = RepCreator.find_by_bioguide(params[:bioguide])
    @committees = RepCreator.get_committees(params[:bioguide])
    @votes = VoteCreator.retrieve_recent_votes(@rep['govtrack_id'])
    @floor_updates = RepCreator.get_floor_updates(params[:bioguide])
  end

end
