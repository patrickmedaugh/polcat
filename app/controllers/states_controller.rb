class StatesController < ApplicationController

  def show
    @reps = RepCreator.find_by_state(params[:state])
    respond_to do |format|
      format.json { render json: @reps }
    end
  end

  def representative_show
    @rep = RepCreator.find_by_votesmart(params[:votesmart]).first.last.last
    @committees = RepCreator.get_committees(@rep['bioguide_id'])["results"]
    @votes = VoteCreator.retrieve_recent_votes(@rep['govtrack_id'])
    @floor_updates = RepCreator.get_floor_updates(@rep['bioguide_id'])
  end

end
