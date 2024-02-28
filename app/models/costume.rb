class Costume < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 6 }
  has_one_attached :photo
end
