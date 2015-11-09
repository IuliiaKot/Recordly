class AddIndexAlbum < ActiveRecord::Migration
  def change
    add_index :albums, [:band_id, :name],  unique: true
  end
end
