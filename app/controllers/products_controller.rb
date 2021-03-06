require 'pry'

class ProductsController < ApplicationController
  # skip_before_action :authenticate_user!, :only => [:index]

  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
    render :show
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to  products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:strain, :cann_abbr, :cost, :origin)
  end
end
