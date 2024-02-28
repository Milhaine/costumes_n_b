class CostumesController < ApplicationController
  before_action :set_costume, only: %i[show]
  def index
    @costumes = Costume.all
  end

  def show
    set_user
  end

  def new
    @costume = Costume.new
  end

  private

  def set_costume
    @costume = Costume.find(params[:id])
  end

  def set_user
    set_costume
    @id = @costume.user_id
    @user = User.find_by_id(@id)
  end
end
