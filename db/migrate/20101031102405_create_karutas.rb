class CreateKarutas < ActiveRecord::Migration
  def self.up
    create_table :karutas do |t|
      t.string :kazin
      t.string :uta
      t.string :yomi

      t.timestamps
    end
  end

  def self.down
    drop_table :karutas
  end
end
