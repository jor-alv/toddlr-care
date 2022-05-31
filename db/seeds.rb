# DESTROYING PREVIOUS SEEDS

puts 'Previous seeds are being destroyed...'

Daycare.destroy_all
User.destroy_all

# CREATING NEW SEEDS

puts 'New seeds are being created...'

# CREATING USERS

# puts 'Creating users...'

# 3.times do
#   User.create!(email: Faker::Internet.email,
#                first_name: Faker::Name.first_name,
#                last_name: Faker::Name.last_name,
#                password: "123456",
#                bio: Faker::Hipster.paragraph,
#                company_name: "#{Faker::Company.name} #{Faker::Company.suffix}",
#                category: 2)
#               end

# 5.times do
#   User.create!(email: Faker::Internet.email,
#               first_name: Faker::Name.first_name,
#               last_name: Faker::Name.last_name,
#               password: "123456",
#               category: 1)
# end

# parents = User.where(category: 1)
# parents.each do |parent|
#   Daycare.all.each do |daycare|
#     Consultation.create!(date_time: DateTime.tomorrow,
#                          client_id: parent.id,
#                          daycare_id: daycare.id)
#   end
# end

# # puts 'Creating daycares...'

# User.all.each do |user|
#   3.times do
#     Daycare.create!(name: "#{Faker::Hipster.word.capitalize} Daycare",
#                     description: Faker::Hipster.paragraph,
#                     supplier_id: user.id,
#                     number_of_openings: rand(1..5),
#                     price: rand(100..500),
#                     address: "#{Faker::Address.street_address}, #{Faker::Address.street_name}, #{Faker::Address.city}")
#   end
# end

# Creating client users
puts 'Creating client users...'

# 1. Kim Coquilla

User.create(category: 1,
            first_name: 'Kim',
            last_name: 'Coquilla',
            company_name: '',
            email: "kim_coquilla@email.com",
            password: "123456",
            bio: "Hey, my name is Kim and I have a lot of kids who need to go to daycares!")

kim_coquilla = User.last

# 2. Yann Bouhadana

User.create(category: 1,
            first_name: 'Yann',
            last_name: 'Bouhadana',
            company_name: '',
            email: "yann_bouhadana@email.com",
            password: "123456",
            bio: "Hello, my name is Yann. My kids need a place to stay while I go off to work.")

yann_bouhadana = User.last

# 3. Claudette Smith

User.create(category: 1,
            first_name: 'Claudette',
            last_name: 'Smith',
            company_name: '',
            email: "claudette_smith@email.com",
            password: "123456",
            bio: "Hello, I'm Claudette this app is amazing!")

claudette_smith = User.last

# 4. John Littlewood

User.create(category: 1,
            first_name: 'John',
            last_name: 'Littlewood',
            company_name: '',
            email: "john_littlewood@email.com",
            password: "123456",
            bio: "Hey, I'm John and I have twins that need a nursery asap!")

john_littlewood = User.last

# # 5. client_5

# User.create(category: 1,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: "",
#             bio: "")

# client_5 = User.last

# # 6. client_6

# User.create(category: 1,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: "",
#             bio: "")

# client_6 = User.last

# # 7. client_7

# User.create(category: 1,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: "",
#             bio: "")

# client_7 = User.last

# Creating supplier users
puts 'Creating supplier users...'

# 8. Jorge Alvarez

User.create(category: 2,
            first_name: 'Jorge',
            last_name: 'Alvarez',
            company_name: 'Prison Break Daycares',
            email: "jorge_alvarez@email.com",
            password: "123456",
            bio: "Me and my wife have been teaching children for almost 40 years. Now we have the luxury to run our own daycare business, how neat!")

jorge_alvarez = User.last

# 9. james_campbell

User.create(category: 2,
            first_name: 'James',
            last_name: 'Campbell',
            company_name: 'Shorties Daycares',
            email: "james_campbell@email.com",
            password: "123456",
            bio: "My name is James and I'm here to make your life a lot easier!")

james_campbell = User.last

