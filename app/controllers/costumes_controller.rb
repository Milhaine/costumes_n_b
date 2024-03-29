class CostumesController < ApplicationController
  before_action :set_costume, only: %i[show]
  def index
    @costumes = Costume.all
    @costumes = @costumes.search_by_name_and_costume_type(params[:query]) if params[:query].present?
  end

  def show
    set_user
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @user = current_user
    @costume.user = @user
    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_costume
    @costume = Costume.find(params[:id])
  end

  def costume_params
    params.require(:costume).permit(:name, :costume_type, :photo, :price, :description)
  end

  def set_user
    set_costume
    @id = @costume.user_id
    @user = User.find_by_id(@id)
  end
end
