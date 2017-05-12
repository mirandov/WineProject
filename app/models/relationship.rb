class Relationship < ActiveRecord::Base
  belongs_to :grape_sort
  belongs_to :wine_sort
  validates :ratio,  presence: true
  accepts_nested_attributes_for :grape_sort, reject_if: proc{ |attributes| attributes['name'].blank?}, allow_destroy: true

end
