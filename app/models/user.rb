class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :email, type: String
  field :password, type: String

  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items
end
