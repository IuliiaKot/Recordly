class AddColumsToTracks < ActiveRecord::Migration
  def change
      add_column :tracks, :favorite, :boolean, default: false
  end
end
