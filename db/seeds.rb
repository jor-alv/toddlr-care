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

# kim_coquilla = User.last

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

# 7. Rowena Hogan

User.create(category: 1,
            first_name: 'Rowena',
            last_name: 'Hogan',
            company_name: '',
            email: "rowena_hogan@email.com",
            password: '123456',
            bio: "")

rowena_hogan = User.last

# 7. Elizabeth Landry

User.create(category: 1,
            first_name: 'Elizabeth',
            last_name: 'Landry',
            company_name: '',
            email: "elizabeth_landry@email.com",
            password: '123456',
            bio: "")

# elizabeth_landry = User.last

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
               number_of_openings: 1)

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
               number_of_openings: 1)

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
               number_of_openings: 1)

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
               number_of_openings: 1)

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

# 1. Prison Break Daycare reviews

Review.create(daycare: prison_break_daycare,
              client: claudette_smith,
              stars: 5,
              content: "This daycare has been my rock for the last four years. The educators are exceptional, caring, kind, helpful and knowledgeable. We are sad to say goodbye after four years of comfort. I didn’t know what to expect dropping my baby boy off there when he was ten months old but they surpassed all of my expectations and gained my trust.")

Review.create(daycare: prison_break_daycare,
              client: claire_harrison,
              stars: 5,
              content: "My son absolutely loved this daycare! The team is great and very caring. It was like a second home for him and I didn’t worry about whether he was being looked after or not because every day he was excited to go! Which is always a true sign of happiness. Their development and education are well looked after. My son didn’t want to leave! Thank you to all the educators who work so hard every day to make it fun for the kids!")

Review.create(daycare: prison_break_daycare,
              client: alice_lewis,
              stars: 5,
              content: "My son has been at this daycare since he was 18 months old and he absolutely loves it. The educators are warm and loving and you get a homey feeling when you walk in. The space is newly renovated and there are big bright windows with colourful art all over the walls.")

Review.create(daycare: prison_break_daycare,
              client: angelina_scott,
              stars: 5,
              content: "In just few months, I have seen the significant change of my child’s improvement in terms of her growth and development. She really learned a lot of different skills in preparation to her big school. I have peace of mind everyday that I leave my daughter to their care. With all of my heart, I am so satisfied and thankful to Prison Break Daycare!")

Review.create(daycare: prison_break_daycare,
              client: yann_bouhadana,
              stars: 5,
              content: "An amazing place! My son loves going there and I'm very impressed every day seeing all the stuff he learns, how he develops his skills and motricity, and all of this while having fun! Thank you to all the staff for such amazing work and for making my son a happy kid! I absolutely recommend Prison Break Daycare!")

# 2. Rest of the daycares reviews

Review.create(daycare: happy_faces_daycare,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: little_learners_academy,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: growing_sprouts_daycare,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: growing_sprouts_daycare,
              client: rowena_hogan,
              stars: 4,
              content: "")

Review.create(daycare: growing_sprouts_daycare,
              client: rowena_hogan,
              stars: 5,
              content: "")

Review.create(daycare: bright_minds_academy,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: kids_castle_preschool,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: tiny_blessings_daycare,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: tiny_blessings_daycare,
              client: claudette_smith,
              stars: 4,
              content: "")

Review.create(daycare: giraffe_daycare,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: little_apple_academy,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: little_apple_academy,
              client: john_littlewood,
              stars: 2,
              content: "")

Review.create(daycare: little_apple_academy,
              client: angelina_scott,
              stars: 2,
              content: "")

Review.create(daycare: teddy_bear_daycare,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: growing_tree_academy,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: growing_tree_academy,
              client: claire_harrison,
              stars: 4,
              content: "")

Review.create(daycare: happy_trails_daycare,
              client: alice_lewis,
              stars: 3,
              content: "")

Review.create(daycare: happy_trails_daycare,
              client: alice_lewis,
              stars: 5,
              content: "")
#
# CREATING CONSULTATIONS

puts 'Creating consultations...'

# 1. consultation_1

Consultation.create(daycare: prison_break_daycare,
                    client: john_littlewood,
                    start_time: 'Mon 06 Jun 16:00:00 2022',
                    status: 1)

# 2. consultation_2

Consultation.create(daycare: prison_break_daycare,
                    client: rowena_hogan,
                    start_time: 'Wed 08 Jun 15:00:00 2022',
                    status: 1)

