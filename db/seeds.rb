require './models/user'
<<<<<<< HEAD
require './models/product'
=======
>>>>>>> 1a030b5174197687577c05b176998c21f5a75891
require 'faker'


(0..10).each do |i|
    User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      address: Faker::Address.street_address
    )
<<<<<<< HEAD

end

(0..10).each do |i|
    Product.create(
      name: Faker::Commerce.product_name,
      brand_id: Faker::Number.number(5),
      category_id: Faker::Number.number(5),
      price: Faker::Commerce.price
    )

end
=======
>>>>>>> 1a030b5174197687577c05b176998c21f5a75891
