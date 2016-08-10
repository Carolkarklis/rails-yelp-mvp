class ReviewsController < ApplicationController
    def index
    @reviews = Reviews.all
  end

  def show
    @review = set_review
  end

  # GET /restaurants/new
  def new
    @review = Review.new
  end


  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant_reviews_path(@reviews)
    else
      render :new
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
