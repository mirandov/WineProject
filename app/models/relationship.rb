class Relationship < ActiveRecord::Base
  belongs_to :grape_sort
  belongs_to :wine_sort
  validates :ratio, :grape_sort_id, :wine_sort_id, presence: true

end
