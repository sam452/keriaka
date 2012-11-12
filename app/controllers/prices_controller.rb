class PricesController < ApplicationController

  before_filter :lookup_price
  
  def new
    @price = Price.new
  end
  
  def create
    @price = Price.new(params[:price])
    if @price.save
      flash[:notice] = "Your report has been accepted."
      redirect_to @price
    else
      flash[:error] = "Your report couldn't be posted. #{@price.errors.full_messages.join}"
      render :new
    end
  end
  
  def show
    
  end

  protected

  def lookup_price
    if params[:id]
      @price = Price.find(params[:id])
    else
      @price = Price.new(params[:price])
    end
  end

end