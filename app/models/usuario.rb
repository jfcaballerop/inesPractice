class Usuario < ApplicationRecord
  has_many :textnotes, dependent: :destroy
  validates :login, presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }
  has_secure_password
end
