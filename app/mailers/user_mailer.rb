class UserMailer < ApplicationMailer
	  default from: 'catshop@gasikara.mg'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def order_email(order)

    # We get the order
    @order = order

    #We get the user
    @user = @order.user

    # We get the user's cart
    @cart = @user.cart
    
    # We get all the items from the cart
    @cart_items_ordered = @cart.items

    #We define the website url
    @url  = 'http://chatons-project-production.herokuapp.com' 

    # We send an email to the user for every order
    mail(to: @user.email, subject: 'Thank you for your order!') 
end
end
