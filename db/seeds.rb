# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.destroy_all
cart =["https://cdn.pixabay.com/photo/2018/07/13/10/20/cat-3535404_960_720.jpg","https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_960_720.jpg","https://cdn.pixabay.com/photo/2016/07/10/21/47/cat-1508613__340.jpg","https://cdn.pixabay.com/photo/2015/05/22/05/52/cat-778315__340.jpg","https://cdn.pixabay.com/photo/2016/07/10/21/47/cat-1508613__340.jpg",
	"https://cdn.pixabay.com/photo/2015/11/16/22/14/cat-1046544__340.jpg","https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462__340.jpg","https://cdn.pixabay.com/photo/2013/04/01/03/45/cat-98359__340.jpg","https://cdn.pixabay.com/photo/2018/01/28/12/37/cat-3113513__340.jpg","https://cdn.pixabay.com/photo/2018/07/08/14/16/cat-3523992__340.jpg","https://cdn.pixabay.com/photo/2016/12/30/12/16/cat-1940487__340.jpg",
	"https://cdn.pixabay.com/photo/2018/05/30/19/29/cat-3442257__340.jpg"]
for i in (0..cart.length-1)
	Item.create!(title: Faker::Creature::Cat.name,
				description: Faker::Creature::Cat.breed,
				price: Faker::Commerce.price,
                image_url: cart[i])
end

puts "Items create"

