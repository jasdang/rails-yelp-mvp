class Review < ApplicationRecord
  # validation
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true },
            inclusion: { in: (0..5) }
  # relationship
  belongs_to :restaurant
end
