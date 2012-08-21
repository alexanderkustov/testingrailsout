class CreateOutros < ActiveRecord::Migration
  def change
    create_table :outros do |t|
      t.string :nome
      t.string :morada
      t.float :latitude
      t.float :longitude
      t.text :detalhes
      t.boolean :gmaps

      t.timestamps
    end
  end
end
