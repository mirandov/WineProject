class WineSort < ActiveRecord::Base
  has_many :relationships
  has_many :barrels
  has_many :grape_sorts, through: :relationships
  accepts_nested_attributes_for :relationships, reject_if: proc{ |attributes| attributes['ratio'].blank?}, allow_destroy: true


  validates :name, :type_of_wine, :color, :barrel_extract, :bottle_extract, presence: true
  validates :name, :type_of_wine, length:{in: 0..64}
  validates :color, length:{in: 0..30}
  validates :type_of_wine, inclusion: {in: ['Сухое','Полусухое','Полусладкое','Сладкое','Ликёрное', 'Другое']}
  validates :barrel_extract, :bottle_extract, numericality: {greater_than_or_equal_to: 0 }
  validates :name, uniqueness: {scope: [:type_of_wine, :color, :barrel_extract, :bottle_extract]}

  # def data=(value)
  #   self[:data] = {data: value}
  # end
end
