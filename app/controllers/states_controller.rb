class StatesController < ApplicationController

  def show
    @reps = RepCreator.find_by_state(params[:state])
    respond_to do |format|
      format.json { render json: @reps }
    end
  end

  def representative_show
    @rep = RepCreator.find_by_votesmart(params[:votesmart]).first
  end

end
