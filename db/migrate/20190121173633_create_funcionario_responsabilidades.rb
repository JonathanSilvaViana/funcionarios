class CreateFuncionarioResponsabilidades < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionario_responsabilidades do |t|
      t.references :funcionario, foreign_key: true
      t.references :responsabilidade, foreign_key: true
    end
  end
end

# class CreateFuncionarioResponsabilidades < ActiveRecord::Migration[5.2]
#   def change
#     create_table :funcionario_responsabilidades do |t|
#       t.integer :funcionario_id
#       t.integer :responsabilidade_id
#     end
#   end
# end