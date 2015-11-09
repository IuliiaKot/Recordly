class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.string :band_id, null: false
      t.integer :year, null: false

      t.timestamps null: false
    end
  end
end
