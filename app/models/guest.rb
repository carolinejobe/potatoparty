class Guest < ApplicationRecord
  has_one :contribution
  validates :name, presence: true
  accepts_nested_attributes_for :contribution

  scope :this_year, -> { where("created_at >= ?", 6.months.ago)}

end
