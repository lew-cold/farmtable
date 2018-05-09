class Product < ApplicationRecord
    mount_uploader :product_img, ProductUploader
    belongs_to :user
    has_many :orders
    validates :user_id, :product_name, :description, :units, :quantity, :price, :category, :shipping, presence: true
    validates :quantity, :price, :shipping, numericality: true


    def self.search(search)
        where("product_name ILIKE ? OR description ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end

    CATEGORIES = ['Fruit', 'Vegetables', 'Dairy', 'Speciality - All', 'Baked Goods', 'Home Cooking', 'Ready to Eat - All', 'Plants/Seeds', 'Livestock - Feed', 'Livestock - Other', 'Farm Supplies - All', 'Other - All']

end
