class Entry < ActiveRecord::Base
  validates :song, :artist, :album, presence: true
  validates_uniqueness_of :song, scope: :artist


end
