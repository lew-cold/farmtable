class AddStripeToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stripe_id, :string
  end
end
