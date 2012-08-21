class CreateLocalDesportivos < ActiveRecord::Migration
  def change
    create_table :local_desportivos do |t|
      t.text :detalhes
      t.boolean :gmaps
      t.float :latitude
      t.float :longitude
      t.string :morada
      t.string :nome
      t.string :desporto

      t.timestamps
    end
  end
end
