class Order < ApplicationRecord
	belongs_to :user, optional: true
	has_many :items

	after_create :order_send

	 #This method calls the order_email method from user_mailer, passing the order as an argument
	def order_send
		UserMailer.order_email(self).deliver_now
		AdminMailer.order_email(self).deliver_now
	end
end
