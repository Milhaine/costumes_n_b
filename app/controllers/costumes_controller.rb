class CostumesController < ApplicationController
  def index
    @costumes = Costume.all
  end

  # def new
  #   @costume = Costume.new
  # end

  # def create
  #   @costume = Costume.new
  #   @costume
  # end
end
