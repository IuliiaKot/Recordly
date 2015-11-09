class Album < ActiveRecord::Base
  belongs_to :band
  has_many :tracks

  validates :name, uniqueness: {scope: :band_id}
end
