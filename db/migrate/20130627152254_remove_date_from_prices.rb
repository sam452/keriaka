class RemoveDateFromPrices < ActiveRecord::Migration
  def up
    remove_column :prices, :date
  end

  def down
    add_column :prices, :date, :datetime
  end
end
