json.extract! funcionario, :id, :nome, :endereco, :telefone, :documento, :salario, :responsabilidades, :cargo, :dependentes, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
