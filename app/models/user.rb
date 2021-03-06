class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile, dependent: :destroy
  has_many :products, dependent: :destroy
  acts_as_messageable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,  :omniauthable, :omniauth_providers => [:stripe_connect]
  def mailboxer_email(object)
    email
  end
end
