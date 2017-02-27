class ReviewsController < ApplicationController
  before_action :current_user

  def index
    @beer = Beer.find(params[:beer_id])
    @reviews = @beer.reviews

    render "reviews/index", :layout => false
  end

  def show
    @review = Review.find(params[:id])
    @user = current_user
  end

  def new
    @review = Review.new
    @user = current_user
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render "new"
    end
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

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_path(@user)
  end

  private

  def review_params
    params.require(:review).permit(:summary, :rating, :beer_id, :user_id)
  end

end
