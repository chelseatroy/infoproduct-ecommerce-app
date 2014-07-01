class ProductsController < ApplicationController

  def index
    @title = "products"
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id]) 
    if @product.nil?
      redirect_to '/index'
      flash[:warning] = "No product by that name here. But you can find lots of others..."
    end 
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])
    flash[:success] = "You've successfully created a new product."
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(params[:product])
    flash[:success] = "You've successfully edited #{@product.title}."
    redirect_to "/products/#{@product.id}"
  end 

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:warning] = "You've successfully deleted #{@product.title}."
    redirect_to "products/"
  end

end
