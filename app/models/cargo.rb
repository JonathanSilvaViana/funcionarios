class Cargo < ApplicationRecord
  has_many :funcionarios

  validates :nome, presence: true, length: { minimum: 7, maximum: 20 }, format: { with: /\A[a-zA-Z]+\z/,
    message: "Apenas letras devem compor o nome" }
  validates :observacoes, presence: true, length: {minimum: 10, maximum: 100}

end
