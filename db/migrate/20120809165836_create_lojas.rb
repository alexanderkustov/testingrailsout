class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :nome
      t.string :morada
      t.text :detalhes
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
