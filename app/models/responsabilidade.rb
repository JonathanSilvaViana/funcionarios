class Responsabilidade < ApplicationRecord
  
  #has_and_belongs_to_many :funcionario
  has_many :funcionario_responsabilidades
  has_many :funcionarios, through: :funcionario_responsabilidades
  #belongs_to :funcionario_responsabilidades
end
