require 'rails_helper'

RSpec.describe 'shrimps index page', type: :feature do
  it 'can see each shrimp record' do
    aquarium_1 = Aquarium.create!(name: "River Haven", has_real_plants: false, gallons: 5.0, created_at: DateTime.now, updated_at: DateTime.now)
    aquarium_2 = Aquarium.create!(name: "Waterfall Escape", has_real_plants: true, gallons: 10.0, created_at: DateTime.now, updated_at: DateTime.now)

    shrimp_1 = Shrimp.create!(name: "Mama Clementine", length_in_cm: 1.7, is_female: true, color: "orange", created_at: DateTime.now, updated_at: DateTime.now, aquarium_id: aquarium_1.id)
    shrimp_2 = Shrimp.create!(name: "Pimento Spice", length_in_cm: 1.3, is_female: false, color: "red", created_at: DateTime.now, updated_at: DateTime.now, aquarium_id: aquarium_2.id)

    visit '/shrimps'

    expect(page).to have_content(shrimp_1.name)
    expect(page).to have_content(shrimp_2.name)
  end

  it 'can see the attributes of each shrimp' do
    aquarium_1 = Aquarium.create!(name: "River Haven", has_real_plants: false, gallons: 5.0, created_at: DateTime.now, updated_at: DateTime.now)
    aquarium_2 = Aquarium.create!(name: "Waterfall Escape", has_real_plants: true, gallons: 10.0, created_at: DateTime.now, updated_at: DateTime.now)

    shrimp_1 = Shrimp.create!(name: "Mama Clementine", length_in_cm: 1.7, is_female: true, color: "orange", created_at: DateTime.now, updated_at: DateTime.now, aquarium_id: aquarium_1.id)
    shrimp_2 = Shrimp.create!(name: "Pimento Spice", length_in_cm: 1.3, is_female: false, color: "red", created_at: DateTime.now, updated_at: DateTime.now, aquarium_id: aquarium_2.id)

    visit '/shrimps'

    expect(page).to have_content("Aquarium ID: #{shrimp_1.aquarium_id}")
    expect(page).to have_content("Is female: #{shrimp_1.is_female}")
    expect(page).to have_content("Color: #{shrimp_1.color}")
    expect(page).to have_content("Length: #{shrimp_1.length_in_cm} cm")
    expect(page).to have_content("Created at: #{shrimp_1.created_at}")
    expect(page).to have_content("Updated at: #{shrimp_1.updated_at}")
  end
end
