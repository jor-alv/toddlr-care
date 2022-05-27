# DESTROYING PREVIOUS SEEDS

puts 'Previous seeds are being destroyed...'

Daycare.destroy_all
User.destroy_all

# CREATING NEW SEEDS

puts 'New seeds are being created...'

# CREATING USERS

puts 'Creating users...'

3.times do
  User.create!(email: Faker::Internet.email,
               first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               password: "123456",
               bio: Faker::Hipster.paragraph,
               company_name: "#{Faker::Company.name} #{Faker::Company.suffix}",
               category: 2)
              end

5.times do
  User.create!(email: Faker::Internet.email,
              first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name,
              password: "123456",
              category: 1)
end

parents = User.where(category: 1)
parents.each do |parent|
  Daycare.all.each do |daycare|
    Consultation.create!(date_time: DateTime.tomorrow,
                         client_id: parent.id,
                         daycare_id: daycare.id)
  end
end

puts 'Creating daycares...'

User.all.each do |user|
  3.times do
    Daycare.create!(name: "#{Faker::Hipster.word.capitalize} Daycare",
                    description: Faker::Hipster.paragraph,
                    supplier_id: user.id,
                    number_of_openings: rand(1..5),
                    price: rand(100..500),
                    address: "#{Faker::Address.street_address}, #{Faker::Address.street_name}, #{Faker::Address.city}")
  end
end


# Creating client users
# puts 'Creating client users...'

# 1. client_1

# User.create(category: 1,
#             first_name: 'Kim',
#             last_name: 'Coquilla',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# kim = User.last

# 2. client_2

# User.create(category: 1,
#             first_name: 'Jorge',
#             last_name: 'Alvarez',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# client_2 = User.last

# 3. client_3

# User.create(category: 1,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# client_3 = User.last

# 4. client_4

# User.create(category: 1,
#             first_name: 'Kim',
#             last_name: 'Coquilla',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "Hey my name is Kim and I have a lot of kids who need to go to daycares!")

# kim = User.last

# # 5. client_5

# User.create(category: 1,
#             first_name: 'Jorge',
#             last_name: 'Alvarez',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "Hello my name is Jorge. My kids need a place to stay while I go off to work.")

# jorge = User.last

# # 6. client_6

# User.create(category: 1,
#             first_name: 'John',
#             last_name: 'Littlewood',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "Hey I'm John and I have twins that need a nursery asap!")

# john = User.last

# # 7. client_7

# User.create(category: 1,
#             first_name: 'Claudette',
#             last_name: 'Smith',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "Hello I'm Claudette this app is amazing!")

# claudette = User.last

# # Creating supplier users
puts 'Creating supplier users...'

# 8. supplier_1

# User.create(category: 2,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_1 = User.last

# 9. supplier_2

# User.create(category: 2,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_2 = User.last

# 10. supplier_3

# User.create(category: 2,
#             first_name: 'James',
#             last_name: 'Campbell',
#             company_name: 'Teddy Bear Daycares',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "For almost 40 years, I've been teaching children, now I have the luxury to run my own daycare business, how neat!")

# james = User.last

# # 11. supplier_4

# User.create(category: 2,
#             first_name: 'Yann',
#             last_name: 'Bouhadana',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "I have 4 kids and I fell inlove with the whole daycare atmosphere, so here I am.")

# yann = User.last

# # 12. supplier_5

# User.create(category: 2,
#             first_name: 'Emilie',
#             last_name: 'Ware',
#             company_name: 'Itty Bitties Daycares',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "My name is Emilie and I'm here to make your life a lot easier!")

# emilie = User.last

# # 13. supplier_6

# User.create(category: 2,
#             first_name: 'Stephane',
#             last_name: 'Racine',
#             company_name: 'Kiddy Klubhouses',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "Hey I'm mr.Racine and one thing I can love more then golf is educating the youth")

# stephane = User.last

# # 14. supplier_7

# User.create(category: 2,
#             first_name: '',
#             last_name: '',
#             company_name: 'Walmart Daycares',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence")

# walmart = User.last

# #
# # CREATING DAYCARES


# 1. daycare_1

# Daycare.create(supplier: 'Yann Bouhadana',
#                name: 'Pitter Patter Playhouse',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
#                number_of_openings: 0,
#                opening_date: Time.now)

# pitter_patter_playhouse_1 = Daycare.last

# 2. daycare_2

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_2 = Daycare.last

# 3. daycare_3

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_3 = Daycare.last

# 4. daycare_4

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_4 = Daycare.last

# 5. daycare_5

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_5 = Daycare.last

# 6. daycare_6

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_6 = Daycare.last

# 7. daycare_7

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_7 = Daycare.last

# 8. daycare_8

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_8 = Daycare.last

# 9. daycare_9

