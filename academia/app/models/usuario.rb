class Usuario < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 5}
  validates :cpf, presence: true, length: {minimum: 11}, uniqueness: true
end
