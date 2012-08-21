class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.integer :loja_id
      t.string :nome
      t.string :contacto
      t.text :detalhes

      t.timestamps
    end
  end
end
