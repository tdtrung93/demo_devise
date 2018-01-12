class ChangeOldPriceToProducts < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :oldPrice, :integer, :default => 0
  end
end
