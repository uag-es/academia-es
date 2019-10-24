class CreateCentroDeTreinamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :centro_de_treinamentos do |t|
      t.string :nome
      t.string :cnpj
      t.string :responsavel

      t.timestamps
    end
  end
end
