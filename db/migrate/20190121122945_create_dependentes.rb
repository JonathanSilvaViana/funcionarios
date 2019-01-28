class CreateDependentes < ActiveRecord::Migration[5.2]
  def change
    create_table :dependentes do |t|
      t.string :nome, limit: 80
      t.string :endereco, limit: 200
      t.string :telefone, limit: 13
      t.integer :documento, limit: 11
      t.references :funcionario, foreign_key: true
      #estava como :familiares

      t.timestamps
    end
  end
end
