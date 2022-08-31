require 'rails_helper'

RSpec.describe 'aquaria show page', type: :feature do
  it 'can see the attributes of the given aquarium record' do
    aquarium_1 = Aquarium.create!(name: "River Haven", has_real_plants: false, gallons: 5.0, created_at: DateTime.now, updated_at: DateTime.now)

    visit "/aquaria/#{aquarium_1.id}"

    expect(page).to have_content(aquarium_1.name)
    expect(page).to have_content("Contains real plants: #{aquarium_1.has_real_plants}")
    expect(page).to have_content("Gallons: #{aquarium_1.gallons}")
    expect(page).to have_content("Created at: #{DateTime.now}")
    expect(page).to have_content("Updated at: #{DateTime.now}")
  end
end
