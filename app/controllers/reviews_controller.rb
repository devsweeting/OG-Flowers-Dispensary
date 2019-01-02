class ReviewsController < ApplicationController
  before_action :authorize, only: [:secret]

  def secret
  end
  
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    redirect_to products_path(@review)
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Your review was successfully submitted!"
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to products_path(@review.product)
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update
  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])
  if @review.update(review_params)
    redirect_to product_review_path
  else
  render :edit
  end
  end


  private
  def review_params
    params.require(:review).permit(:author, :description, :rating)
  end
end
