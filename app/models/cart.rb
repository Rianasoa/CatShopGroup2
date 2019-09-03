class Cart < ApplicationRecord
	belongs_to :user, optional: true
	has_many :cartItems
	has_many :items, through: :cartItems

end
