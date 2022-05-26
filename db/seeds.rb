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

# User.create(category: 1,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# client_4 = User.last

# 5. client_5

# User.create(category: 1,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# client_5 = User.last

# 6. client_6

# User.create(category: 1,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# client_6 = User.last

# 7. client_7

# User.create(category: 1,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# client_7 = User.last

# Creating supplier users
# puts 'Creating supplier users...'

# 8. supplier_1

# User.create(category: 2,
#             first_name: 'Yann',
#             last_name: 'Bouhadana',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_1 = User.last

# 9. supplier_2

# User.create(category: 2,
#             first_name: 'James',
#             last_name: 'Campbell',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_2 = User.last

# 10. supplier_3

# User.create(category: 2,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_3 = User.last

# 11. supplier_4

# User.create(category: 2,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_4 = User.last

# 12. supplier_5

# User.create(category: 2,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_5 = User.last

# 13. supplier_6

# User.create(category: 2,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_6 = User.last

# 14. supplier_7

# User.create(category: 2,
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name.downcase}.com" : "#{first_name.downcase}_#{last_name.downcase}@email.com",
#             bio: "")
#
# supplier_7 = User.last

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

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_1 = Daycare.last

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

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_9 = Daycare.last

# 10. daycare_10

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_10 = Daycare.last

# 11. daycare_11

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_11 = Daycare.last

# 12. daycare_12

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_12 = Daycare.last

# 13. daycare_13

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_13 = Daycare.last

# 14. daycare_14

# Daycare.create(supplier: '',
#                name: '',
#                address: '',
#                price: 0,
#                rating: 0.0,
#                description: "",
#                number_of_openings: 0,
#                opening_date: Time.now)
#
# daycare_14 = Daycare.last

#
# CREATING REVIEWS

#
# CREATING CONSULTATIONS

end
