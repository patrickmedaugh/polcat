class StatesController < ApplicationController
  respond_to :json

  def show
    crs = CongressRecordService.new
    @reps = crs.find_by_state(params[:state])
    binding.pry
    respond_with @reps
  end
end
