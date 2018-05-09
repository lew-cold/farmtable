class Product < ApplicationRecord
    mount_uploader :product_img, ProductUploader
    belongs_to :user
    has_many :orders

    def self.search(search)
        where("product_name LIKE ? OR description LIKE ? OR category LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end

    CATEGORIES = ['Fruit', 'Vegetables', 'Dairy', 'Speciality - All', 'Baked Goods', 'Home Cooking', 'Ready to Eat - All', 'Plants/Seeds', 'Livestock - Feed', 'Livestock - Other', 'Farm Supplies - All', 'Other - All']

end
