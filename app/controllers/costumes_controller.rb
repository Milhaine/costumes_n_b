class CostumesController < ApplicationController
  before_action :set_costume, only: %i[show]
  def index
    @selected_costume_type = params["/costumes"]["costume_type"] if params["/costumes"].present?
    @costumes = Costume.all
    @costumes = @costumes.where(costume_type: params["/costumes"]["costume_type"]) if params["/costumes"] && params["/costumes"]["costume_type"].present?
  end

  def show
    set_user
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
