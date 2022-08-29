require 'rails_helper'

RSpec.describe Shrimp, type: :model do
  describe 'model existence' do
    it 'exists' do
      shrimp = Shrimp.create!

      expect(shrimp).to be_a(Shrimp)
    end
  end
end
