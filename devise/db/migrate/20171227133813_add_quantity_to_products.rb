class AddQuantityToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :Quantity, :integer, default: 0
  end
end
