class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :artist
      t.string :album
      t.string :song

      t.timestamps
    end
  end
end
