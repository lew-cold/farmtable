class Product < ApplicationRecord
    mount_uploader :product_img, ProductUploader
    belongs_to :user
end
