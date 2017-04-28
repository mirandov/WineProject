class Barrel < ActiveRecord::Base
  belongs_to :wine_sort
  validates :location, :date_of_manufacture, :amount, :is_empty, :date_of_completion, presence: true
  validates :is_empty, inclusion: {in: ['Пустая','Не пустая']}
  validates :amount, numericality: {greater_than_or_equal_to: 0 }
end
