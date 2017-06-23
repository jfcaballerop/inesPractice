class Usuario < ApplicationRecord
  has_many :textnotes
  validates :login, presence: true    # Replace FILL_IN with the right code.
  validates :passwd, presence: true    # Replace FILL_IN with the right code.
end
