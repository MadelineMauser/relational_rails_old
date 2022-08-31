class ShrimpsController < ApplicationController
  def index
    @shrimps = Shrimp.all
  end

  def show
    @shrimp = Shrimp.find(params[:id])
  end
end
