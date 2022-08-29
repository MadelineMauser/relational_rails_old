require 'rails_helper'

RSpec.describe Shrimp, type: :model do
  describe 'model existence' do
    it 'exists' do
      shrimp = Shrimp.create!(name: "Mama Clementine", length_in_cm: 1.7, is_female: true, color: "orange", created_at: DateTime.now, updated_at: DateTime.now)

      expect(shrimp).to be_a(Shrimp)
    end
  end
end
