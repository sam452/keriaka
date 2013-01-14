class CommoditiesController < ApplicationController

  before_filter :lookup_commodity
  
  def index
    @commodities = Commodity.all
  end
  
  def new
  end
  
  def create
    @commodity = Commodity.new(params[:commodity])
    if @commodity.save
      flash[:notice] = "Your report has been accepted."
      redirect_to @commodity
    else
      flash[:error] = "Your report couldn't be posted. #{@commodity.errors.full_messages.join}"
      render :new
    end
  end
  

  protected

  def lookup_commodity
    if params[:id]
      @commodity = Commodity.find(params[:id])
    else
      @commodity = Commodity.new(params[:commodity])
    end
  end

end