class Costume < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 6 }
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_costume_type,
  against: [ :name, :costume_type ],
  using: {
    tsearch: { prefix: true }
  }
end
