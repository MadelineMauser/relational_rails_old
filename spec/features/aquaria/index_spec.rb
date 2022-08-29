require 'rails_helper'

RSpec.describe 'aquaria index page', type: :feature do
  it 'can see the name of each aquarium record' do
    aquarium_1 = Aquarium.create!(name: "River Haven", has_real_plants: false, gallons: 5.0, created_at: DateTime.now, updated_at: DateTime.now)
    aquarium_2 = Aquarium.create!(name: "Waterfall Escape", has_real_plants: true, gallons: 10.0, created_at: DateTime.now, updated_at: DateTime.now)

    visit '/aquaria'

    expect(page).to have_content(aquarium_1.name)
    expect(page).to have_content(aquarium_2.name)
  end
end
