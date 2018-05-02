json.extract! product, :id, :product_name, :description, :quantity, :price, :category, :created_at, :updated_at
json.url product_url(product, format: :json)
