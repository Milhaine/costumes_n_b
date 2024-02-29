class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @costume = Costume.find(params[:costume_id])
    @review = Review.new
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    @review.user = @user
    @review.costume = Costume.find(params[:costume_id])
    @review.save
    redirect_to costume_path(@review.costume)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
