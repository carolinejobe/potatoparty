class Guest < ApplicationRecord
  has_one :contribution
  validates :name, presence: true
  accepts_nested_attributes_for :contribution
end