# 10. hufflepuff_daycares

User.create(category: 2,
            first_name: 'Helga',
            last_name: 'Hufflepuff',
            company_name: 'Hufflepuff Daycares',
            email: "hufflepuff_daycares@email.com",
            password: "123456",
            bio: "I have 4 kids and I fell in love with the whole daycare atmosphere, so here I am!")

hufflepuff_daycares = User.last

# 11. Le Wagon Daycares

User.create(category: 2,
            first_name: 'Stephane',
            last_name: 'Lafontaine',
            company_name: 'Le Wagon Daycares',
            email: "le_wagon_daycares@email.com",
            password: "123456",
            bio: "All you need is code. Change your life, learn to code!")

le_wagon_daycares = User.last

# 12. Walmart Daycares

User.create(category: 2,
            first_name: 'Emilie',
            last_name: 'Ware',
            company_name: 'Walmart Daycares',
            email: "walmart_daycares@email.com",
            password: "123456",
            bio: "A premier early care and education provider which respects the child, encourages learning through exploration, and supports the family within a creative and nurturing environment.")

walmart_daycares = User.last

# 13. supplier_6

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

puts 'Creating daycares...'

# 1. Le Wagon Daycare

Daycare.create(supplier: le_wagon_daycares,
               name: 'Le Wagon Daycare',
               email: 'daycare@lewagon.com',
               phone_number: '+15144479576',
               address: '5333 Casgrain Avenue, Montreal, Quebec, Canada',
               price: 7,
               rating: 4,
               opening_date: Time.now,
               description: "All you need is code. Change your life, learn to code!",
               number_of_openings: 1)

le_wagon_daycare = Daycare.last

# 2. Prison Break Daycare

Daycare.create(supplier: jorge_alvarez,
               name: 'Prison Break Daycare',
               email: 'daycare@prisonbreak.com',
               phone_number: '+15144478776',
               address: '565 Rue des Violettes, Salaberry-de-Valleyfield, Quebec, Canada',
               price: 10,
               rating: 5,
               opening_date: Time.now,
               description: "Here, your child will develop their personality, their best mind and most important of all, how to escape prison.",
               number_of_openings: 0)

prison_break_daycare = Daycare.last

# 3. Walmart Daycare 1

Daycare.create(supplier: walmart_daycares,
               name: 'Walmart Daycare 1',
               email: 'daycare1@walmart.com',
               phone_number: '+15144474576',
               address: '2050 Bd Monseigneur-Langlois, Salaberry-de-Valleyfield, Quebec, Canada',
               price: 4,
               rating: 2,
               opening_date: Time.now,
               description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
               number_of_openings: 2)

walmart_daycare_1 = Daycare.last

# 4. Shorties Daycare 1

Daycare.create(supplier: james_campbell,
               name: 'Shorties Daycare 1',
               email: 'daycare1@shorties.com',
               phone_number: '+15144474590',
               address: '229 Rue Danis, Salaberry-de-Valleyfield, Quebec, Canada',
               price: 6,
               rating: 3,
               opening_date: Time.now,
               description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
               number_of_openings: 1)

shorties_daycare_1 = Daycare.last

# 5. Walmart Daycare 2

Daycare.create(supplier: walmart_daycares,
               name: 'Walmart Daycare 2',
               email: 'daycare2@walmart.com',
               phone_number: '+15144471376',
               address: '195 Boul Hymus, Pointe-Claire, Quebec, Canada',
               price: 4,
               rating: 2,
               opening_date: Time.now,
               description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
               number_of_openings: 2)

walmart_daycare_2 = Daycare.last

# 6. Walmart Daycare 3

Daycare.create(supplier: walmart_daycares,
               name: 'Walmart Daycare 3',
               email: 'daycare3@walmart.com',
               phone_number: '+15144474500',
               address: '5400 Rue Jean-Talon Ouest, Montreal, Quebec, Canada',
               price: 4,
               rating: 2,
               opening_date: Time.now,
               description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
               number_of_openings: 2)

