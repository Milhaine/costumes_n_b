class CostumesController < ApplicationController
  before_action :set_costume, only: %i[show]
  def index
    @costumes = Costume.all
  end

  def show
  end

  private

  def set_costume
    @costume = Costume.find(params[:id])
  end
end
