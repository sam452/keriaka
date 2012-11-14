class AddCommodityIdToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :commodity_id, :integer
  end
end
