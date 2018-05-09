class AddUnitsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :units, :string
  end
end
