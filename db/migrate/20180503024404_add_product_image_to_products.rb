class AddProductImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :product_img, :string
  end
end
