class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price
      t.string :quality
      t.string :buyer
      t.datetime :date

      t.timestamps
    end
  end
end
