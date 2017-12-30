class ChangePriceField < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :price, :string, default: 0 
  end
end
