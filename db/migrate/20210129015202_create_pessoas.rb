class CreatePessoas < ActiveRecord::Migration[6.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :data_de_nascimento
      t.float :altura

      t.timestamps
    end
  end
end
