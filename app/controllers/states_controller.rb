class StatesController < ApplicationController
  respond_to :json

  def show
    crs = CongressRecordService.new
    @reps = crs.find_by_state(params[:state])
    binding.pry
    # respond_with @reps, status: 201, location: user_path(current_user)
  end
end