# Daycare.create(supplier: walmart,
#                name: 'Walmart Daycare',
#                address: '6700 Ch. de la Côte-des-Neiges',
#                price: 50,
#                rating: 3.7,
#                description: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence.",
#                number_of_openings: 6,
#                opening_date: Time.now)

# walmart_daycare_1 = Daycare.last

# # 10. daycare_10

# Daycare.create(supplier: 'Stephane Racine',
#                name: 'Kiddy Klubhouse',
#                address: '1680 Rue St-Clare',
#                price: 125,
#                rating: 4.2,
#                description: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence.",
#                number_of_openings: 2,
#                opening_date: Time.now)

# kiddy_klubhouse_1 = Daycare.last

# # 11. daycare_11

# Daycare.create(supplier: 'Stephane Racine',
#                name: 'Kiddy Klubhouse',
#                address: '2313 Saint-Catherine St W',
#                price: 275,
#                rating: 4.4,
#                description: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence.",
#                number_of_openings: 2,
#                opening_date: Time.now)

# kiddy_klubhouse_2 = Daycare.last

# # 12. daycare_12

# Daycare.create(supplier: 'Stephane Racine',
#                name: 'Kiddy Klubhouse',
#                address: '601 Biscayne Blvd, Miami, FL 33132',
#                price: 350,
#                rating: 4.8,
#                description: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence.",
#                number_of_openings: 1,
#                opening_date: Time.now)

# kiddy_klubhouse_3 = Daycare.last

# # 13. daycare_13

# Daycare.create(supplier: 'Emilie Ware',
#                name: 'Itty Bitties Daycare',
#                address: '1321 Saint-Catherine St W',
#                price: 200,
#                rating: 3.8,
#                description: "Our mission is to provide your child with an unsurpassed daycare experience.",
#                number_of_openings: 6,
#                opening_date: Time.now)

# itty_bitties_daycare_1 = Daycare.last

# # 14. daycare_14

# Daycare.create(supplier: 'Emilie Ware',
#                name: 'Itty Bitties Daycare',
#                address: '5333 Casgrain Avenue',
#                price: 150,
#                rating: 4.0,
#                description: "Our mission is to provide your child with an unsurpassed daycare experience.",
#                number_of_openings: 3,
#                opening_date: Time.now)

# itty_bitties_daycare_2 = Daycare.last

# #
# CREATING REVIEWS

puts 'Creating reviews...'

# 1. review_1

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_1 = Review.last

# 2. review_2

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_2 = Review.last

# 3. review_3

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_3 = Review.last

# 4. review_4

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_4 = Review.last

# 5. review_5

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_5 = Review.last

# 6. review_6

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_6 = Review.last

# 7. review_7

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_7 = Review.last

# 8. review_8

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_8 = Review.last

# 9. review_9

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_9 = Review.last

# 10. review_10

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_10 = Review.last

# 11. review_11

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_11 = Review.last

# 12. review_12

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_12 = Review.last

# 13. review_13

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_13 = Review.last

# 14. review_14

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_14 = Review.last

# 15. review_15

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_15 = Review.last

# 16. review_16

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_16 = Review.last

# 17. review_17

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_17 = Review.last

# 18. review_18

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_18 = Review.last

# 19. review_19

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_19 = Review.last

# 20. review_20

# Review.create(daycare: '',
#               client: '',
#               stars: '',
#               content: '')
#
# review_20 = Review.last

#
# CREATING CONSULTATIONS

puts 'Creating consultations...'

# 1. consultation_1

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_1 = Consultation.last

# 2. consultation_2

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_2 = Consultation.last

# 3. consultation_3

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_3 = Consultation.last

# 4. consultation_4

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_4 = Consultation.last

# 5. consultation_5

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_5 = Consultation.last

# 6. consultation_6

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_6 = Consultation.last

# 7. consultation_7

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_7 = Consultation.last

# 8. consultation_8

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_8 = Consultation.last

# 9. consultation_9

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_9 = Consultation.last

# 10. consultation_10

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_10 = Consultation.last

# 11. consultation_11

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_11 = Consultation.last

# 12. consultation_12

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_12 = Consultation.last

# 13. consultation_13

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_13 = Consultation.last

# 14. consultation_14

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_14 = Consultation.last

# 15. consultation_15

# Consultation.create(daycare: '',
#                     client: '',
#                     time: '',
#                     status: '')
#
# consultation_15 = Consultation.last

# FINAL CONFIRMATION

parents = User.where(category: 1)
parents.each do |parent|
  Daycare.all.each do |daycare|
    Consultation.create!(date_time: Date.tomorrow,
                        client_id: parent.id,
                        daycare_id: daycare.id,
                        status: rand(1...2))
  end
end

puts 'All seeds have been successfully created...'
