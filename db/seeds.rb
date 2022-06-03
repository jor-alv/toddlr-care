# DESTROYING PREVIOUS SEEDS

puts 'Previous seeds are being destroyed...'

Daycare.destroy_all
User.destroy_all
Consultation.destroy_all
Review.destroy_all
Tag.destroy_all

# CREATING NEW SEEDS

puts 'New seeds are being created...'

# CREATING USERS

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

# # 5. Claire Harrison

User.create(category: 1,
            first_name: 'Claire',
            last_name: 'Harrison',
            company_name: '',
            email: "claire_harrison@email.com",
            password: '123456',
            bio: "I have two boys and am hoping this app will help me find a daycare for them.")

claire_harrison = User.last

# 6. Angelina Scott

User.create(category: 1,
            first_name: 'Angelina',
            last_name: 'Scott',
            company_name: '',
            email: "angelina_scott@email.com",
            password: '123456',
            bio: "This app looks great - I'm glad I found it!")

angelina_scott = User.last

# 7. Alice Lewis

User.create(category: 1,
            first_name: 'Alice',
            last_name: 'Lewis',
            company_name: '',
            email: "alice_lewis@email.com",
            password: '123456',
            bio: "")

alice_lewis = User.last

# Creating supplier users
puts 'Creating supplier users...'

# 8. James Campbell

User.create(category: 2,
            first_name: 'James',
            last_name: 'Campbell',
            company_name: 'Campbell Daycare Centres, Inc.',
            email: "james_campbell@email.com",
            password: "123456",
            bio: "I am a graduate of the University of Toronto with a Bachelor of Science in Business Administration. I have over 10 years of experience as a manager of daycare centres. I am here to make your life a lot easier!")

james_campbell = User.last

# 9. Jorge Alvarez

User.create(category: 2,
            first_name: 'Jorge',
            last_name: 'Alvarez',
            company_name: '',
            email: "jorge_alvarez@email.com",
            password: "123456",
            bio: "Me and my wife have been teaching children for almost 40 years. Now we have the luxury to run our own daycare business, how neat!")

jorge_alvarez = User.last

# 10. Sophia Owens

User.create(category: 2,
            first_name: 'Sophia',
            last_name: 'Owens',
            company_name: '',
            email: "sophia_owens@email.com",
            password: "123456",
            bio: "Hey I'm Sophia Owens and I run a home-based daycare in Montreal.")

sophia_owens = User.last

# 11. Alexandra Watson

User.create(category: 2,
            first_name: 'Alexandra',
            last_name: 'Watson',
            company_name: '',
            email: "alexandra_watson@email.com",
            password: "123456",
            bio: "My name is Alexandra Watson. I have 3 kids and I love teaching kids, so here I am!")

alexandra_watson = User.last

# 12. Madison Moore

User.create(category: 2,
            first_name: 'Madison',
            last_name: 'Moore',
            company_name: '',
            email: "madison_moore@email.com",
            password: "123456",
            bio: "My name is Madison Moore and I am the owner of Growing Sprouts Daycare. Previously, I was the Administrative Director at a five star, franchised, educational preschool for 10 years. I hold my Bachelor's Degree in Early Childhood Education.")

madison_moore = User.last

# 13. Haley Spencer

User.create(category: 2,
            first_name: 'Haley',
            last_name: 'Spencer',
            company_name: '',
            email: "haley_spencer@email.com",
            password: "123456",
            bio: "My name is Haley Spencer. I have 4 kids and I fell in love with the whole daycare atmosphere, so here I am!")

haley_spencer = User.last

# 14. Vanessa Lynch

User.create(category: 2,
            first_name: 'Vanessa',
            last_name: 'Lynch',
            company_name: '',
            email: "vanessa_lynch@email.com",
            password: "123456",
            bio: "Hi, my name is Vanessa Lynch and I am the owner of three daycare centres: Giraffe Daycare, Happy Trails Daycare and Teddy Bear Daycare.")

vanessa_lynch = User.last

# #
# # CREATING DAYCARES

puts 'Creating daycares...'

# 1. Happy Faces Daycare

