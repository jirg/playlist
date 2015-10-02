class Entry < ActiveRecord::Base
  validates :song, :presence => true, :uniqueness => true
  validates :artist, :album, :presence => true
end
