puts 'Previous seeds are being destroyed...'

Daycare.destroy_all
User.destroy_all

puts 'New seeds are being created...'

Daycare.destroy_all
User.destroy_all

3.times do
  User.create!(email: Faker::Internet.email,
               first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               password: "123456",
               company_name: "#{Faker::Company.name} #{Faker::Company.suffix}",
               category: 2)
end


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
    Consultation.create!(time: Date.tomorrow,
                         client_id: parent.id,
                         daycare_id: daycare.id)
  end
end
