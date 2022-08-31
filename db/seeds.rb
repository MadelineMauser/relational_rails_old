# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Shrimp.destroy_all
Aquarium.destroy_all

aquarium_1 = Aquarium.create!(name: "River Haven", has_real_plants: false, gallons: 5.0, created_at: DateTime.now, updated_at: DateTime.now)
aquarium_2 = Aquarium.create!(name: "Waterfall Escape", has_real_plants: true, gallons: 10.0, created_at: DateTime.now, updated_at: DateTime.now)

shrimp_1 = Shrimp.create!(name: "Mama Clementine", length_in_cm: 1.7, is_female: true, color: "orange", created_at: DateTime.now, updated_at: DateTime.now, aquarium_id: aquarium_1.id)
shrimp_2 = Shrimp.create!(name: "Pimento Spice", length_in_cm: 1.3, is_female: false, color: "red", created_at: DateTime.now, updated_at: DateTime.now, aquarium_id: aquarium_2.id)
