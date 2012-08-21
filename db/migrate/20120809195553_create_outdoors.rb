class CreateOutdoors < ActiveRecord::Migration
  def change
    create_table :outdoors do |t|
      t.string :nome
      t.string :morada
      t.float :latitude
      t.float :longitude
      t.string :foto
      t.text :detalhes
      t.boolean :gmaps

      t.timestamps
    end
  end
end
