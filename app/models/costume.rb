class Costume < ApplicationRecord
  # def self.types
  #   ["mammifère", "lombric", "rapace", "reptile", "insecte"]
  # end

  belongs_to :user
  validates :name, presence: true, length: { minimum: 6 }
  # validates :costume_type, inclusion: Costume.types
  has_one_attached :photo
end
