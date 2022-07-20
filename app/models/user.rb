class User < ApplicationRecord
    has_secure_password

    before_save :downcase_email

    # validations
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email, presence: true,  uniqueness: { case_sensitive: false }, length: { minimum: 6, maximum: 255 }, format: { with: VALID_EMAIL_REGEX }

    validates :password, presence: true, length: { minimum: 6, maximum: 255  }, allow_nil: true

    validates_inclusion_of :role, :in => ['admin', 'member']

    # Converts to all lowercase.
    def downcase_email
        self.email = email.downcase
    end
end
