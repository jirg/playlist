class Entry < ActiveRecord::Base
  validates :song, :artist, :album, presence: true
  # validates :song, presence: true, uniqueness: true
end
