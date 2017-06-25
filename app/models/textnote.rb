class Textnote < ApplicationRecord
  belongs_to :usuario
  default_scope -> { order(created_at: :desc) }
  validates :content, length: { maximum: 140 },
                      presence: true
  validates :usuario_id, presence: true

end
