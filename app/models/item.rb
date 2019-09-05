class Item < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true

	has_many :cart_items
	has_many :carts, through: :cart_items
	has_many :order_items
	has_many :orders, through: :order_items
	belongs_to :user, optional: true
end
