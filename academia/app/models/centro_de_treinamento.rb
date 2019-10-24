class CentroDeTreinamento < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 5}
  validates :cnpj, presence: true, uniqueness: true
end
