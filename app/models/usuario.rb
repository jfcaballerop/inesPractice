class Usuario < ApplicationRecord
  has_many :textnotes
  validates :login, presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }
  validates :passwd, presence: true, length: { minimum: 4, maximum: 10 }
  has_secure_password
end
