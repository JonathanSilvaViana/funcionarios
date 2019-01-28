class CreateCargos < ActiveRecord::Migration[5.2]
  def change
    create_table :cargos do |t|
      t.string :nome, limit: 20
      t.string :observacoes, limit: 100
      t.timestamps
    end
  end
end
