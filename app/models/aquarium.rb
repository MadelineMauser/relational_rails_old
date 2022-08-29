class Aquarium < ApplicationRecord
  has_many :shrimps
  
  validates_presence_of :name
end
