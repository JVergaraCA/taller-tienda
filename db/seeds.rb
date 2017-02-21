# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Category.destroy_all
3.times do|t|
	c=Category.create(nombre:"Categoria#{t}")
	c.products.build(nombre:"producto#{t}", price: 2000)
	Product.create(nombre:"producto#{t}", price: 3000, category_id: c.id)
end

Product.last.destroy
p=Product.last
p.premium = "TRUE"
p.save

Product.all.each do |x|
	x.nombre = x.nombre.upcase
	x.save
end