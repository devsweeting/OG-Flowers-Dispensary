class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Course.find(params[:id])
    redirect_to products_path(@review)
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    binding.pry
    if @review.save
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:author, :description, :rating)
  end
end
