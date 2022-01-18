# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Serhiy", username: "sbardysh", password: "321")
# User.create(name: "John", username: "jsmith", password: "password")

Repairshop.create(repair_shop_name: "All Tire & Auto Service", street_address: "3141 Union Lake Rd.", city: "Commerce Township", state: "MI", zip_code: "48382")

Repairshop.create(repair_shop_name: "Waterford Collision & Towing Inc", street_address: "2579 Dixie Hwy", city: "Waterford Twp", state: "MI", zip_code: "48328")
Repairshop.create(repair_shop_name: "Troy Auto Care", street_address: "1487 Premier Dr.", city: "Troy", state: "MI", zip_code: "48084")
Repairshop.create(repair_shop_name: "Midas Redford Tire & Service", street_address: "26005 Plymouth Rd.", city: "Redford Charter Twp", state: "MI", zip_code: "48239")

Comment.create(content: "This shop took a good care of my car, I would bring my vehicle for future service.", repairshop_id: 1, user_id: 1)
