class Support
    include ActiveModel::Model
    attr_accessor :name, :email, :phone_number, :subject, :body
    validates :name, :email, :phone_number,:subject, :body, presence: true
end
