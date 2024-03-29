class Product < ApplicationRecord
    has_many :reviews, dependent: :destroy
    
    # validations
    validates :title, presence: true,  uniqueness: { case_sensitive: false }, length: {maximum: 100, minimum: 10}

    validates :price, presence: true

    validates :description, presence: true, length: {maximum: 2000, minimum: 20}

    validates :sku, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20, minimum: 6}

    validates :images, presence: true, length: {maximum: 1000, minimum: 6}

    validates :category, presence: true, length: {maximum: 20, minimum: 3}
    
    validates :tags, length: {maximum: 50}

    validates :rating, numericality: {greater_than: -1, less_than_or_equal_to: 5,  only_integer: true }
end
