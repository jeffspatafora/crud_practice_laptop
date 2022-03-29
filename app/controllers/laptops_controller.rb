class LaptopsController < ApplicationController
  def index
    laptops = Laptop.all 
    render json: laptops.as_json
  end

  def create
    laptop = Laptop.new(
      brand: params[:brand],
      model: params[:model],
      price: params[:price],
      screen_size: params[:screen_size]
    )
    laptop.save
    render json: laptop.as_json
  end

  def show
    laptop = Laptop.find_by(id: params[:id])
    render json: laptop.as_json
  end

  def update
    laptop = Laptop.find_by(id: params[:id])

    laptop.brand = params[:brand] || laptop.brand
    laptop.model = params[:model] || laptop.model
    laptop.price = params[:price] || laptop.price
    laptop.screen_size = params[:screen_size] || laptop.screen_size

    render json: laptop.as_json
  end

  def destroy
    laptop = Laptop.find_by(id: params[:id])

    laptop.delete
    render json: {message: "laptop removed"}
  end
end
