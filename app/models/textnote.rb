class Textnote < ApplicationRecord
  belongs_to :usuario
  validates :content, length: { maximum: 140 },
                      presence: true
end
