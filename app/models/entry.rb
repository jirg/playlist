class Entry < ActiveRecord::Base
  validates :artist, :album, presence: true
  validates :song, presence: true, uniqueness: true
end
