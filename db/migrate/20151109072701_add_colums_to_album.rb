class AddColumsToAlbum < ActiveRecord::Migration
  def change
      add_column :albums, :favorite, :boolean, default: false
  end
end