walmart_daycare_3 = Daycare.last

# 7. Shorties Daycare 2

Daycare.create(supplier: james_campbell,
               name: 'Shorties Daycare 2',
               email: 'daycare2@shorties.com',
               phone_number: '+15144474588',
               address: '3588 Rue Goyer, Montreal, Quebec, Canada',
               price: 4,
               rating: 2,
               opening_date: Time.now,
               description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
               number_of_openings: 2)

shorties_daycare_2 = Daycare.last

# 8. Shorties Daycare 3

Daycare.create(supplier: james_campbell,
               name: 'Shorties Daycare 3',
               email: 'daycare3@shorties.com',
               phone_number: '+15144474501',
               address: '1569 Rue Dudemaine, Montreal, Quebec, Canada',
               price: 4,
               rating: 2,
               opening_date: Time.now,
               description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
               number_of_openings: 2)

shorties_daycare_3 = Daycare.last

# 9. Hufflepuff Daycare

Daycare.create(supplier: hufflepuff_daycares,
               name: 'Hufflepuff Daycare',
               email: 'daycare@hufflepuff.com',
               phone_number: '+15144474511',
               address: '9175 Bd Perras, Montreal, Quebec, Canada',
               price: 8,
               rating: 4,
               opening_date: Time.now,
               description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
               number_of_openings: 1)

hufflepuff_daycare = Daycare.last

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

Review.create(daycare: le_wagon_daycare,
              client: claudette_smith,
              stars: 5,
              content: "This daycare has been my rock for the last four years. The educators are exceptional, caring, kind, helpful and knowledgeable. We are sad to say goodbye after four years of comfort. I didn’t know what to expect dropping my baby boy off there when he was ten months old but they surpassed all of my expectations and gained my trust.")

review_1 = Review.last

# 2. review_2

Review.create(daycare: le_wagon_daycare,
              client: john_littlewood,
              stars: 4,
              content: "My son has been at this daycare since he was 18 months old and he absolutely loves it. The educators are warm and loving and you get a homey feeling when you walk in. The space is newly renovated and there are big bright windows with colourful art all over the walls.")

review_2 = Review.last

# 3. review_3

Review.create(daycare: le_wagon_daycare,
              client: yann_bouhadana,
              stars: 3,
              content: "3 of my kids went there and they really enjoyed their time within this public daycare. The staff is really kind, professional and competent. Thanks to the director, there always a focus to improve the wellbeing of the children.")

review_3 = Review.last

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

# Consultation.create(daycare: prison_break_daycare,
#                     client: john_littlewood,
#                     date_time: '',
#                     status: '')

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

# parents = User.where(category: 1)
# parents.each do |parent|
#   Daycare.all.each do |daycare|
#     Consultation.create!(date_time: Date.tomorrow,
#                         client_id: parent.id,
#                         daycare_id: daycare.id,
#                         status: rand(1...2))
#   end
# end
puts 'Creating tags'

Tag.create!(name: "Vaccinated staff", font_awesome: "house-medical")
Tag.create!(name: "Large playground", font_awesome: "baseball")
Tag.create!(name: "Nearby park", font_awesome: "tree")
Tag.create!(name: "Montessori", font_awesome: "graduation-cap")
Tag.create!(name: "Music instruction", font_awesome: "music")
Tag.create!(name: "LGBTQIA+ friendly", font_awesome: "rainbow")
Tag.create!(name: "Halal food")
Tag.create!(name: "Kosher food")
Tag.create!(name: "Allergy friendly", font_awesome: "house-carrot")
Tag.create!(name: "English speaking")
Tag.create!(name: "French speaking")
Tag.create!(name: "Spanish speaking")
Tag.create!(name: "Arabic speaking")
Tag.create!(name: "Mandarin speaking")
Tag.create!(name: "All-boys")
Tag.create!(name: "All-girls")
Tag.create!(name: "Co-ed")
Tag.create!(name: "Many teachers per class (at least 1:5")


puts 'All seeds have been successfully created...'
