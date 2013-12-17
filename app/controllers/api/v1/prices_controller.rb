module Api
	module V1
		class PricesController < ApplicationController
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
				price = commodity.prices.build(params[:price])
#respond_with Product.create(params[:product])
		    respond_with commodity.prices.build(params[:price])
		    #respond_with :api, :commodity, commodity.prices.build(params[:commodity][:prices_attributes][0])

		    #render json: price.to_json
			end

			def update
				commodity = Commodity.find(params[:commodity_id])
				respond_with commodity.prices.build(params[:commodity][:prices_attributes][0])
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


	end
end

