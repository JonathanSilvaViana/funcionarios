class CreateFuncionarioResponsabilidade < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionario_responsabilidades do |t|
      t.references :funcionario, foreign_key: true
      t.references :responsabilidade, foreign_key: true
    end
  end
end
