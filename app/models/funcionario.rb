class Funcionario < ApplicationRecord
	belongs_to :cargo
	has_many :responsabilidades, through: :funcionario_responsabilidades
	has_many :funcionario_responsabilidades
	has_many :dependentes
	accepts_nested_attributes_for :dependentes, allow_destroy: true
end
