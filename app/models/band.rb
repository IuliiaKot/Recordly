class Band < ActiveRecord::Base
  has_many :albums
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
