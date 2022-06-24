class Product < ApplicationRecord
    # validations
    validates :title, presence: true,  uniqueness: { case_sensitive: false }, length: {maximum: 100, minimum: 10}

    validates :price, presence: true

    validates :description, presence: true, length: {maximum: 1000, minimum: 20}

    validates :sku, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20, minimum: 6}

    validates :images, presence: true, length: {maximum: 500, minimum: 6}

    validates :category, presence: true, length: {maximum: 20, minimum: 3}
    
    validates :tags, length: {maximum: 50}
end
