class Track < ActiveRecord::Base
  belongs_to :album
  #has_one :band, throught: :album, source: :band
  validates :name, uniqueness: {scope: :album_id }
end
