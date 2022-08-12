class Wishlist < ApplicationRecord
  belongs_to :user

   # validations
   validates :product_ids, presence: true, length: { minimum: 1, maximum: 200  }
end
