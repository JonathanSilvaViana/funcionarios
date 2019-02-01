class Dependente < ApplicationRecord
	belongs_to :funcionario

	validates :nome, presence: true, length: { minimum: 3, maximum: 80, message: "Nome deve ter no mínimo de 3 e máximo de 80 caracteres" }, format: { with: /[a-z|A-Z|0-9|\s]*/, message: "Apenas letras devem compor o nome" }
	validates :endereco, presence: true, length: { minimum: 15, maximum: 200, message: "Endereço deve conter mínimo de 15 e máximo de 20 caracteres." }
	validates :telefone, presence: true, length: { minimum: 11, maximum: 11, message: "Telefone deve conter 11 digitos ex: '11900003333'" }, format: {with: /([0-9+#-]+)/, message: "Apenas números e caracteres especiais"}
	validates :documento, presence: true, length: {minimum: 11, maximum: 11, message: "Documento deve conter apenas 11 caracteres"}, format: {with: /([0-9+#-]+)/, message: "Apenas letras e números devem compor documento"}
end
