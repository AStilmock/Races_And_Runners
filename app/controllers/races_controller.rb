class RacesController < ApplicationController
  def index
    @races = Race.all.order(created_at: :desc)
  end

  def new
    
  end

  def show
    @race = Race.find(params[:id])
  end

  

  def create
    race = Race.new({
      location:  params[:race][:location],
      terrain:   params[:race][:terrain],
      weather:   params[:race][:weather],
      length:    params[:race][:length],
      loop:      params[:race][:loop],
      overnight: params[:race][:overnight]
      })
    race.save
    redirect_to '/races'
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    race = Race.find(params[:id])
    race.update({
      location:  params[:race][:location],
      terrain:   params[:race][:terrain],
      weather:   params[:race][:weather],
      length:    params[:race][:length],
      loop:      params[:race][:loop],
      overnight: params[:race][:overnight]
    })
    race.save
    redirect_to "/races/#{race.id}"
  end
end