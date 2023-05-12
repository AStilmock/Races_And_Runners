class RunnersController < ApplicationController
  def index
    @runners = Runner.all
  end

  def show
    @runner = Runner.find(params[:id])
  end
end