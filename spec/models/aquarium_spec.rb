require 'rails_helper'

RSpec.describe Aquarium, type: :model do
  describe 'model existence' do
    it 'exists' do
      aquarium = Aquarium.create!(name: "River Haven", has_real_plants: false, gallons: 5.0, created_at: DateTime.now, updated_at: DateTime.now)
      expect(aquarium).to be_an(Aquarium)
    end
  end
  describe 'validations' do
    it { should validate_presence_of :name }
  end
end
