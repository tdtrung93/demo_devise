class ChangeOldPriceToProducts < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :oldPrice, :float, default: 0 
  end
end
