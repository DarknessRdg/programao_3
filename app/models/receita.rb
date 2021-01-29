class Receita < ApplicationRecord
  belongs_to :prato

  attr_accessible :prato_id, :conteudo
  validates_presence_of :conteudo, message: " - deve ser preenchido"
end
