puts 'Previous seeds are being destroyed...'

Daycare.destroy_all
User.destroy_all

puts 'New seeds are being created...'

puts 'Creating users...'

# 1. user_1

# User.create(category: '',
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name}.com" : "#{first_name}_#{last_name}@gmail.com",
#             bio: "")
#
# user_1 = User.last

# 2. user_2

# User.create(category: '',
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name}.com" : "#{first_name}_#{last_name}@gmail.com",
#             bio: "")
#
# user_2 = User.last

# 3. user_3

# User.create(category: '',
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name}.com" : "#{first_name}_#{last_name}@gmail.com",
#             bio: "")
#
# user_3 = User.last

# 4. user_4

# User.create(category: '',
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name}.com" : "#{first_name}_#{last_name}@gmail.com",
#             bio: "")
#
# user_4 = User.last

# 5. user_5

# User.create(category: '',
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name}.com" : "#{first_name}_#{last_name}@gmail.com",
#             bio: "")
#
# user_5 = User.last

# 6. user_6

# User.create(category: '',
#             first_name: '',
#             last_name: '',
#             company_name: '',
#             email: company_name.present? ? "contact@#{company_name}.com" : "#{first_name}_#{last_name}@gmail.com",
#             bio: "")
#
# user_6 = User.last

3.times do
  User.create!(email: Faker::Internet.email,
               first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               password: "123456",
               company_name: "#{Faker::Company.name} #{Faker::Company.suffix}",
               category: 2)
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
