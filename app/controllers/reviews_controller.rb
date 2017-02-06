class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @user = current_user
  end

  def create
    @review = Review.create(review_params)
    redirect_to review_path(@review)
  end

  def edit
    @review = Review.find(params[:id])
    if current_user.id != @review.user_id
      redirect_to homepage_path
    end
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to review_path(@review)
  end


  private

  def review_params
    params.require(:review).permit(:summary, :rating, :beer_id, :user_id)
  end

end
