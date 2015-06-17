class StatesController < ApplicationController

  def show
    @reps = RepCreator.generate(params[:state])
    respond_to do |format|
      format.json { render json: @reps }
    end
  end

  def representative_show
    
  end

end
