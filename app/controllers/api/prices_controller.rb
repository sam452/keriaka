class Api::PricesController < ApplicationController
	respond_to :json
	#before_filter :lookup_price

	def index
		commodity = Commodity.find(params[:commodity_id])
		respond_with commodity.prices.most_recent
	end

	def show
		commodity = Commodity.find(params[:commodity_id])
		respond_with commodity.prices.find(params[:id])
	end

	def create
		commodity = Commodity.find(params[:commodity_id])

    price = commodity.prices.create!(params[:price])

    render json: price.to_json
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