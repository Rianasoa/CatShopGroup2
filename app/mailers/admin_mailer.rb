class AdminMailer < ApplicationMailer
	default from: 'thplyon02@protonmail.com'

	
	def order_email(order)

    
    @order = order

    
    @order_user = @order.user

    @admins = User.where(is_admin: true)

    
    @cart = @order_user.cart
    
    
    @cart_items_ordered = @cart.items

    @admins.each do |admin|
   	 mail(to: admin.email, subject: 'A new order has just been completed!') 
 		end
  end
end
