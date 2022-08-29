class AquariaController < ApplicationController
  def index
    @aquaria = Aquarium.all
  end
end
