puts 'Seeds are being sown...'

# Daycare.create(name: "ABC Little School")
# Daycare.create(name: "XYZ Little School")
# Daycare.create(name: "MTL Little School")


Daycare.destroy_all
User.destroy_all

3.times do
  User.create!(email: Faker::Internet.email,
               first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               password: "123456",
               company_name: "#{Faker::Company.name} #{Faker::Company.suffix}",
               category: 2
              )
end


User.all.each do |user|
  3.times do
    Daycare.create!(name: "#{Faker::Hipster.word.capitalize} Daycare",
                    description: Faker::Hipster.paragraph,
                    supplier_id: user.id,
                    number_of_openings: rand(1..5),
                    price: rand(100..500),
                    address: "#{Faker::Address.street_address}, #{Faker::Address.street_name}, #{Faker::Address.city}"
                    )
  end
end
