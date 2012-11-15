class PricesController < ApplicationController

  before_filter :lookup_price
  
  def new
    @commodity = Commodity.find(params[:commodity_id])
    @price = Price.new
  end
  
  def create
    @commodity = Commodity.find(params[:commodity_id])
    @price = @commodity.prices.build(params[:price])
    if @price.save
      flash[:notice] = "Your report has been accepted."
      redirect_to commodity_price_path(@commodity, @price)
    else
      flash[:error] = "Your report couldn't be posted. #{@price.errors.full_messages.join}"
      render :new
    end
  end
  
  def show
    @commodity = Commodity.find(params[:commodity_id])
  end
  
  def index
    @commodity = Commodity.find(params[:commodity_id])
    commodity = Commodity.find(params[:commodity_id])
    @prices = commodity.prices.most_recent
    
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