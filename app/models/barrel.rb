class Barrel < ActiveRecord::Base
  belongs_to :wine_sort
  validates :location, :date_of_manufacture, :amount, :is_empty, :date_of_completion, :wine_sort_id,  presence: true
  validates :is_empty, inclusion: {in: ['Пустая','Не пустая']}
  validates :amount, numericality: {greater_than_or_equal_to: 0 }


  validate :date_of_manufacture_cannot_be_in_the_future, :date_of_completion_cannot_be_in_the_future
  validate :date_of_manufacture_cannot_be_more_than_date_of_completion

  def date_of_manufacture_cannot_be_in_the_future
    if date_of_manufacture > Date.today
      errors.add(:date_of_manufacture, "не может быть установленна будущим временем")
    end
  end

  def date_of_completion_cannot_be_in_the_future
    if date_of_completion > Date.today
      errors.add(:date_of_completion, "не может быть установленна будущим временем")
    end
  end

  def date_of_manufacture_cannot_be_more_than_date_of_completion
    if date_of_completion < date_of_manufacture
      errors.add(:date_of_completion, "не может быть раньше даты изготовления")
    end
  end
end
