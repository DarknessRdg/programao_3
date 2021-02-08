#encoding: utf-8

class Restaurante < ApplicationRecord
  has_many :qualificacoes
  has_and_belongs_to_many :pratos
  has_many :comentarios, as: :comentavel

  validates :nome, :especialidade, presence: true
  validates :nome, :endereco, uniqueness: true
end
