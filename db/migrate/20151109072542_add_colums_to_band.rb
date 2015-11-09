class AddColumsToBand < ActiveRecord::Migration
  def change
      add_column :bands, :favorite, :boolean, default: false
  end
end
