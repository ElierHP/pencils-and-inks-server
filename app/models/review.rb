class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  # validations
  validates :title, presence: true, length: { minimum: 4, maximum: 40  }

  validates :comment, presence: true, length: { minimum: 10, maximum: 255  }

  validates :rating, numericality: {greater_than: 0, less_than_or_equal_to: 5,  only_integer: true }

  validates :recommended, inclusion: { in: [ true, false ] }
end
