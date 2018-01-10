class AddOldPriceToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :oldPrice, :integer
  end
end
