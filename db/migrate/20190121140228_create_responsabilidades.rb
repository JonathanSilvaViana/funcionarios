class CreateResponsabilidades < ActiveRecord::Migration[5.2]
  def change
    create_table :responsabilidades do |t|
      t.string :nome, limit: 50
      t.string :observacoes, limit: 200
      t.references :funcionario, foreign_key: true

      t.timestamps
    end
  end
end
