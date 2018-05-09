class Support
    include ActiveModel::Model
    attr_accessor :name, :email, :phone_number, :subject, :body, :username
    validates :name, :email, :phone_number,:subject, :body, :username, presence: true
end
