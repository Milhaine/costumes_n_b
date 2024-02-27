class RentalsController < ApplicationController
  before_action :authenticate_user!
  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.create(rental_params)
    @costume = Costume.find(params[:costume_id])
    @user = current_user
    @rental.costume = @costume
    @rental.user = @user
  end

  private
  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
