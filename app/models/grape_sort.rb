class GrapeSort < ActiveRecord::Base
  has_many :relationships
  validates :name, :place_of_growth, :date_of_collection, presence: true
  validates :name, :place_of_growth, length: {in: 0..64}
end
