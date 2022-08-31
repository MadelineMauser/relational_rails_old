class ShrimpsController < ApplicationController
  def index
    @shrimps = Shrimp.all
  end

end
