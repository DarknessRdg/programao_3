class Prato < ApplicationRecord
  has_and_belongs_to_many :restaurantes
  has_one :receita

  attr_accessible :nome
  
  validates_presence_of :nome, message: " - deve ser preenchido"
  validates_uniqueness_of :nome, message: " - nome já cadastrado"
end
