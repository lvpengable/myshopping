class Order < ActiveRecord::Base
  belongs_to :user
  has_many :product_items
  has_many :products , :through => :product_items
end
