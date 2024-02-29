class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :costume
  validate :available

  def available
    if Rental.exists?(["costume_id = ? AND (start_date, end_date) OVERLAPS (?, ?)", costume_id, start_date, end_date])
      errors.add(:base, "Le costume n'est pas disponible à cette date.")
    end
  end
end
