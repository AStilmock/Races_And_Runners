class RacesRunnersController < ApplicationController
  def index
    @race = Race.find(params[:id])
    # require 'pry'; binding.pry
    @runners = @race.runners
# require 'pry'; binding.pry
  end
end