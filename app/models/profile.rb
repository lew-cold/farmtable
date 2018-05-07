class Profile < ApplicationRecord
  belongs_to :user, optional: true
  devise :omniauthable, :omniauth_providers => [:stripe_connect]

  def self.search(search)
    where("username LIKE ? OR first_name LIKE ? OR last_name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
  end 
end
