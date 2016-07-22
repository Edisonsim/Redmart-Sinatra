require './models/user'
require 'faker'


(0..10).each do |i|
    User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      address: Faker::Address.street_address
    )
