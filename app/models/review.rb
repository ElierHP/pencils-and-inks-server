class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  # validations
  validates :title, presence: true, length: { minimum: 4, maximum: 40  }

  validates :comment, presence: true, length: { minimum: 10, maximum: 255  }

  validates :rating, presence: true

  validates :recommended, presence: true
end