#
# CREATING TAGS

puts 'Creating tags'

Tag.create(name: "Allergy friendly", font_awesome: "house-carrot")
allergy = Tag.last
Tag.create(name: "Large playground", font_awesome: "baseball")
playground = Tag.last
Tag.create(name: "LGBTQIA+ friendly", font_awesome: "rainbow")
Tag.create(name: "Montessori", font_awesome: "graduation-cap")
montessori = Tag.last
Tag.create(name: "Music instruction", font_awesome: "music")
music = Tag.last
Tag.create(name: "Nearby park", font_awesome: "tree")
park = Tag.last
Tag.create(name: "Vaccinated staff", font_awesome: "house-medical")
Tag.create(name: "Halal food")
Tag.create(name: "Kosher food")
Tag.create(name: "English speaking")
Tag.create(name: "French speaking")
Tag.create(name: "Spanish speaking")
Tag.create(name: "Arabic speaking")
Tag.create(name: "Mandarin speaking")
Tag.create(name: "All-boys")
Tag.create(name: "All-girls")
Tag.create(name: "Co-ed")
Tag.create(name: "Many teachers per class (at least 1:5)")

#
# CREATING DAYCARE_TAGS

# 1. Happy Faces Daycare tags

DaycareTag.create(daycare: happy_faces_daycare,
                  tag: montessori)

DaycareTag.create(daycare: happy_faces_daycare,
                  tag: park)

# 2. Little Learners Academy tags

DaycareTag.create(daycare: little_learners_academy,
                  tag: park)

DaycareTag.create(daycare: little_learners_academy,
                  tag: playground)

DaycareTag.create(daycare: little_learners_academy,
                  tag: allergy)

# 3. Growing Sprouts Daycare tags

DaycareTag.create(daycare: growing_sprouts_daycare,
                  tag: allergy)

DaycareTag.create(daycare: growing_sprouts_daycare,
                  tag: playground)

DaycareTag.create(daycare: growing_sprouts_daycare,
                  tag: music)

# 4. Bright Minds Academy tags

DaycareTag.create(daycare: bright_minds_academy,
                  tag: montessori)

DaycareTag.create(daycare: bright_minds_academy,
                  tag: park)

# 5. Kids Castle Pre-School tags

DaycareTag.create(daycare: kids_castle_preschool,
                  tag: music)

DaycareTag.create(daycare: kids_castle_preschool,
                  tag: park)

DaycareTag.create(daycare: kids_castle_preschool,
                  tag: montessori)

# 6. Tiny Blessings Daycare tags

DaycareTag.create(daycare: tiny_blessings_daycare,
                  tag: allergy)

DaycareTag.create(daycare: tiny_blessings_daycare,
                  tag: playground)

# 7. Giraffe Daycare tags

DaycareTag.create(daycare: giraffe_daycare,
                  tag: montessori)

DaycareTag.create(daycare: giraffe_daycare,
                  tag: allergy)

DaycareTag.create(daycare: giraffe_daycare,
                  tag: music)

# 8. Little Apple Academy tags

DaycareTag.create(daycare: little_apple_academy,
                  tag: park)

DaycareTag.create(daycare: little_apple_academy,
                  tag: playground)

DaycareTag.create(daycare: little_apple_academy,
                  tag: allergy)

# 9. Teddy Bear Daycare tags

DaycareTag.create(daycare: teddy_bear_daycare,
                  tag: allergy)

DaycareTag.create(daycare: teddy_bear_daycare,
                  tag: park)

# 10. Growing Tree Academy tags

DaycareTag.create(daycare: growing_tree_academy,
                  tag: music)

DaycareTag.create(daycare: growing_tree_academy,
                  tag: playground)

DaycareTag.create(daycare: growing_tree_academy,
                  tag: allergy)

# 11. Happy Trails Daycare tags

DaycareTag.create(daycare: happy_trails_daycare,
                  tag: montessori)

DaycareTag.create(daycare: happy_trails_daycare,
                  tag: park)

# 12. Prison Break Daycare tags

DaycareTag.create(daycare: prison_break_daycare,
                  tag: playground)

DaycareTag.create(daycare: prison_break_daycare,
                  tag: park)

DaycareTag.create(daycare: prison_break_daycare,
                  tag: music)

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
