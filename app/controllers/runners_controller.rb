class RunnersController < ApplicationController
  def index
    @runners = Runner.all
  end

  # def custom_method

  # end

  def show
    @runner = Runner.find(params[:id])
  end

  def new
    
  end
  def create
    Runner.create!(runner_params)
    redirect_to "/races/:id/runners" 
  end

  private

  def runner_params
    params.permit(:name, :shoes, :spikes, :team, :races_completed)
  end
end