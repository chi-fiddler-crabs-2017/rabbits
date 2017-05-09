require 'faker'

10.times do
  Rabbit.create!(name: Faker::Hipster.word, breed: Faker::Hipster.word)
end