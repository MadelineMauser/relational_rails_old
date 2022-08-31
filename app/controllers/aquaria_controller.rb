class AquariaController < ApplicationController
  def index
    @aquaria = Aquarium.all
  end

  def show
    @aquarium = Aquarium.find(params[:id])
  end
end
