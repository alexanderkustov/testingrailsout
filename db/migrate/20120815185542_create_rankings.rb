class CreateRankings < ActiveRecord::Migration
  def self.up
    create_table :rankings do |t|
      t.string :desporto
      t.string :gama
      t.integer :ranking
      t.timestamps
    end
  end

  def self.down
    drop_table :rankings
  end
end
