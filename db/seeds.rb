# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




 AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

#
# doc = File.open("/home/dimrodgers/Nokogiri_test/Brands.xml") { |f| Nokogiri::XML(f) }
#
# doc.css('b').each do |node|
#
#   PrBrand.create(
#     :brand => node.text
#   )
# end
#
# doc = File.open("/home/dimrodgers/Nokogiri_test/Sub_cat.xml") { |f| Nokogiri::XML(f) }
#
# doc.css('sub_cat').each do |node|
#
#   PrSubCategory.create(
#     :sub_category  => node.text
#   )
# end
