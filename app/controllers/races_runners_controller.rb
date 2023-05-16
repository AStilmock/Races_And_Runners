class RacesRunnersController < ApplicationController
  def index
    @race = Race.find(params[:id])
    @runners = @race.runners
  end

  
end