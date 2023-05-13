class RacesController < ApplicationController
  def index
    @races = Race.all.order(created_at: :desc)
  end

  def show
    # require 'pry'; binding.pry
    @race = Race.find(params[:id])
    # require 'pry'; binding.pry
  end
end