class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios do |t|
      t.string :nome, limit: 80
      t.string :endereco, limit: 200
      t.string :telefone, limit: 13
      t.integer :documento, limit: 11
      t.integer :salario, limit: 7
      t.references :cargo, foreign_key: true

      t.timestamps
    end
  end
end
