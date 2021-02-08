class Qualificacao < ApplicationRecord
  has_many :comentarios, as: :comentavel
end
