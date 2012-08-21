class CreateLojaConcorrencia < ActiveRecord::Migration
  def change
    create_table :loja_concorrencia do |t|
      t.string :nome
      t.string :categoria
      t.string :morada
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
