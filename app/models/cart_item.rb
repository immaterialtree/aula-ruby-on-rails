class CartItem
  include Mongoid::Document
  include Mongoid::Timestamps
  field :quantity, type: Integer
  belongs_to :user
  belongs_to :product
end
