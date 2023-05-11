class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def show
    # require 'pry'; binding.pry
    @race = Race.find(params[:id])
    # require 'pry'; binding.pry
  end
end