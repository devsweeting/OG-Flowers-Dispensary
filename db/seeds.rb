# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all

20.times do |index|
  Product.create!(strain: Faker::Cannabis.strain,
                  cann_abbr: Faker::Cannabis.cannabinoid_abbreviation,
                  cost: (rand() * 10).to_i,
                  origin: Faker::Nation.nationality)
end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.first.id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::HowIMetYourMother.catch_phrase,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[1].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[2].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::HowIMetYourMother.catch_phrase,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[3].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[4].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[5].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::HowIMetYourMother.catch_phrase,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[6].id)

end


3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[7].id)

end


3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[8].id)

end


3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[9].id)

end


3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::HowIMetYourMother.catch_phrase,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[10].id)

end


3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[11].id)

end


3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[12].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[13].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[14].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[15].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[16].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[17].id)

end


3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[18].id)

end

3.times do |index|
   Review.create!(author: Faker::Pokemon.name,
                  description: Faker::FamousLastWords.last_words,
                  rating: Faker::Number.between(1, 5),
                  product_id: Product.all[19].id)

end
