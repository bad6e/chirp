# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Seed Chirps
::Chirp.create!(
  text: "this is the first chirp",
)

::Chirp.create!(
  text: "this is the second chirp",
)

puts "Seeded Chirps!"
