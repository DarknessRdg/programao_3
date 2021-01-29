class Restaurante < ApplicationRecord
  validates :nome, :especialidade, presence: true
  validates :nome, :endereco, uniqueness: true
end
