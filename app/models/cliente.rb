class Cliente < ApplicationRecord
  attr_accessible :nome, :idade

  validates_presence_of :nome, message: " - deve ser preenchido"
  validates_uniqueness_of :nome, message: " - nome já cadastrado"
end
