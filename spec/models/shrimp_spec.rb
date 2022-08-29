require 'rails_helper'

RSpec.describe Shrimp, type: :model do
  describe 'model existence' do
    it 'exists' do
      aquarium = Aquarium.create!(name: "River Haven", has_real_plants: false, gallons: 5.0, created_at: DateTime.now, updated_at: DateTime.now)
      shrimp = Shrimp.create!(name: "Mama Clementine", length_in_cm: 1.7, is_female: true, color: "orange", created_at: DateTime.now, updated_at: DateTime.now, aquarium_id: aquarium.id)

      expect(shrimp).to be_a(Shrimp)
    end
  end
  describe 'relationships' do
    it { should belong_to :aquarium }
  end
end
