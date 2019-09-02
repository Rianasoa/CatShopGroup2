class Item < ApplicationRecord
	validates: title, presence: true, length: {in: 5..10} 
	validates: description, presence: true, length: {in: 10..50} 
	validates: price, presence: true
	validates: image_url, format: {with: /\.(png|jpg)\Z/i}
	has_many :carts
	has_many :orders
end
