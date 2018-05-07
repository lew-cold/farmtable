class AddShippingToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :shipping, :integer
  end
end
