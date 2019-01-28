class Responsabilidade < ApplicationRecord
  has_and_belongs_to_many :funcionario
  has_many :funcionarios, through: :funcionario_responsabilidades
end
