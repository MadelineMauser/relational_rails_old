class AquariaController < ApplicationController
  def index
    @aquaria = Aquarium.all
  end

  def show

  end
end
