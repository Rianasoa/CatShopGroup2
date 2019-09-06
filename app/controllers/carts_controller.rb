class CartsController < ApplicationController

  def create
   if user_signed_in?
    if current_user.cart == nil
      Cart.create(user_id: current_user.id)
    end
     if current_user.cart.items.include?(Item.find(params[:format])) == false
        CartItem.create( cart: current_user.cart, item: Item.find(params[:format]) )
        redirect_to root_path
     end
   else
     redirect_to new_user_session_path
   end
 end

  def show
    if user_signed_in?
         if current_user.cart == nil
        Cart.create(user_id: current_user.id)
        end
         @price_total = 0
         @cart_items = current_user.cart.items
         @cart_items.each do |cart_item|
           @price_total += cart_item.price
         end
     else
       redirect_to new_user_session_path
     end
end 

 def destroy
   @cart_item= CartItem.find_by(item_id:params[:id], cart_id: current_user.cart.id)
   @cart_item.destroy
   redirect_to cart_path(params[:id])
 end

end
