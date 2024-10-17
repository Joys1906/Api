class Character < ApplicationRecord
  belongs_to :house
  validates :house, presence: true # Asegúrate de que esta validación esté presente
  validates :name, presence: true
end
