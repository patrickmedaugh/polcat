class StatesController < ApplicationController

  def show
    @state = OpenStruct.new
    @state.state = params[:state]
    crs = CongressRecordService.new
    @reps = crs.find_by_state(params[:state])
    respond_to do |format|
      format.json { render json: @reps }
    end

    # respond_with @reps, status: 201, location: user_path(current_user)
  end
end