Daycare.create(supplier: madison_moore,
               name: 'Happy Faces Daycare',
               email: 'info@happyfaces.com',
               phone_number: '1(514)413-8519',
               address: "2050 Bd Monseigneur-Langlois, Salaberry-de-Valleyfield, Quebec, Canada",
               price: 8,
               rating: 4,
               opening_date: Time.now,
               description: "Happy Faces Daycare is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 6)

happy_faces_daycare = Daycare.last

# 2. Little Learners Academy

Daycare.create(supplier: jorge_alvarez,
               name: 'Little Learners Academy',
               email: 'info@littlelearners.com',
               phone_number: '1(514)495-7435',
               address: "5400 Rue Jean-Talon Ouest, Montreal, Quebec, Canada",
               price: 15,
               rating: 3,
               opening_date: Time.now,
               description: "Little Learners Academy is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 4)

little_learners_academy = Daycare.last

# 3. Growing Sprouts Daycare

Daycare.create(supplier: madison_moore,
               name: 'Growing Sprouts Daycare',
               email: 'info@growingsprouts.com',
               phone_number: '1(514)561-4219',
               address: "3588 Rue Goyer, Montreal, Quebec, Canada",
               price: 14,
               rating: 3,
               opening_date: Time.now,
               description: "Growing Sprouts Daycare is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 2)

growing_sprouts_daycare = Daycare.last

# 4. Bright Minds Academy

Daycare.create(supplier: jorge_alvarez,
               name: 'Bright Minds Academy',
               email: 'info@brightminds.com',
               phone_number: '1(514)855-6613',
               address: "7351 Jean-Desprez, Montreal, Quebec, Canada",
               price: 15,
               rating: 4,
               opening_date: Time.now,
               description: "Bright Minds Academy is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 3)

bright_minds_academy = Daycare.last

# 5. Kids Castle Pre-School

Daycare.create(supplier: alexandra_watson,
               name: 'Kids Castle Pre-School',
               email: 'info@kidscastle.com',
               phone_number: '1(514)325-9115',
               address: "1569 Rue Dudemaine, Montreal, Quebec, Canada",
               price: 6,
               rating: 2,
               opening_date: Time.now,
               description: "Kids Castle Pre-School is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 3)

kids_castle_preschool = Daycare.last

# 6. Tiny Blessings Daycare

Daycare.create(supplier: sophia_owens,
               name: 'Tiny Blessings Daycare',
               email: 'info@tinyblessings.com',
               phone_number: '1(514)453-3371',
               address: "229 Rue Danis, Salaberry-de-Valleyfield, Quebec, Canada",
               price: 8,
               rating: 3,
               opening_date: Time.now,
               description: "Tiny Blessings Daycare is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 5)

tiny_blessings_daycare = Daycare.last

# 7. Giraffe Daycare

Daycare.create(supplier: vanessa_lynch,
               name: 'Giraffe Daycare',
               email: 'info@giraffe.com',
               phone_number: '1(514)411-3861',
               address: "9175 Bd Perras, Montreal, Quebec, Canada",
               price: 9,
               rating: 3,
               opening_date: Time.now,
               description: "Giraffe Daycare is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 1)

giraffe_daycare = Daycare.last

# 8. Little Apple Academy

Daycare.create(supplier: haley_spencer,
               name: 'Little Apple Academy',
               email: 'info@littleapple.com',
               phone_number: '1(514)344-5773',
               address: "195 Boul Hymus, Pointe-Claire, Quebec, Canada",
               price: 8,
               rating: 3,
               opening_date: Time.now,
               description: "Little Apple Academy is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 1)

little_apple_academy = Daycare.last

# 9. Teddy Bear Daycare

Daycare.create(supplier: vanessa_lynch,
               name: 'Teddy Bear Daycare',
               email: 'info@teddybear.com',
               phone_number: '1(514)681-7319',
               address: "3163 Rue Fleury est, Montreal, Quebec, Canada",
               price: 9,
               rating: 3,
               opening_date: Time.now,
               description: "Teddy Bear Daycare is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 1)

teddy_bear_daycare = Daycare.last

# 10. Growing Tree Academy

Daycare.create(supplier: haley_spencer,
               name: 'Growing Tree Academy',
               email: 'info@growingtree.com',
               phone_number: '1(514)153-6648',
               address: "395 rue Cherrier, Montreal, Quebec, Canada",
               price: 8,
               rating: 3,
               opening_date: Time.now,
               description: "Growing Tree Academy is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 1)

growing_tree_academy = Daycare.last

# 11. Happy Trails Daycare

Daycare.create(supplier: vanessa_lynch,
               name: 'Happy Trails Daycare',
               email: 'info@happytrails.com',
               phone_number: '1(514)366-4128',
               address: "3250 rue Sainte-Catherine Est, Montreal, Quebec, Canada",
               price: 9,
               rating: 3,
               opening_date: Time.now,
               description: "Happy Trails Daycare is committed to helping children succeed and achieve their full potential through confidence-building activities, constructive encouragement, and open language and communication skills, all with the goal of encouraging individuality and self-esteem in your child. A child’s initial contact with the outside world without their parents is also at a daycare. That is why their educators and management make it a point to give children one-on-one time and treatment, two critical factors in a child’s social development.",
               number_of_openings: 1)

happy_trails_daycare = Daycare.last

# 12. Prison Break Daycare

Daycare.create(supplier: james_campbell,
               name: 'Prison Break Daycare',
               email: 'info@prisonbreak.com',
               phone_number: '1(514)265-8176',
               address: '565 Rue des Violettes, Salaberry-de-Valleyfield, Quebec, Canada',
               price: 10,
               rating: 5,
               opening_date: Time.now,
               description: "At Prison Break Daycares, we aim to introduce your children to a range of technologies in order to address the needs of an ever-changing society, as well as to enthusiastically and steadily train them for the more formal world of elementary school. Curiosity is the main catalyst of information learning. At Prison Break Daycares we aim for a superior educational environment that fosters your children’s sense of interest through community explorations and constructive participatory learning that encourage mutual connection and productive growth, working hand in hand with parents. Here, your child will develop their personality, their best mind and most important of all, how to escape prison.",
               number_of_openings: 9)

prison_break_daycare = Daycare.last

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
#                     start_time: '',
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
#     Consultation.create!(start_time: Date.tomorrow,
#                         client_id: parent.id,
#                         daycare_id: daycare.id,
#                         status: rand(1...2))
#   end
# end
puts 'Creating tags'

Tag.create(name: "Vaccinated staff", font_awesome: "house-medical")
Tag.create(name: "Large playground", font_awesome: "baseball")
Tag.create(name: "Nearby park", font_awesome: "tree")
Tag.create(name: "Montessori", font_awesome: "graduation-cap")
Tag.create(name: "Music instruction", font_awesome: "music")
Tag.create(name: "LGBTQIA+ friendly", font_awesome: "rainbow")
Tag.create(name: "Halal food")
Tag.create(name: "Kosher food")
Tag.create(name: "Allergy friendly", font_awesome: "house-carrot")
Tag.create(name: "English speaking")
Tag.create(name: "French speaking")
Tag.create(name: "Spanish speaking")
Tag.create(name: "Arabic speaking")
Tag.create(name: "Mandarin speaking")
Tag.create(name: "All-boys")
Tag.create(name: "All-girls")
Tag.create(name: "Co-ed")
Tag.create(name: "Many teachers per class (at least 1:5")

puts 'All seeds have been successfully created...'

#
# Possible additional info

# Montreal Addresses

# 4043 rue Ontario Est, Montreal, Quebec, Canada
# 9155 rue Saint Hubert, Montreal, Quebec, Canada
# 4653 Place Chénier, Laval, Quebec, Canada

# # Other daycares

# # 2. Le Wagon Daycare

# Daycare.create(supplier: le_wagon_daycares,
#                name: 'Le Wagon Daycare',
#                email: 'daycare@lewagon.com',
#                phone_number: '1(514)447-9576',
#                address: '',
#                price: 7,
#                rating: 4,
#                opening_date: Time.now,
#                description: "All you need is code. Change your life, learn to code!",
#                number_of_openings: 1)

# le_wagon_daycare = Daycare.last

# # 3. Walmart Daycare 1

# Daycare.create(supplier: walmart_daycares,
#                name: 'Walmart Daycare 1',
#                email: 'daycare1@walmart.com',
#                phone_number: '1(514)447-4576',
#                address: '',
#                price: 4,
#                rating: 2,
#                opening_date: Time.now,
#                description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
#                number_of_openings: 2)

# walmart_daycare_1 = Daycare.last

# # 4. Shorties Daycare 1

# Daycare.create(supplier: james_campbell,
#                name: 'Shorties Daycare 1',
#                email: 'daycare1@shorties.com',
#                phone_number: '1(514)447-4590',
#                address: '',
#                price: 6,
#                rating: 3,
#                opening_date: Time.now,
#                description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
#                number_of_openings: 1)

# shorties_daycare_1 = Daycare.last

# # 5. Walmart Daycare 2

# Daycare.create(supplier: walmart_daycares,
#                name: 'Walmart Daycare 2',
#                email: 'daycare2@walmart.com',
#                phone_number: '1(514)447-1376',
#                address: '',
#                price: 4,
#                rating: 2,
#                opening_date: Time.now,
#                description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
#                number_of_openings: 2)

# walmart_daycare_2 = Daycare.last

# # 6. Walmart Daycare 3

# Daycare.create(supplier: walmart_daycares,
#                name: 'Walmart Daycare 3',
#                email: 'daycare3@walmart.com',
#                phone_number: '1(514)447-4500',
#                address: '',
#                price: 4,
#                rating: 2,
#                opening_date: Time.now,
#                description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
#                number_of_openings: 2)

# walmart_daycare_3 = Daycare.last

# # 7. Shorties Daycare 2

# Daycare.create(supplier: james_campbell,
#                name: 'Shorties Daycare 2',
#                email: 'daycare2@shorties.com',
#                phone_number: '1(514)447-4588',
#                address: '',
#                price: 4,
#                rating: 2,
#                opening_date: Time.now,
#                description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
#                number_of_openings: 2)

# shorties_daycare_2 = Daycare.last

# # 8. Shorties Daycare 3

# Daycare.create(supplier: james_campbell,
#                name: 'Shorties Daycare 3',
#                email: 'daycare3@shorties.com',
#                phone_number: '1(514)447-4501',
#                address: '',
#                price: 4,
#                rating: 2,
#                opening_date: Time.now,
#                description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
#                number_of_openings: 2)

# shorties_daycare_3 = Daycare.last

# # 9. Hufflepuff Daycare

# Daycare.create(supplier: hufflepuff_daycares,
#                name: 'Hufflepuff Daycare',
#                email: 'daycare@hufflepuff.com',
#                phone_number: '1(514)447-4511',
#                address: '',
#                price: 8,
#                rating: 4,
#                opening_date: Time.now,
#                description: "Our mission is to serve the child in a loving, nurturing and stimulating environment.",
#                number_of_openings: 1)

# hufflepuff_daycare = Daycare.last

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
