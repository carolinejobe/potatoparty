class Contribution < ApplicationRecord
  validates :person, presence: true
  validates :food, presence: true
end
