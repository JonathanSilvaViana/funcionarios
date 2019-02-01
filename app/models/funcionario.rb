class Funcionario < ApplicationRecord
	belongs_to :cargo
	has_many :funcionario_responsabilidades
	has_many :responsabilidades, through: :funcionario_responsabilidades
	#has_many :responsabilidades, through: :funcionario_responsabilidades
	
	#has_and_belongs_to_many :funcionario_responsabilidades
	has_many :dependentes
	accepts_nested_attributes_for :dependentes, allow_destroy: true

	validates :nome, presence: true, length: {minimum: 3, maximum: 80, message: "Nome deve ter no mínimo de 3 e máximo de 80 caracteres"}, format: { with: /[a-z|A-Z|0-9|\s]*/, message: "Apenas letras devem compor o nome" }
	validates :endereco, presence: true, length: { minimum: 15, maximum: 200, message: "Endereço deve conter mínimo de 15 e máximo de 20 caracteres." }
	validates :telefone, presence: true, length: { minimum: 11, maximum: 11, message: "Telefone deve conter 11 digitos ex: '11900003333'" }, format: {with: /([0-9+#-]+)/, message: "Apenas números e caracteres especiais"}
	validates :documento, presence: true, length: {minimum: 11, maximum: 11, message: "Documento deve conter apenas 11 caracteres"}, format: {with: /([0-9+#-]+)/, message: "Apenas letras e números devem compor documento"}
	validates :salario, presence: true, length: {minimum: 7, maximum: 7, message: "Salário deve conter 7 digitos"}
	validates :cargo_id, presence: true

end
