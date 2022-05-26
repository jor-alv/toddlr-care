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
               company_name: "#{Faker::Company.name.downcase} #{Faker::Company.suffix}",
               category: 2)
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

User.create(category: 1,
            first_name: 'Kim',
            last_name: 'Coquilla',
            company_name: '',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "Hey my name is Kim and I have a lot of kids who need to go to daycares!")

kim = User.last

# 5. client_5

User.create(category: 1,
            first_name: 'Jorge',
            last_name: 'Alvarez',
            company_name: '',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "Hello my name is Jorge. My kids need a place to stay while I go off to work.")

jorge = User.last

# 6. client_6

User.create(category: 1,
            first_name: 'John',
            last_name: 'Littlewood',
            company_name: '',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "Hey I'm John and I have twins that need a nursery asap!")

john = User.last

# 7. client_7

User.create(category: 1,
            first_name: 'Claudette',
            last_name: 'Smith',
            company_name: '',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "Hello I'm Claudette this app is amazing!")

claudette = User.last

# Creating supplier users
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

User.create(category: 2,
            first_name: 'James',
            last_name: 'Campbell',
            company_name: 'Teddy Bear Daycares',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "For almost 40 years, I've been teaching children, now I have the luxury to run my own daycare business, how neat!")

james = User.last

# 11. supplier_4

User.create(category: 2,
            first_name: 'Yann',
            last_name: 'Bouhadana',
            company_name: '',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "I have 4 kids and I fell inlove with the whole daycare atmosphere, so here I am.")

yann = User.last

# 12. supplier_5

User.create(category: 2,
            first_name: 'Emilie',
            last_name: 'Ware',
            company_name: 'Itty Bitties Daycares',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "My name is Emilie and I'm here to make your life a lot easier!")

emilie = User.last

# 13. supplier_6

User.create(category: 2,
            first_name: 'Stephane',
            last_name: 'Racine',
            company_name: 'Kiddy Klubhouses',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "Hey I'm mr.Racine and one thing I can love more then golf is educating the youth")

stephane = User.last

# 14. supplier_7

User.create(category: 2,
            first_name: '',
            last_name: '',
            company_name: 'Walmart Daycares',
            email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
            bio: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence")

walmart = User.last

#
# CREATING DAYCARES

puts 'Creating daycares...'

User.all.each do |user|
  3.times do
    Daycare.create!(name: "#{Faker::Hipster.word.capitalize} Daycare",
                    description: Faker::Hipster.paragraph,
                    supplier_id: user.id,
                    number_of_openings: rand(1..5),
                    price: rand(100..500),
                    address: "#{Faker::Address.street_address}, #{Faker::Address.street_name.downcase}, #{Faker::Address.city}")
  end

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

Daycare.create(supplier: walmart,
               name: 'Walmart Daycare',
               address: '6700 Ch. de la Côte-des-Neiges',
               price: 50,
               rating: 3.7,
               description: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence.",
               number_of_openings: 6,
               opening_date: Time.now)

walmart_daycare_1 = Daycare.last

# 10. daycare_10

Daycare.create(supplier: 'Stephane Racine',
               name: 'Kiddy Klubhouse',
               address: '1680 Rue St-Clare',
               price: 125,
               rating: 4.2,
               description: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence.",
               number_of_openings: 2,
               opening_date: Time.now)

kiddy_klubhouse_1 = Daycare.last

# 11. daycare_11

Daycare.create(supplier: 'Stephane Racine',
               name: 'Kiddy Klubhouse',
               address: '2313 Saint-Catherine St W',
               price: 275,
               rating: 4.4,
               description: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence.",
               number_of_openings: 2,
               opening_date: Time.now)

kiddy_klubhouse_2 = Daycare.last

# 12. daycare_12

Daycare.create(supplier: 'Stephane Racine',
               name: 'Kiddy Klubhouse',
               address: '601 Biscayne Blvd, Miami, FL 33132',
               price: 350,
               rating: 4.8,
               description: "Our curriculum is designed to foster a love of learning and the ability to ask questions, seek out answers and build self-confidence.",
               number_of_openings: 1,
               opening_date: Time.now)

kiddy_klubhouse_3 = Daycare.last

# 13. daycare_13

Daycare.create(supplier: 'Emilie Ware',
               name: 'Itty Bitties Daycare',
               address: '1321 Saint-Catherine St W',
               price: 200,
               rating: 3.8,
               description: "Our mission is to provide your child with an unsurpassed daycare experience.",
               number_of_openings: 6,
               opening_date: Time.now)

itty_bitties_daycare_1 = Daycare.last

# 14. daycare_14

Daycare.create(supplier: 'Emilie Ware',
               name: 'Itty Bitties Daycare',
               address: '5333 Casgrain Avenue',
               price: 150,
               rating: 4.0,
               description: "Our mission is to provide your child with an unsurpassed daycare experience.",
               number_of_openings: 3,
               opening_date: Time.now)

itty_bitties_daycare_2 = Daycare.last

#
# CREATING REVIEWS

# CREATING CONSULTATIONS
end
