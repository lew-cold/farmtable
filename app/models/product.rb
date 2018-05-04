class Product < ApplicationRecord
    mount_uploader :product_img, ProductUploader
    belongs_to :user

    def self.search(search)
        where("product_name LIKE ? OR description LIKE ? OR category LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
end
