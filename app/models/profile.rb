class Profile < ApplicationRecord
  belongs_to :user, optional: true
  devise :omniauthable, :omniauth_providers => [:stripe_connect]
  validates :user_id, :username, uniqueness: true
  validates :username, :street_address, :first_name, :last_name, :postcode, :suburb, presence: true
  validates :postcode, numericality: true
  
  

  def self.search(search)
    where("username LIKE ? OR first_name LIKE ? OR last_name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  end 
end
