class Relationship < ActiveRecord::Base
  belongs_to :grape_sort
  belongs_to :wine_sort
  validates :ratio, presence: true
end
