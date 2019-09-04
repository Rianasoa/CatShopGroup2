class Item < ApplicationRecord

	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true

	has_many :cartItems
	has_many :carts, through: :cartItems
	has_many :orders
	belongs_to :user, optional: true

end
