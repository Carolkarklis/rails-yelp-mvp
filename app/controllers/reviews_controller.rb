class ReviewsController < ApplicationController

  before_action :find_restaurant
  def index
    @reviews = Review.all
  end

  def show
    @reviews = set_review
  end

  # GET /restaurants/new
  def new
    @review = Review.new
  end


  def create
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
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

    def find_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
