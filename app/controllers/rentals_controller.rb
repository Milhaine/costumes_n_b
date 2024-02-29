class RentalsController < ApplicationController
  before_action :authenticate_user!
  def new
    @rental = Rental.new
    @costume = Costume.find(params[:costume_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @costume = Costume.find(params[:costume_id])
    @user = current_user
    @rental.costume = @costume
    @rental.user = @user
    if @rental.save
      redirect_to costume_path(@costume)
    else
      flash[:alert] = @rental.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @user = current_user
    @rentals = Rental.where(user_id: @user.id)
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

end
