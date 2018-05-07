class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :description
      t.float :quantity
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
