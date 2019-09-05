class CartsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :create, :destroy]
  def index

  end

  def create
    if current_user.cart == nil
      Cart.create(user_id: current_user.id)
    end

      item = Item.find(params[:format])
    if
       current_user.cart.items.include?(item) == false
      CartItem.create( cart_id: current_user.cart.id, item_id: item.id)

   end
  end

  def show
   if current_user.cart == nil
     Cart.create(user_id: current_user.id)
   end
   @price_total = 0
   @cart_items = current_user.cart.items
   @cart_items.each do |cart_item| 
     @price_total += cart_item.price
   end
   session[:success] = "send to panier"
 end

 def destroy
   @cart_item= CartItem.find_by(item_id:params[:id], cart_id: current_user.cart.id)
   @cart_item.destroy
   redirect_to cart_path(params[:id])
 end

end
