class Contribution < ApplicationRecord
  belongs_to :guest, optional: true
end
