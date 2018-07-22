class Contribution < ApplicationRecord
  belongs_to :guest, optional: true

  scope :this_year, -> { where("created_at >= ?", 6.months.ago)}
end
