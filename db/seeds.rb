# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.destroy_all
User.destroy_all
Cart.destroy_all
CartItem.destroy_all
Order.destroy_all
OrderItem.destroy_all
cart =["https://cdn.pixabay.com/photo/2018/07/13/10/20/cat-3535404_960_720.jpg","https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_960_720.jpg","https://cdn.pixabay.com/photo/2018/03/29/21/51/cute-3273789_960_720.jpg","https://cdn.pixabay.com/photo/2015/06/09/09/35/animal-children-803123_960_720.jpg","https://cdn.pixabay.com/photo/2016/09/05/21/37/cat-1647775_960_720.jpg",
	"https://cdn.pixabay.com/photo/2017/04/04/14/29/cat-2201460_960_720.jpg","https://cdn.pixabay.com/photo/2018/03/28/16/37/cat-3269765_960_720.jpg","https://cdn.pixabay.com/photo/2013/12/12/03/08/kitten-227009_960_720.jpg",
	"https://cdn.pixabay.com/photo/2018/05/30/19/29/cat-3442257__340.jpg","https://www.photos-de-chat.fr/wp-content/uploads/2019/03/15801875_1821881761392490_5905951903153389568_n1-24.jpg","https://www.photos-de-chat.fr/wp-content/uploads/2019/03/photo-de-chat-trop-mignon-1-3.jpg","https://www.photos-de-chat.fr/wp-content/uploads/2019/03/100-chats-1662099-6-1.jpg","https://www.photos-de-chat.fr/wp-content/uploads/2019/03/ebcac5efaad7b29f4171e3384baad92a-21.jpg","https://www.photos-de-chat.fr/wp-content/uploads/2019/03/Photo-chaton-trop-mignon-tigr25C325A9-1-9.jpg","https://www.photos-de-chat.fr/wp-content/uploads/2019/03/image-les-chatons-mignons-chaton-trop-mignon-chat-adorable-le-vol-3.jpg"]
for i in (0..cart.length-1)
	Item.create!(title: Faker::Creature::Cat.name,
				description: Faker::Creature::Cat.breed,
				price: Faker::Commerce.price,
                image_url: cart[i])
end

puts "Items create"

puts "20 seed for item created succesfully with 4 attributs"
    10.times do
        User.create(email: Faker::Internet.email,
                    password: "123456789")
    end
puts "10 seed for user created succesfully with 2 attributs"
    for user in (1..10)
        Cart.create(user_id: user)
    end
puts "10 seed for Cart created succesfully with attribut user_id "
    20.times do
        CartItem.create(cart_id: rand(1..10),
                                item_id: rand(1..20))
    end
puts "20 seed for CartItem created succesfully with 2 attributs"
    for user in (0..10)
        Order.create(user_id: user)
    end
puts "10 seed for Order created succesfully with attribut user_id "
    20.times do
        OrderItem.create(order_id: rand(1..10),
                                item_id: rand(1..20))
    end
puts "20 seed for OrderItem created succesfully with 2 attributs"

